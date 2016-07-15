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
