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

A bar over a symbol means the mean. These two notations can be combined to give, e.g. Y&#x0304;<sub>1.</sub> is the mean of the first row, which is the total of the first row (Y<sub>1.</sub>) divided by the number of elements in the row. Similarly the mean of the jth column is Y&#x0304;<sub>.j</sub>. The grand mean is Y&#x0304;<sub>..</sub>.

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

The assumptions for ANOVA are written:

<em>E<sub>ij</sub> &sim; iid[^iid] N(0, &sigma;<sup>2</sup>), i = 1, &hellip;, k, j = 1 &hellip;, n.</em>

[^iid]: "iid" stands for "independently and identically distributed."

And the constraint is <em>&sum;&alpha;<sub>i</sub> = 0 for all i from 1 to k</em>.

#### Aside: the expected value of the model

Given the model Y<sub>ij</sub> = &mu; + &alpha;<sub>i</sub> + &epsilon;<sub>ij</sub>, the expected value of Y<sub>ij</sub> is:

* E(Y<sub>ij</sub>)
* &rArr; E(&mu; + &alpha;<sub>i</sub> + &epsilon;<sub>ij</sub>)
* &rArr; E(&mu;) + E(&alpha;<sub>i</sub>) + E(&epsilon;<sub>ij</sub>)
* &rArr; &mu; + &alpha;<sub>i</sub> &equiv; &mu;<sub>i</sub>

This is because:

* The expected value of a constant is that constant
* E(a + b) = E(a) + E(b)
* E(&epsilon;<sub>ij</sub>) = 0 because the mean of the distribution that &epsilon; follows is 0

Note however that the _variance_ of a constant is zero.

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

### Deriving the F statistic and distribution

