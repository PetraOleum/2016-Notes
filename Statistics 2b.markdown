# STAT 293: Statistics 2b

Notes for STAT 293: Statistics 2b, 2016, by Petra Lamborn, student ID 300280340.

Timetable:

* Wednesday: 4-5, Hunter LT 323
* Thursday: 3-4, Hunter LT 220
* Friday: 4-5, Hunter LT 220

Assignments due on Thursdays at 5pm; get them back the following Wednesday in lecture.

Key dates:

* First lecture: Wednesday 13 July
* Tests: TBD
* Final exam: TBD

A note on unicode:

* Y-bar = Y&amp;#x0304; = Y&#x0304;
* &mu;-hat = &amp;mu;&amp;#x0302; = &mu;&#x0302;

## Summation algebra review

Sum is &Sigma;, capital greek sigma[^SigmaSum]. Obvious rules are obvious. To sum all in groups, need &sum;&sum;. Brackets used, e.g. &sum;(&sum;Y<sub>ij</sub>)<sup>2</sup>.

[^SigmaSum]: There may or may not be a difference in the font between &amp;Sigma; and &amp;sum;, that is &Sigma; and &sum;

### Bar-dot notation

The sum of elements in group 1 can be written as both &sum;Y<sub>1j</sub> and as Y<sub>1.</sub> (without, in the latter case, needing to specify i from 1 to 4 or similar.

The sum of elements in column 2 can be written Y<sub>.2</sub>, the jth column as Y<sub>.j</sub>, and the grand total as Y<sub>..</sub>.

A bar over a symbol means the mean. These two notations can be combined to give, e.g. Y&#x0304;<sub>1.</sub> is the mean of the first row, which is the total of the first row (Y<sub>1.</sub>) divided by the number of elements in the row. Simularity the mean of the jth column is Y&#x0304;<sub>.j</sub>. The grand mean is Y&#x0304;<sub>..</sub>.

### Expected value and variance of a random variable

The _expected value_ &mu; = E(Y). Need the "hat" unicode here, as the estimate of the expected value &mu;&#x0302; = E&#x0302;(Y) = Y&#x0304;.

The _population variance_ is the expected value of the quantity (Y - &mu;)<sup>2</sup>. That is:

_&sigma;<sup>2</sup> = E[(Y - &mu;)<sup>2</sup>] = E[(Y - &mu;)(Y - &mu;)] = E(Y<sup>2</sup> - 2&mu;Y + &mu;<sup>2</sup>) = E(Y<sup>2</sup>) - 2&mu;E(Y) + &mu;<sup>2</sup> = E(Y<sup>2</sup>) - 2&mu;<sup>2</sup> + &mu;<sup>2</sup> = E(Y<sup>2</sup>) - &mu;<sup>2</sup> = E(Y<sup>2</sup>) - [E(Y)]<sup>2</sup>._

The _population standard deviation_ is denoted, obviously, by &sigma;, and is the square root of the variance (&sigma;<sup>2</sup>).

The _population covariance_ of two variables X and Y is defined as the expected value of the quantity (X - &mu;<sub>X</sub>)(Y - &mu;<sub>Y</sub>). It is denoted by &mu;<sub>XY</sub>, that is &mu;<sub>XY</sub> = E[(X - &mu;<sub>X</sub>)(Y - &mu;<sub>Y</sub>)].

The _population correlation coefficient_ between X and Y is defined as the covarance of X and Y divided by the product of their standard deviations, and is written &rho;. That is, &rho; = &sigma;<sub>XY</sub> / (&sigma;<sub>X</sub>&times;&sigma;<sub>Y</sub>).

Expected values rules: 

* _E(aY) = aE(Y)_ (where _a_ is a constant).
* _E(X + Y) = E(X) + E(Y)_
* _E(XY) = E(X)E(Y)_

### Linear combinations

A linear combination is a weighted sum&mdash;that is, the sum of constant times random variable combinations&mdash;and comes up a lot in stats when forming new variables. For example, V = X + 3Y + 10. The sample mean Y&#x0304; is equal to a linear combination of the variables Y<sub>i</sub> with weights all equal to 1/n.

## Normal Sampling Theory for ANOVA

R and ANOVA; test statistic for Completely Randomised Design; Transformations for when ANOVA assumptions not met; Permutations and randomisations

### Review of ANOVA

For a completely randomised design the fixed effects model for one-way ANOVA is:

Y<sub>ij</sub> = &mu; + &alpha;<sub>i</sub> + &epsilon;<sub>ij</sub>

The mean for population i is &mu;<sub>i</sub> = &mu; + &alpha;<sub>i</sub>.

### Estimating model parameters

| Parameter                     | Estimate                                                      |
|:----------------------------- | -------------------------------------------------------------:|
| &mu;                          | Y&#x0304;<sub>..</sub>                                        |
| &alpha;<sub>i</sub>           | Y&#x0304;<sub>i.</sub> - Y&#x0304;<sub>..</sub>               |
| &mu; + &alpha;<sub>i</sub>    | Y&#x0304;<sub>i.</sub>                                        |
| &sigma;<sup>2</sup>           | s<sup>2</sup>  = (&sum;(s<sub>i</sub>)<sup>2</sup>)/k         |

### ANOVA in R

The default model formulation in R is: Y<sub>ij</sub> = &mu;<sub>1</sub> + (&mu;<sub>i</sub> - &mu;<sub>1</sub>) + &epsilon;<sub>ij</sub>, where &mu;&#x0302;<sub>i</sub> = Y&#x0304;<sub>i.</sub>. Group 1 is the reference group/level to which all other groups are compared.

However, we first need to read data in from an external `.csv` file:

```r
smoke<-read.csv("smoking.csv", header=T)
str(smoke)
## 'data.frame':   24 obs. of  2 variables:
##  $ group: int  1 1 1 1 1 1 2 2 2 2 ...
##  $ fev1 : num  4.41 4.96 3.5 3.66 4.68 4.11 3.69 3.9 3.82 4.08 ...
```

`str` summarises the data. The group is stored as a number in this dataset, rather than as a proper factor, so we need to:

```r
smoke$group<-factor(smoke$group, levels=c(1,2,3,4), labels=c("Nonsmoker", "Early smoker", "Recent smoker", "Smoker"))
str(smoke)
## 'data.frame':   24 obs. of  2 variables:
##  $ group: Factor w/ 4 levels "Nonsmoker","Early smoker",..: 1 1 1 1 1 1 2 2 2 2 ...
##  $ fev1 : num  4.41 4.96 3.5 3.66 4.68 4.11 3.69 3.9 3.82 4.08 ...
```

To calculate the means and variances for each group separately we use `tapply`:

```r
tapply(smoke$fev1, smoke$group, mean)
##     Nonsmoker  Early smoker Recent smoker        Smoker
##      4.220000      3.938333      3.460000      3.220000
tapply(smoke$fev1, smoke$group, var)
##     Nonsmoker  Early smoker Recent smoker        Smoker
##    0.32788000    0.06481667    0.50816000    0.45672000
```

Now we have a proper factor.

Note: to create and output e.g. a 500&times;500 png in Rscript:

```r
png("Plot.png", width=500, height=500)
plot(...)
dev.off()
```

To make a boxplot then we go:

```r
boxplot(fev1~group, data=smoke, xlab="Category", ylab="FEV1 (litres)", ylim=c(1,5))
```

Fitting a model can be done with `lm`, such as like:

```r
fit1 = lm(fev1~group, data=smoke)
summary(fit1)
## Call:
## lm(formula = fev1 ~ group, data = smoke)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max
## -1.18000 -0.24208 -0.07417  0.44625  0.94000
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)
## (Intercept)            4.2200     0.2378  17.743 1.05e-13 ***
## groupEarly    smoker  -0.2817     0.3364  -0.837  0.41225
## groupRecent smoker    -0.7600     0.3364  -2.260  0.03517 *
## groupSmoker           -1.0000     0.3364  -2.973  0.00752 **
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.5826 on 20 degrees of freedom
## Multiple R-squared:  0.3521,    Adjusted R-squared:  0.2549
## F-statistic: 3.623 on 3 and 20 DF,  p-value: 0.03085
```

Note that here the "intercept" is &mu;&#x0302;<sub>1</sub>, and all other &mu;&#x0302;<sub>i</sub> values are relative to that. Further the `Pr(>|t|)` gives the probability testing H<sub>0</sub>: &mu;<sub>i</sub> - &mu;<sub>1</sub> = 0 _vs_ H<sub>1</sub>: &mu;<sub>i</sub> - &mu;<sub>1</sub> &ne; 0.

Vim note: to replace the fancy apostrophes in the significance codes line:

```vim
:%s/<Character>/'/g
```

This doesn't give us the ANOVA table directly, however. One way to do that is:

```r
anova(fit1)
## Analysis of Variance Table
## 
## Response: fev1
##           Df Sum Sq Mean Sq F value  Pr(>F)
## group      3 3.6890 1.22967  3.6231 0.03085 *
## Residuals 20 6.7879 0.33939
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

Alternately we can bypass `lm` using a different command, `aov`:

```r
fit2=aov(fev1~group, data=smoke)
summary(fit2)
##             Df Sum Sq Mean Sq F value Pr(>F)
## group        3  3.689  1.2297   3.623 0.0309 *
## Residuals   20  6.788  0.3394
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

There are slight differences between these two, but they seem to be down to significant figures.

With this fit, but not the previous, we can run `TukeyHSD` to get the Tukey Honest Significant Difference test results:

```r
TukeyHSD(fit2)
##   Tukey multiple comparisons of means
##     95% family-wise confidence level
## 
## Fit: aov(formula = fev1 ~ group, data = smoke)
## 
## $group
##                                     diff       lwr         upr     p adj
## Early    smoker-Nonsmoker     -0.2816667 -1.223089  0.65975578 0.8360677
## Recent smoker-Nonsmoker       -0.7600000 -1.701422  0.18142245 0.1415657
## Smoker-Nonsmoker              -1.0000000 -1.941422 -0.05857755 0.0348503
## Recent smoker-Early    smoker -0.4783333 -1.419756  0.46308912 0.5008038
## Smoker-Early    smoker        -0.7183333 -1.659756  0.22308912 0.1760748
## Smoker-Recent smoker          -0.2400000 -1.181422  0.70142245 0.8905477
```

In both cases you can get the `coefficients` from the fit:

```r
coefficients(fit1)
##          (Intercept) groupEarly    smoker   groupRecent smoker
##            4.2200000           -0.2816667           -0.7600000
##          groupSmoker
##           -1.0000000
coefficients(fit2)
##          (Intercept) groupEarly    smoker   groupRecent smoker
##            4.2200000           -0.2816667           -0.7600000
##          groupSmoker
##           -1.0000000
```

## R commands

`mean(x)`
:   The mean of `x`

`read.csv("file.csv", header=T)`
:   Read the contents of `file.csv`, preserving the headers

`c(x, y, z)`
:   Combine `x`, `y`, and `z` into a vector or list

`str(data)`
:   Compact structure of `data`

`summary(data)`
:   Summarise `data`, e.g. mean, median, quartiles etc.

`factor(data$group, levels=c(1,2,...), labels=c("Group 1", "Group 2", ...))`
:   Turn `data$group` into a factor, where it previously was just numbers (reassign back into `data$group`)

`tapply(data$result, data$group, mean)`
:   Calculate the `mean` for the `result` for each `group`, can also do e.g. `var`.

`boxplot(result~group, data=data, xlab="Group", ylab="Result")`
:   Generate boxplot of `data`

`lm(result~group, data=data)`
:   Create a linear model of `result~group`

`anova(fit)`
:   Do an ANOVA of a `fit` previously produced, e.g. by `lm`

`aov(data$result~data$group)`
:   Do an anova on the data directly (**note** can do `TukeyHSD` on this but not `anova`)

`TukeyHSD(fit)`
:   Do a Tukey Honest Significant Difference test on `fit` (**note** can't do this on all fits)

## Footnotes