The Total Sum of Squares in an ANOVA balanced design is _TSS = SST + SSE_, or Sum of Squares of Treatment plus Sum of Squared Errors. <em>SST = n &times; &sum;<sub>i&rArr;k</sub>(Y&#x0304;<sub>i.</sub> - Y&#x0304;<sub>..</sub>)<sup>2</sup> = &sum;<sub>i&rArr;k</sub>&sum;<sub>j&rArr;n</sub>(Y&#x0304;<sub>i.</sub> - Y&#x0304;<sub>..</sub>)<sup>2</sup></em>, that is for each data point the square of its treatment means, summed togther. <em>SSE = &sum;<sub>i&rArr;k</sub>&sum;<sub>j&rArr;n</sub>(Y&#x0304;<sub>ij</sub> - Y&#x0304;<sub>i.</sub>)<sup>2</sup></em>, that is for each data point the square of the difference between the observation and the group mean, summed together. SST quantifies between-group variablity, while SSE quantifies the within-group variability&mdash;ANOVA compares these using 'averaged' sums of squared deviations.

The mean 'between group' variability is MST, the Mean Squares for Treatment. <em>MST = 1/(k - 1) &times; SST</em>, because there are _k - 1_ degrees of freedom for this part. The mean 'within group' variability is MSE, the Mean Squares for Error. <em>MSE = SSE/(k&times;(n - 1)) = (1/k)&times;((s<sub>1</sub>)<sup>2</sup> + (s<sub>2</sub>)<sup>2</sup> + &hellip; + (s<sub>k</sub>)<sup>2</sup>)</em>, where _s<sub>i</sub>_ = the standard deviation of group _i_.

#### Testing the hypothesis with the F statistic

With the model Y<sub>ij</sub> = &mu;<sub>i</sub> + &epsilon;<sub>ij</sub> = &mu; + &alpha;<sub>i</sub> + &epsilon;<sub>ij</sub> we test the hypotheses H<sub>0</sub>: &mu;<sub>1</sub>, &hellip;, &mu;<sub>k</sub> are all equal, versus H<sub>1</sub>: &mu;<sub>1</sub>, &hellip;, &mu;<sub>k</sub> not all equal using the "averaged" sum of squares.

The test statistic is F = MSE/MST = (SST/(k-1))/(SSE/(k(n - 1))).

#### The F-statistic is sensitive to deviations from the null hypothesis

Assuming &epsilon;<sub>ij</sub> &sim; iid N(0, &sigma;<sup>2</sup>), and the constraint &sum;&alpha;<sub>i</sub> = 0, consider the expected values of MST and MSE if H<sub>0</sub> is true (all means are equal).

##### E(MST) if the null is true

If H<sub>0</sub> is true, then &mu;<sub>1</sub> = &hellip; = &mu;<sub>k</sub>, which means that &sum;<sub>i&rArr;k</sub>(&mu;<sub>i</sub> - &mu;)<sup>2</sup> will be close to 0 and so E[MST|H0] = &sigma;<sup>2</sup>.

##### E(MST) if the null is false

If H<sub>0</sub> is false then the summation is greater than 0, and so E[MST|H<sub>1</sub>] &ge; &sigma;<sup>2</sup>.

##### E(MSE)

Provided variances for each group are the same, which is one of our assumptions, the expected value of MSE does not change because the MSE is found from the sum of the variances, which itself works out to be &sigma;<sup>2</sup>.

That is, E[MSE|H<sub>0</sub>] = E[MSE|H<sub>1</sub>] = &sigma;<sup>2</sup>

##### E(MST/MSE)

The expected value for F = MST/MSE is therefore:

* Under H<sub>0</sub>, around 1
* Under H<sub>1</sub>, greater than 1

The implication is that F is sensitive to deviations from H<sub>0</sub>. The question is, how much should F deviate from 1 for the null to be rejected?

#### The distribution of the F statistic

1. If Y1, &hellip;, Yn &sim; iid N(&mu;, &sigma;2) and we define a new random variable W as W = (&sum;j&rArr;n(Yj - Y&#x0304;)2)/&sigma;2, then W &sim; &Chi;<sub>2</sub><sub>n-1</sub>, that is a chi-squared distribution with n - 1 degrees of freedom.
2. If we have a set of independent &Chi;<sup>2</sup> random variables W<sub>1</sub> &sim; &Chi;<sup>2</sup><sub>n<sub>1</sub></sub>, &hellip; W<sub>k</sub> &sim;<sup>2</sup><sub>n<sub>k</sub></sub> then &sum;<sub>i&rArr;k</sub>W<sub>i</sub> &sim; &Chi;<sup>2</sup><sub>&sum;ni</sub>.
3. If we have two independent &Chi;<sup>2</sup> variables W<sub>1</sub> and W<sub>2</sub> such that W<sub>1</sub> &sim; &Chi;<sup>2</sup><sub>n<sub>1</sub></sub> and W<sub>2</sub> &sim; &Chi;<sup>2</sup><sub>n<sub>2</sub></sub>, and define X = (W<sub>1</sub>/n<sub>1</sub>)/(W<sub>2</sub>/n<sub>2</sub>), then X &sim; F<sub>n<sub>1</sub>, n<sub>1</sub></sub>.

We can apply these rules to determine the probability distribution of SSE, SST, and the F-statistic itself.

SSE/&sigma;&sup2; = (1/&sigma;&sup2;)&times;&sum;&sum;(Y<sub>ij</sub> - Y&#x0304;<sub>i.</sub>)&sup2; &sim; &Chi;&sup2;<sub>N-k</sub> (see original notes for derivation; uses rule 1 then rule 2 after first unravelling the first &sum;). For a balanced design, N = nk = total number of data points.

SST/&sigma;&sup2; &sim; &Chi;&sup2;<sub>k - 1</sub> (see notes again).

By rule 3, F = MST/MSE = (SST(k-1))/(SSE(N - k)) &sim; F<sub>k - 1, N - 1</sub>&mdash;the &sigma;&sup2;'s cancel out.

The above only holds if normality, independence, and equal variance _all hold_.

#### p-value in R

```r
1 - pf(Fobserved, df1, df2)
## [1] <The p-value>
```

## Permutation tests

We assume that &epsilon;ij &sim; an independently and identically distributed normal distribution with a mean of 0 and a variance of &sigma;2. Sometimes these assumptions do not hold. In STAT 292 we attempted to transform the data; in STAT 293 we will try permutation tests.

### Testing assumptions with residuals

We can do exploratory data analysis on our data to investigate the assumptions. Our example data set looked at hermit crab populations at six coastal sites, and we want to know if there are differences.

```r
crab = read.table("../Data sets/crab.txt", header=T)
str(crab)
## 'data.frame':   150 obs. of  2 variables:
##  $ site : int  1 1 1 1 1 1 1 1 1 1 ...
##  $ count: int  0 0 22 3 17 0 0 7 11 11 ...
```

There are several ways to get a histogram of this data. The simplest is:

```r
par(mfrow=c(3,2))
tapply(crab$count, crab$site, hist)
```

However, this has certain problems with, e.g., titles. We can pass some parameters to `hist` like so:

```r
tapply(crab$count, crab$site, hist, prob=T, nclass=12, xlab="Population count")
```

However, we still can't get good titles, and indeed unless we go `main=""` we may end up with some titles that we don't like. A slightly more complex (or more verbose) method is:

```r
par(mfrow=c(3,2))
for (i in 1:6) {
	hist(crab$count[crab$site == i], main=paste("Site ", i), prob=T, nclass=12, xlab="Population count")
}
```

The output of this loop is:

![Crab histogram](crabhist2.png)
_The histogram produced by the second method_

We also want a boxplot, to compare variances:

```r
boxplot(crab$count~crab$site, xlab="Site", ylab="Population count")
```

The output of this function is:

![Crab boxplot](crabbox.png)
_A boxplot of the data. Note the changes in variance and other parameters_.

It's clear by eye that there are some issues here, but it's not statistical proof.

We can get the means, medians, and standard deviations of each site with the following, and order by the means to show a clear trend:

```r
sampprops = data.frame(
               mean = tapply(crab$count, crab$site, mean),
		       sd = tapply(crab$count, crab$site, sd),
		       med = tapply(crab$count, crab$site, median))
print(sampprops[order(sampprops$means),])
##   means        sd med
## 4  9.24  17.38601   2
## 5 10.00  19.84103   2
## 6 12.64  23.01065   4
## 1 33.80  50.38518  17
## 3 50.64 107.43792   5
## 2 68.72 125.35367  10
```

To do a proper residual analysis we will need to produce a fit with `lm`. The `names` function tells us the kind of information that the object created contains:

```r
fit1 = lm(crab$count~as.factor(crab$site))
names(fit1)
##  [1] "coefficients"  "residuals"     "effects"       "rank"
##  [5] "fitted.values" "assign"        "qr"            "df.residual"
##  [9] "contrasts"     "xlevels"       "call"          "terms"
## [13] "model"
```

We want to create residual and Q/Q plots for this data, in this case the same image:

```r
par(mfrow=c(1, 2))

plot(fit1$res~fit1$fit, xlab="Fitted value", ylab="Residuals")
abline(h=0, col="gray")
qqnorm(fit1$res, main="")
qqline(fit1$res)
```

The plots produced by these functions are:

![Crab Q/Q plot](crabqq.png)
_Residuals and Q/Q plot of the data. Does not follow normality._

The `abline` adds a straight line, here coloured grey and at y = 0; `qqline` adds the diagonal line to the Q/Q plot. Note: `par(mfrow=c(1, 2))` sets this property until the next time it is set again; it should therefore be set for each graph. The obvious conclusion from these graphs is that the constant variance and normality assumptions are not valid.

We to do Levine's test we need the `car` library. Note that this library has version restrictions and it (or it's dependencies) requires `gfortran` and some libraries that I didn't already have to compile.

```r
# Only needed first time
install.packages("car")
```

To preform Levine's test we use `leveneTest`. We need `crab$site` to be as a factor for this to work, which until now has not been:

```r
library(car)
leveneTest(crab$count, as.factor(crab$site))
## Levene's Test for Homogeneity of Variance (center = median)
##        Df F value  Pr(>F)
## group   5  2.9278 0.01508 *
##       144
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

The p-value is less than 5%, so we can reject the null hypothesis that the constant variance assumption holds.

### Permutation tests

Permutation tests rely on the idea that if the null hypothesis is true, then data is "exchangeable" between groups. We compare our test statistic (for ANOVA settings, the F statistic is still appropriate here even though our data does not follow it; this is because the F-statistic still measures deviations from the null hypothesis) to the test statistics generated from re-ordering the observed Y-values among the groups.

Permutation hypotheses tend to be vague, because a permutation test is a non-parametric test and so you cannot use the parameters in the hypothesis. For example the null hypothesis in a classic ANOVA might be that &mu;<sub>1</sub> = &mu;<sub>2</sub> = &mu;<sub>3</sub>. For a permutation test we need something more like:

> H<sub>0</sub>: There are no differences in crab population sizes among sites
>
> H<sub>1</sub>: Crab population sizes differ among sites

#### Exact versus probabilistic

We can deterministically examine _all_ of the ways that our observations can be re-ordered&mdash;this is the "exact" method. However, the number of ways to re-order rises with the factorial of the number of observations, i.e. _N!_. With only 10 observations this is more than 3 million, and at 12 this is nearly 500 million, which makes it impractical in most situations.

We can instead look at a random subset of the ways that the observations can be arranged&mdash;1000 is often enough&mdash;and compare their test-statistics to the test statistic of the real sample.

Regardless of the method, the number of re-ordered observations is called _T_. Note that each observation can only be re-allocated once in each allocation.

#### Manual calculation

We calculate an F-statistic for all _T_ re-orderings. The empirical distribution of <em>F<sub>1</sub>, &hellip;, F<sub>T</sub></em>, approximates the distribution of test statistics that occur if H<sub>0</sub> is true. The approximation improves as T increases.

The p-value is derived as the number of samples with an F statistic greater than the observed test statistic, divided by T, which approximates Pr(F&ge;F<sub>obs</sub>|H<sub>0</sub> true). This p-value can be interpreted as you would for a normal theory ANOVA test.

We can set up a permutation test for one-way ANOVA with our `crab.txt` data in R like so:


```r
# If we wanted to set the random seed manually to be the same each time we would use the command:
# set.seed(1234)
# But if we don't it works, and with a different seed each time

# Fit the real observed sample
fit1 = lm(crab$count~as.factor(crab$site))

# Get the observed value for F
Fobs = anova(fit1)$F[1]
print(Fobs)
## [1] 2.966874

# Empty array of 1000 value to store re-ordered F values
Fnull = rep(NA, 1000)

# Loop 1000 times
for (t in 1:1000) {
	# `sample` takes a random sample of crab$site, which here amounts to re-ordering
	siteReorder = sample(crab$site)

	# Calculate an F statistic for this reordering and store in `Fnull`
	Fnull[t] = (anova(lm(crab$count~as.factor(siteReorder))))$F[1]
}

# Calculate the number of F-statistics more extreme than `Fobs`
p = sum(Fnull > Fobs)/1000
print(p)
## [1] 0.01
```

Note however that another running of this algorithm produced 0.012 as an output; the result will vary somewhat with each test. It also takes a few moments to execute.

Because we saved the F-statistics in `Fnull` we can make a histogram of them like so:

```r
# Ensure correct settings
par(mfrow=c(1,1))

# Draw histogram
hist(Fnull, prob=TRUE, col="gray", 
     xlab = expression("Values of F if H"[0]*" is true"),
     ylab = "Density", main="")

# Draw line at Fobs
abline(v=Fobs, lty=2, col="red")

# Write legend
legend("topright","Fobs",lty=2,col="red")
```

![Fval histogram](crabFvalHist.png)
_The F-statistic density (relative frequency) histogram_

It's clear from this graph that the observed F-statistic is an extreme value, and that therefore the null hypothesis is false.

A note on reordering: in the above, the grouping variable is re-ordered. In one of the assignment questions the response variable can be re-ordered instead. Both are valid, but the consequencies for the `anova` model in the loop need to be considered.

#### Comparison with the usual ANOVA

If we do ANOVA in the usual way we get:

```r
fitn = lm(crab$count~as.factor(crab$site))
anova(fitn)
## Analysis of Variance Table
## 
## Response: crab$count
##                       Df Sum Sq Mean Sq F value  Pr(>F)
## as.factor(crab$site)   5  76695 15339.0  2.9669 0.01401 *
## Residuals            144 744493  5170.1
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

Or with a log transformation:

```r
# Where 0.5 is an arbitrary small number to avoid taking log(0)
fitl = lm(log(crab$count + 0.5)~as.factor(crab$site))
anova(fitl)
## Analysis of Variance Table
## 
## Response: log(crab$count + 0.5)
##                       Df Sum Sq Mean Sq F value Pr(>F)
## as.factor(crab$site)   5  44.97  8.9931  2.7498  0.021 *
## Residuals            144 470.95  3.2705
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

In this case, regardless of the method used the conclusion is similar. However, if they conflicted then the permutation test is to be relied on, because the assumptions for ANOVA are invalid.

#### Two factor ANOVA permuation tests with lmPerm

If we had two factors, each with two levels, you'd need a new vector with four levels (2&times;2) and then re-order these. This could get increasingly time-consuming.

To do permutation tests more easily we need to install a package called `lmPerm`. Unfortunately the maintainer of the package has died, and as such it has been "archived" on the grounds that he is "unresponsive." As such the initial install command is more complicated than previously:

```r
install.packages("https://cran.r-project.org/src/contrib/Archive/lmPerm/lmPerm_1.1-2.tar.gz", repos=NULL, type="source")
```

For lmPerm:

```r
fit1 = lm(<data>)
# is replaced by
fit1 = lmp(<data>)
# and
aov(<data>)
# is replaced by
aovp(<data>)
# But you still run
anova(fit1)
# on your fit object in the former case
```

We'll be doing the test on a new data set:

```r
library(lmPerm)
ins = read.table("../Data sets/factinsulate.txt", header=T)
str(ins)
## 'data.frame':   100 obs. of  3 variables
##  $ Lot     : int  1 1 1 1 1 1 1 1 1 1 ...
##  $ Cut     : Factor w/ 2 levels "Cross","Length": 1 1 1 1 1 1 1 1 1 1 ...
##  $ Strength: num  0.46 0.67 0.69 0.73 0.77 0.78 0.79 0.8 0.85 0.89 ...
```

This is a two-factor ANOVA, so to get the interactions included we use `Strength~Lot*Cut`, and remove the interactions with `Strength~Lot+Cut`. The command to do the model is:

```r
fit1 = lmp(Strength ~ as.factor(Lot)*Cut, data=ins, perm="Exact")
## [1] "Settings:  unique SS "
```

`Exact` does all possibilities, while `Prob` does only a sample. `Prob` continues until the standard error of the observed p-value is smaller than some constant C&times; the observed p-value. In `R`, C = 0.1; C is constrained as being between 0 and 1 not inclusive.

If N > 10, `Exact` will be silently changed to `Prob`.

The line "Settings: unique SS" given by `lmp` means that (by default) the sums of squares are calculated uniquely rather than sequentially; this is equivalent to type III SS in SAS.

```r
summary(fit1)
## Call:
## lmp(formula = Strength ~ as.factor(Lot) * Cut, data = ins, perm = "Exact")
## 
## Residuals:
##      Min       1Q   Median       3Q      Max
## -0.28300 -0.05675 -0.00750  0.05175  0.29800
## 
## Coefficients:
##                      Estimate Iter Pr(Prob)
## as.factor(Lot)1        0.0469 5000   <2e-16 ***
## as.factor(Lot)2        0.2254 5000   <2e-16 ***
## as.factor(Lot)3       -0.1271 4723   0.0207 *
## as.factor(Lot)4        0.1004 5000   <2e-16 ***
## Cut1                  -0.0213 3611   0.0271 *
## as.factor(Lot)1:Cut1  -0.0667 4490   0.0218 *
## as.factor(Lot)2:Cut1   0.0338 1586   0.0599 .
## as.factor(Lot)3:Cut1  -0.0117   51   1.0000
## as.factor(Lot)4:Cut1   0.0358 3758   0.0261 *
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.09965 on 90 degrees of freedom
## Multiple R-Squared: 0.7692,     Adjusted R-squared: 0.7461
## F-statistic: 33.32 on 9 and 90 DF,  p-value: < 2.2e-16
```

The fifth "Lot" and second "Cut" level are being used as reference levels, hence why they are omitted&mdash;they are set to 0. The intercept is not shown, and is not the same as the mean of lot 5 or of cut 2, but of a combination of the two.

Note: The stopping condition needs to happen for _all_ the different p-values, both &uarr; and &darr;.

```r
anova(fit1)
## Analysis of Variance Table
## 
## Response: Strength
##                    Df R Sum Sq R Mean Sq Iter Pr(Prob)
## as.factor(Lot)      4  2.79117   0.69779 5000  < 2e-16 ***
## Cut                 1  0.04537   0.04537 2061  0.04658 *
## as.factor(Lot):Cut  4  0.14175   0.03544 5000  0.01020 *
## Residuals          90  0.89373   0.00993
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

We don't have an F-statistic reported, just p-values for each effect and the interaction.

## Randomised Block Designs

Randomised block design is an extension of paired difference tests. Paired difference is used whenever you have two measurements in the same subject, e.g. before and after or one in each arm. The extension comes from having more than two measurements.

Alternate names for randomised block designs include "within subject desgins."

For a randomised block design, there are two sources of variance: treatments and blocks; blocks are things that you are less interested in but need to control. You cannot have interactions in this kind of design.

The fixed effect formula, for the kth data point with the ith treatment and in the jth block is: <em>y<sub>ijk</sub> = &mu; + &alpha;<sub>i</sub> + &beta;<sub>j</sub> + &epsilon;<sub>ijk</sub></em>.

The constraints are &sum;&alpha;<sub>i</sub> = 0 and &sum;&beta;<sub>j</sub> = 0; the assumption is that &epsilon;<sub>ijk</sub> &sim; iid N(0, &sigma;<sup>2</sup>)

Each subject is exposed to all treatments in a random order. This allows us to account for nuscience variation due to subject-to-subject differences.

When doing `lm`/`anova` in `R`, the default is sequential sum of squares, in contrast to `lmPerm` which uses unique sum of squares; the upshot is that the blocking variable should be used first in the former case while in the latter it doesn't matter. The interaction term is omitted, so it should be entered as `block+treatment` and not `block*treatment`.

Randomised block design avoids inflation of SSE and MSE with block-to-block variation. This makes it a more powerful design to used fro analysis compared to one-way ANOVA if differences do exist between blocks.

### Example

The effect of different treatments on clotting time of plasma; with subjects as blocking variable.

```r
# Load data
plasma = read.table("../Data sets/plasma.txt")
plasma$Subject = as.factor(plasma$Subject)
plasma$Treatment = as.factor(plasma$Treatment)

fit1 = lm(Clottime ~ Subject + Treatment, data=plasma)
```

Residual graphs:

```r
par(mfrow=c(1,2))
plot(fit1$res ~ fit1$fitted, xlab="Fitted values", ylab="Residuals")
abline(h=0, lty=2, col="grey")
qqnorm(fit1$res, main="Q/Q plot", ylab="Residuals", xlab="Quantiles of Standard Normal")
qqline(fit1$res)

```

![Clot diagnostics](ClotDiagnostics.png)

Our anova looks like this:

```r
anova(fit1)
## Analysis of Variance Table
## 
## Response: Clottime
##           Df Sum Sq Mean Sq F value    Pr(>F)
## Subject    7 78.989 11.2841  17.204 2.197e-07 ***
## Treatment  3 13.016  4.3388   6.615   0.00255 **
## Residuals 21 13.774  0.6559
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

Ignoring the blocking variable we would get:

```r
anova(lm(Clottime ~ as.factor(Treatment), data=plasma))
## Analysis of Variance Table
## 
## Response: Clottime
##           Df Sum Sq Mean Sq F value Pr(>F)
## Treatment  3 13.016  4.3388  1.3096 0.2909
## Residuals 28 92.762  3.3129
```

The MSE is much bigger because it includes the variation from the blocking variable, making the F-value smaller; it was explicity excluded in the original version by the use of the blocking variable.

We can get parameter estimates with `summary`:

```r
summary(fit1)
## Call:
## lm(formula = Clottime ~ Subject + Treatment, data = plasma)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max
## -1.1562 -0.3625 -0.0500  0.3688  1.6562
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)
## (Intercept)   9.2562     0.4748  19.494 6.26e-15 ***
## Subject2      3.8750     0.5727   6.767 1.08e-06 ***
## Subject3     -0.0250     0.5727  -0.044 0.965591
## Subject4      0.1750     0.5727   0.306 0.762927
## Subject5     -1.5500     0.5727  -2.707 0.013214 *
## Subject6     -0.1500     0.5727  -0.262 0.795925
## Subject7     -0.5750     0.5727  -1.004 0.326772
## Subject8     -1.4000     0.5727  -2.445 0.023404 *
## Treatment2    0.4125     0.4049   1.019 0.319948
## Treatment3    0.6375     0.4049   1.574 0.130359
## Treatment4    1.7250     0.4049   4.260 0.000349 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.8099 on 21 degrees of freedom
## Multiple R-squared:  0.8698,    Adjusted R-squared:  0.8078
## F-statistic: 14.03 on 10 and 21 DF,  p-value: 3.576e-07
```

It may be more realistic to view the blocks (here, subjects) as a random sample from all possible blocks and then use a _mixed effects_ model.

### Mixed effects

The mixed effects model here is: <em>Y<sub>ijk</sub> = &mu; + &alpha;<sub>i</sub> + B<sub>j</sub> + &epsilon;<sub>ijk</sub></em>. &sum;&alpha;<sub>i</sub> = 0, and B<sub>j</sub> &sim; N(0, &sigma;<sup>2</sup><sub>B</sub>)

While &sigma;<sup>2</sub>B may be of interest here (showing how much of the variation is explained by our blocks) the actual effects of the blocks are not&mdash;they merely control for that part of the variation.

The mixed effects/randomised block design looks like in `R`:

```r
# Load nlme package
library(nlme)
# Create random effects model
fit2 = lme(Clottime ~ Treatment, random=~1|Subject, data=plasma)
```

`lme` is the function; `nlme` is the package. The `random=~1|Subject` says that `Subject` is to be treated as a random effect, not a fixed effect.

Residuals graphs for this model:

```r
par(mfrow=c(1,2))
plot(fit2$res ~ fit2$fitted, xlab="Fitted values", ylab="Residuals", main="Residuals plot")
abline(h=0, lty=2, col="grey")
qqnorm(fit2$res, main="Q/Q plot", ylab="Residuals", xlab="Quantiles of Standard Normal")
qqline(fit2$res)
```

![Clot diagnostics for mixed effects](ClotRandomDiagnostics.png)

The ANOVA itself can be done as usual:

```r
# Do ANOVA
anova(fit2)
##                      numDF denDF   F-value p-value
## (Intercept)              1    21 283.23032  <.0001
## as.factor(Treatment)     3    21   6.61503  0.0025
```

The F-statistic, p-value, and degrees of freedom for `Treatment` match what we had in our fixed effects model.

Estimates of treatment effects and variances can be obtained with `summary`:

```r
# Get treatment effects etc
summary(fit2)
## Linear mixed-effects model fit by REML
##  Data: plasma
##        AIC      BIC    logLik
##   107.8852 115.8784 -47.94259
## 
## Random effects:
##  Formula: ~1 | Subject
##         (Intercept)  Residual
## StdDev:    1.630047 0.8098721
## 
## Fixed effects: Clottime ~ Treatment
##              Value Std.Error DF   t-value p-value
## (Intercept) 9.3000 0.6435202 21 14.451760  0.0000
## Treatment2  0.4125 0.4049361 21  1.018679  0.3199
## Treatment3  0.6375 0.4049361 21  1.574323  0.1304
## Treatment4  1.7250 0.4049361 21  4.259932  0.0003
##  Correlation:
##            (Intr) Trtmn2 Trtmn3
## Treatment2 -0.315
## Treatment3 -0.315  0.500
## Treatment4 -0.315  0.500  0.500
## 
## Standardized Within-Group Residuals:
##        Min         Q1        Med         Q3        Max
## -1.4326288 -0.3678196 -0.0855123  0.4226743  2.3200487
## 
## Number of Observations: 32
## Number of Groups: 8
```

We can see from this that &sigma;&#x0302; = 0.8098721, while &sigma;&#x0302;<sub>B</sub> = 1.630047. Note that these are estimates, and are for the standard deviation _not_ the variance (&sigma;<sup>2</sup>).


```r
# Working out the proportion of the 
# variation due to subject differences
# after accounting for treatment effects
sigmab = 1.630047
sigma = 0.8098721

print(sigmab^2/(sigma^2 + sigmab^2))
## [1] 0.8020213
```

The percentage of variation explained by subject variation is therfore 80%.

### Permutation testing and RBD

For RBDs we cannot apply the basic principle of "exchangability" of observations among subjects, since randomisation is done within the subjects; therefore ermutations must be done within each subject. We use `lmPerm`'s `avop` and the `Error` specification to achieve this:


```r
library(lmPerm)
fit3 = aovp(Clottime ~ Treatment + Error(Subject/Treatment), data=plasma)
## [1] "Settings:  unique SS : numeric variables centered"
summary(fit3)
## Error: Subject
## Component 1 :
##           Df R Sum Sq R Mean Sq
## Residuals  7   78.989    11.284
## 
## 
## Error: Subject:Treatment
## Component 1 :
##           Df R Sum Sq R Mean Sq Iter Pr(Prob)
## Treatment  3   13.016    4.3388 5000   0.0634 .
## Residuals 21   13.774    0.6559
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

### Factorial designs in blocks

Can do factorial designs with blocks; need interaction between factors but not with blocks, i.e. `blocks+factor1*factor2`.

For example:

```r
grain = read.table("grain.txt", header=T)
str(grain)
## 'data.frame':   20 obs. of  4 variables:
##  $ Block     : int  1 1 1 1 2 2 2 2 3 3 ...
##  $ Irrigation: int  1 1 2 2 1 1 2 2 1 1 ...
##  $ Fertiliser: int  1 2 1 2 1 2 1 2 1 2 ...
##  $ Yield     : int  11 14 12 18 15 17 15 19 17 19 ...
```

Remember to adjust to factors:

```r
grain$Irrigation = as.factor(grain$Irrigation)
grain$Fertiliser = as.factor(grain$Fertiliser)
grain$Block = as.factor(grain$Block)
str(grain)
## 'data.frame':   20 obs. of  4 variables:
##  $ Block     : Factor w/ 5 levels "1","2","3","4",..: 1 1 1 1 2 2 2 2 3 3 ...
##  $ Irrigation: Factor w/ 2 levels "1","2": 1 1 2 2 1 1 2 2 1 1 ...
##  $ Fertiliser: Factor w/ 2 levels "1","2": 1 2 1 2 1 2 1 2 1 2 ...
##  $ Yield     : int  11 14 12 18 15 17 15 19 17 19 ...
```

Fit: `Block + Irrigation * Fertiliser`.

```r
fit1 = lm(Yield ~ Block + Irrigation*Fertiliser, 
    data=grain)
summary(fit1)
## Call:
## lm(formula = Yield ~ Block + Irrigation * Fertiliser, data = grain)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max
## -1.0500 -0.5125 -0.0750  0.5500  1.0000
## 
## Coefficients:
##                         Estimate Std. Error t value Pr(>|t|)
## (Intercept)              11.3000     0.5260  21.483 6.04e-11 ***
## Block2                    2.7500     0.5881   4.676 0.000536 ***
## Block3                    5.5000     0.5881   9.353 7.35e-07 ***
## Block4                    1.2500     0.5881   2.126 0.054986 .
## Block5                    5.0000     0.5881   8.502 2.00e-06 ***
## Irrigation2               1.2000     0.5260   2.281 0.041572 *
## Fertiliser2               2.6000     0.5260   4.943 0.000340 ***
## Irrigation2:Fertiliser2   2.2000     0.7439   2.958 0.011975 *
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.8317 on 12 degrees of freedom
## Multiple R-squared:  0.9582,    Adjusted R-squared:  0.9338
## F-statistic: 39.29 on 7 and 12 DF,  p-value: 2.429e-07
```

View ANOVA table&mdash;no interaction between `Block` and other factors.

```r
anova(fit1)
## Analysis of Variance Table
## 
## Response: Yield
##                       Df Sum Sq Mean Sq F value    Pr(>F)
## Block                  4  89.30  22.325  32.277 2.455e-06 ***
## Irrigation             1  26.45  26.450  38.241 4.699e-05 ***
## Fertiliser             1  68.45  68.450  98.964 3.789e-07 ***
## Irrigation:Fertiliser  1   6.05   6.050   8.747   0.01198 *
## Residuals             12   8.30   0.692
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

Simple interaction plot:

```r
par(mfrow=c(1,1))
interaction.plot(grain$Irrigation, grain$Fertiliser, 
    grain$Yield, xlab="Irrigation", 
    ylab="Mean Yield")
```

![Grain Interactions Plot](GrainInteractions.png)
_Interaction plot. Could do with a bit of a cleanup._

Permutation test for this follows in the obvious way:

```r
fit2 = lmp(Yield ~ Block + Irrigation*Fertiliser, data=grain)
## [1] "Settings:  unique SS "
summary(fit2)
## Call:
## lmp(formula = Yield ~ Block + Irrigation * Fertiliser, data = grain)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max
## -1.0500 -0.5125 -0.0750  0.5500  1.0000
## 
## Coefficients:
##                         Estimate Iter Pr(Prob)
## Block1                     -2.90 5000   <2e-16 ***
## Block2                     -0.15 1102   0.0835 .
## Block3                      2.60 5000   0.0004 ***
## Block4                     -1.65 5000   <2e-16 ***
## Irrigation1                -1.15 5000   <2e-16 ***
## Fertiliser1                -1.85 5000   <2e-16 ***
## Irrigation1:Fertiliser1     0.55 5000   0.0118 *
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.8317 on 12 degrees of freedom
## Multiple R-Squared: 0.9582,     Adjusted R-squared: 0.9338
## F-statistic: 39.29 on 7 and 12 DF,  p-value: 2.429e-07

anova(fit2)
## Analysis of Variance Table
## 
## Response: Yield
##                       Df R Sum Sq R Mean Sq Iter Pr(Prob)
## Block                  4    89.30    22.325 5000   <2e-16 ***
## Irrigation             1    26.45    26.450 5000   <2e-16 ***
## Fertiliser             1    68.45    68.450 5000   <2e-16 ***
## Irrigation:Fertiliser  1     6.05     6.050 5000   0.0118 *
## Residuals             12     8.30     0.692
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

## Nested designs

Sometimes categorial variables (factors) are not crossed but nested. Levels of one factor are nested _within_ some levels of another factor, rather than having each level of factor A occuring with each level of factor B.

You can have fully nested and factorial nested designs when you have more than two factors; fully nested is where all factors are nested, factorial nested occurs when some factors are crossed and some are nested.

For example, you might investigate site differences on toxin in leaves, selecting multiple leaves from multiple trees (factor B) at multiple sites (factor A). However, each tree is obviously only at one site; there is no tree 1 at site 2. This could be seen as an _incomplete factorial design_. We can test for differing sites, but the only way to test among different trees is _within_ each site, as trees are nested within sites. You would probably analyse this with site as a fixed factor and tree as a random factor nested within site.

Sometimes the nested factor is fixed, but usually it is taken as random.

Another example: if you compare effectivenesses of drugs, but wish to control the effect of different companies are better or worse at making specific drugs, however not every company makes every type of drug; therefore the "source" factor will need to be nested within the drug factor because it is different companies for each drug.

### Mixed effects model

The mixed effects nested design model with a single random effect is written as: 

Y<sub>ijk</sub> = &mu; + &alpha;<sub>i</sub> + B<sub>j(i)</sub> + &epsilon;<sub>k(ij)</sub>; where &sum;&alpha;<sub>i</sub> = 0, B<sub>j(i)</sub>&sim;iid. N(0, &sigma;<sup>2</sup><sub>B</sub>), &epsilon;<sub>k(ij)</sub>&sim;iid. N(0, &sigma;<sup>2</sup>).

Notation: j(i) is read as "j within i," k(ij) is "k within ij." This only works for balanced designs, however; unbalanced designs can be done but it's more complicated mathematically.

B<sub>j(i)</sub> is thus an adjustmant of the mean of drug i to allow from source j. We cannot estimate a main effect for Factor B because of the nesting.

### ANOVA and F-test for nested designs

The model can be rearranged to Yijk - &mu; = &alpha;i + Bj(i) + &epsilon;ijk. These can be replaced by their sample estimates to give:

Y<sub>ijk</sub> - Y&#x0304;<sub>...</sub> = (Y&#x0304;<sub>i..</sub> - Y&#x0304;<sub>...</sub>) + (Y&#x0304;<sub>ij.</sub> - Y&#x0304;<sub>i..</sub>) + (Y<sub>ijk</sub> - Y&#x0304;<sub>ij.</sub>)

If we squared both sides of the equation, and then sum over all observations, the cross-product terms sum to zero. The result is a series of &sum;'s, which are equivalent to TSS = SS<sub>A</sub> + SS<sub>B(A)</sub> + SSE, where SSA is factor A sum of squares and SSB(A) is factor B nested within factor A sum of squares.

The degrees of freedom are different here:

| Source | df |
|:------ |---:|
| A      | a - 1 |
| B      | a(b - 1) |
| C      | ab(n - 1) |
| Total  | abn - 1 |

a is the number of levels in factor A; b is the number of levels of B _within each level of A_; n is the number of observations at the same level of both A and B; abn is the total number of observations at all levels.

### Nested designs in R

```r
# Load data
drugs = read.csv("drugs.csv", header=T)
str(drugs)
## 'data.frame':   30 obs. of  3 variables:
##  $ drug  : Factor w/ 3 levels "X","Y","Z": 1 1 1 1 1 1 1 1 1 1 ...
##  $ source: Factor w/ 6 levels "SA","SB","SC",..: 1 1 1 1 1 2 2 2 2 2 ...
##  $ chol  : int  21 33 18 14 27 15 18 34 23 26 ...
drugs[c(1:6,25:30),]
##    drug source chol
## 1     X     SA   21
## 2     X     SA   33
## 3     X     SA   18
## 4     X     SA   14
## 5     X     SA   27
## 6     X     SB   15
## 25    Z     SE   31
## 26    Z     SF    7
## 27    Z     SF    1
## 28    Z     SF    4
## 29    Z     SF   16
## 30    Z     SF   10
```

Importantly, the nesting is _explicit_, i.e. SA and SB only appear under X, SE under Z etc. If this wasn't the case, `R` would assume that they were to be crossed as in a factorial design, but it is capable of noticing a nested design if it is spoon-fed it.

Analysis is done using `lme` in the `nlme` package, in the same manner as for randomised block design, but `R` will take it as to be a nested design and not give you the `source` line of the ANOVA:

```r
# Analysis
library(nlme)
fit1 = lme(chol ~ drug, random=~1|source, data=drugs)
anova(fit1)
##             numDF denDF  F-value p-value
## (Intercept)     1    24 47.83008  <.0001
## drug            2     3  1.48014  0.3571

summary(fit1)
## Linear mixed-effects model fit by REML
##  Data: drugs
##        AIC      BIC   logLik
##   198.7772 205.2564 -94.3886
## 
## Random effects:
##  Formula: ~1 | source
##         (Intercept) Residual
## StdDev:     5.27952 6.473021
## 
## Fixed effects: chol ~ drug
##             Value Std.Error DF   t-value p-value
## (Intercept)  22.9  4.257542 24  5.378690  0.0000
## drugY        -9.7  6.021074  3 -1.611008  0.2056
## drugZ        -8.0  6.021074  3 -1.328667  0.2760
##  Correlation:
##       (Intr) drugY
## drugY -0.707
## drugZ -0.707  0.500
## 
## Standardized Within-Group Residuals:
##        Min         Q1        Med         Q3        Max
## -1.3393044 -0.6766791 -0.1496749  0.6574641  1.6791766
## 
## Number of Observations: 30
## Number of Groups: 6
```

&sigma;<sub>B</sub> is estimated as 5.27952; &sigma; is estimated at 6.473021.

### Checking assumptions

As before we create a plot of fitted vs residuals to check the constant variance assumption, and a qq-plot of the residuals.

The diagonal lines in the residuals plot are due to rounding; it also happens a lot with poisson distributions.

## Multiple Linear Regression

This is an extension to linear regression to include more than one explanatory variable. For example, estimating weight gain of children using various levels of dietary supplement, exercise, and behaviour modification; or predicting the test mark of a STAT 293 student using number of hours spent studying, number of lectures attended, and STAT 292 grade. In the latter case not all of the categories are continous&mdash;the mark in STAT 292 is A-, B etc.

### Simple linear regression review

Looking for a linear relationship between two random variables: the response variable Y and an explanatory variable X. The questions we want to answer are:

* Can the relationship betweem tje variables be represented by a straight line? Check using a scatterplot.
* If so, how much change do you see in the response variable when you increase the explanatory variable by one unit?

The regression line is y = &Beta;&#x0302;<sub>0</sub> + &Beta;&#x0302;<sub>1</sub>x.

The regression model is Yi = &Beta;0 + &Beta;1xi + &epsilon;i. &Beta;0 and &Beta;1 are fixed (constant) and unknown parameters. xi's are fixed, known constants (explanetory variable) which are measured without error. Yi is the response variable at X = xi.

E(Yi) = &Beta;0 + &Beta;1x1. Var(Yi) = &sigma;2

### Multiple regression

The data consists of n obersvation on a response variable Y, and p explanatory or predictor variables X1, X2, &hellip;, Xp. There can be missing observations of the x's are allowed, though we wont do that.

Note that it's a linear model because the &Beta;'s are linear, not because the xi's are&mdash;&hellip; + &Beta;1xi2 + &hellip; is perfectly fine. Note also that there are p + 1 parameters, due to the existance of the intercept &Beta;0.

The parameter &Beta;j, j = 1, &hellip;, p represents the expected change in the response variable Y per unit change in Xj, when all of the other explanatory variables Xk (k&ne;j) are _held constant_. This will usually mean that the regression coefficients from a simple regression on a single parameter (total) will be different from the coefficient for that parameter as part of a multiple regression (partial).

### Estimating tree volume

```r
# Load and examine data
trees = read.csv("treevol.csv", header=T)
str(trees)
## 'data.frame':   20 obs. of  5 variables:
##  $ obs: int  1 2 3 4 5 6 7 8 9 10 ...
##  $ dbh: num  10.2 13.7 15.4 14.4 15 ...
##  $ ht : num  89 90.1 95.1 98 99 ...
##  $ d16: num  9.3 12.1 13.3 13.4 14.2 12.8 14 13.5 14 13.8 ...
##  $ vol: num  25.9 45.9 56.2 58.6 63.4 ...

# Individual linear models
mod1 = lm(vol ~ dbh, data=trees)
summary(mod1)
## Call:
## lm(formula = vol ~ dbh, data = trees)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max
## -11.9639  -3.8271  -0.4432   4.7975   9.9845
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)
## (Intercept) -45.5663    11.7745  -3.870  0.00112 **
## dbh           6.9161     0.7531   9.184 3.26e-08 ***
## ---
## Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
## 
## Residual standard error: 6.049 on 18 degrees of freedom
## Multiple R-squared:  0.8241,    Adjusted R-squared:  0.8143
## F-statistic: 84.34 on 1 and 18 DF,  p-value: 3.257e-08

mod2 = lm(vol ~ ht, data=trees)
summary(mod2)
## Call:
## lm(formula = vol ~ ht, data = trees)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max
## -24.503  -7.105  -2.769   5.961  24.348
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)
## (Intercept) -104.7902    52.2861  -2.004  0.06034 .
## ht             1.7441     0.5466   3.191  0.00506 **
## ---
## Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
## 
## Residual standard error: 11.53 on 18 degrees of freedom
## Multiple R-squared:  0.3613,    Adjusted R-squared:  0.3258
## F-statistic: 10.18 on 1 and 18 DF,  p-value: 0.005062

mod3 = lm(vol ~ d16, data=trees)
summary(mod3)
## Call:
## lm(formula = vol ~ d16, data = trees)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max
## -6.3019 -3.9308 -0.7454  2.6049  8.2962
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)
## (Intercept) -53.4330     8.6841  -6.153 8.25e-06 ***
## d16           8.2879     0.6203  13.360 8.80e-11 ***
## ---
## Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
## 
## Residual standard error: 4.365 on 18 degrees of freedom
## Multiple R-squared:  0.9084,    Adjusted R-squared:  0.9033
## F-statistic: 178.5 on 1 and 18 DF,  p-value: 8.797e-11

# Multiple regression
mod4 = lm(vol ~ dbh + ht + d16, data=trees)
summary(mod4)
## Call:
## lm(formula = vol ~ dbh + ht + d16, data = trees)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max
## -5.2548 -1.6765 -0.1277  1.5232  4.9990
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)
## (Intercept) -108.5758    14.1422  -7.677 9.42e-07 ***
## dbh            1.6258     1.0259   1.585 0.132611
## ht             0.6938     0.1631   4.254 0.000606 ***
## d16            5.6714     1.2023   4.717 0.000232 ***
## ---
## Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
## 
## Residual standard error: 3.095 on 16 degrees of freedom
## Multiple R-squared:  0.9591,    Adjusted R-squared:  0.9514
## F-statistic: 124.9 on 3 and 16 DF,  p-value: 2.587e-11
```

It at first appears that `dbh` and `d16` are the best predictors, but doing all three together actually have `ht` and `d16`.

## R commands

`mean(x)`
:   The mean of `x`

`sd(x, na.rm = T)`
:   The standard deviation of `x`, removing NA values

`var(x)`
:   The variance of `x`

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

`coefficients(fit)`
:   Get model coefficients from fits

`TukeyHSD(fit)`
:   Do a Tukey Honest Significant Difference test on `fit` (**note** can't do this on all fits)

## Footnotes
