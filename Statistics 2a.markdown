#Statistics 2a 2016

Stats 2a (STAT 292) is the complement to STAT 293, and occurs in trimester 1. The course website is [here](http://sms.victoria.ac.nz/Courses/STAT292_2016T1/WebHome), but the blackboard site also has material. There are three 1 hour classes per week, on Mondays, Wednesdays and Fridays from 12 to 1pm. The Friday lecture clashes with Genetics, so make sure to pay attention, go over readings etc.

##Readings

Ivy Liu has provided a "Reading list" for STAT 292,[^Rlist] the significance of which is not immediately apparent. It is composed entirely of books, of which online links to some are provided. It is divided into three sections, like so:

[^Rlist]: It can be found at [this link](https://victoria.rl.talis.com/lists/7683FB85-B29D-590D-C07C-CA6DA61E8FD4.html), or on Blackboard.

###Elementary textbooks for applied statistics

* **A first course in applied statistics: with applications in biology, business and the social sciences** - _Megan Clark_, _John A. Randal_ 2011: This is the textbook from first year, which I still have and is easy to read. I may even remember some of it!
* **Introduction to the practice of statistics** - _David S. Moore_, _George P. McCabe_ c2003
* **Introduction to probability and statistics** - _William Mendenhall_, _Robert J. Beaver_ c1991
* **Introduction to statistical analysis** - _Wilfrid Joseph Dixon_, _Frank Jones Massey_ 1968, c1969

###Part 1

* **Analyzing experimental data by regression** - _David M. Allen_, _Foster B. Cady_ c1982
* **Statistical Methods in Medical Research** - _Armitage, Peter_, _Berry, Geoffrey_, _Matthews, J. N. S._ 2008
* **Regression Analysis by Example** - _Samprit Chatterjee_, _Ali S. Hadi_ 2006 (electronic resource)
* **Experimental designs** - _William G. Cochran_, _Gertrude M. Cox_ 1957: 
* **Planning of experiments** - _D. R. Cox_ 1958: Mentioned int the references section for the part 1 notes, _Planning of Experiments_ section ("**Chapter 1**").
* **Ecological experiments: purpose, design, and execution** - _Nelson G. Hairston_ 1989
* **Regression methods applied** - _John Harraway_ 1995
* **Foundations of behavioral research** - _Fred N. Kerlinger_ c1986
* **Experimental Design: Procedures for the Behavioral Sciences** - _Roger Kirk_ 2013 
* **Applied regression analysis and other multivariable methods** - _David G. Kleinbaum_, _Lawrence L. Kupper_, _Azhar Nizam_, _Eli S. Rosenberg_ 2014
* **Analysis of variance in experimental designs** - _Harold R. Lindman_ c1992
* **The design and analysis of research studies** - _Bryan F_. _J. Manly_ 1992: Mentioned in references for the part 1 notes, _Planning of Experiments_ section ("**Chapters 1 & 5**").
* **The design of experiments: statistical principles for practical applications** - _R. Mead_ 1988: Mentioned in the references for the part 1 notes, _Planning of Expirements_ section ("**scattered throughout the book**").
* **Applied statistics: analysis of variance and regression** - _Ruth M. Mickey_, _Olive Jean Dunn_, _Virginia Clark_ c2004 
* **Design and analysis of experiments** - _Douglas C. Montgomery_ 2001 
* **Design and analysis of experiments** - _Roger G. Petersen_ c1985 
* **Experimental design and data analysis for biologists** - _G. P. Quinn_, _Michael J. Keough_ 2002 
* **Statistical methods** - _George Waddel Snedecor_, _William G. Cochran_ c1980 
* **Biometry; the principles and practice of statistics in biological research** - _Robert R. Sokal_, _F. James Rohlf_ 1969 
* **Analysis of Covariance** - 1978 
* **Practical data analysis for designed experiments** - _Brian S. Yandell_ 1997 
* **Biostatistical analysis** - _Jerrold H. Zar_ 1974 
* **Biostatistics: experimental design and statistical inference** - _James F. Zolman_ 1993: Mentioned in the references section of Part 1: _Planning of Experiments_ ("**lots of examples of good and bad designs in psychology**").
* **Statistical ecology: a primer on methods and computing** - _John A. Ludwig_, _James F. Reynolds_ c1988 


###Part 2

* **Wiley Series in Probability and Statistics : Categorical Data Analysis (3rd Edition)** - _Agresti, Alan_ 2014 
* **Introduction to Categorical Data Analysis**
* **Wiley Series in Probability and Statistics : Applied Logistic Regression (3rd Edition)** - _Hosmer, David W._, _Lemeshow, Stanley_, _Sturdivant, Rodney X_. 2013 
* **The statistical analysis of categorical data** - _Erling B. Andersen_ c1994 
* **Generalized linear models** - _P. McCullagh_, _John A. Nelder_ 1989 

##Planning of Experiments

The first section, from page 3 to 13 of the part 1 notes pdf. This section covers general considerations when planning experiments, including controlling for bias, optimising the power of experiments, and other issues.

The recommended references are chapters 1 and 2 of _Manly_, chapter 1 of _Cox_, and various parts of _Mead_ and _Zolman_.

###Observational vs Experimental studies

_Observational studies_ involve collecting data without manipulating the outcome, e.g. comparing the life expectancies of different income groups, political polling. _Experimental studies_ are also called _planned experiments_ or _intervention studies_. These would include e.g. clinical trials of a medical intervention, determining change in yield from a fertiliser combination.

The category to which the study belongs changes how the results should be interpreted. In particular, observational studies are a big source of "correlation is not causation" issues. The flow of causation could be in reverse (e.g. do elderly people with pets become more healthy, or do more healthy elderly people get pets more often). On the other hand, planned studies may require unethical intervention,[^ethicalbutimpossible] and so stringently controlled observational studies will be required.

[^ethicalbutimpossible]: Some potential studies may not be unethical, yet still be unfeasible or impossible. Causing your own oil spill, for example, is probably out of the question in environmental sciences, while physicists are not yet in the position to merge black holes to detect gravitation waves themselves and have instead had to wait for the universe to do it for them.

###Why statistics is required

Data in many fields is noisy[^noisyphysics] and this must be taken into account. A measured 5% increase in a quantity that typically gets noise in the order of 30% might be "real" or it might not be, and statistics is used to find that out.

[^noisyphysics]: Physics is stereotyped as a "quiet science" but discoveries such as gravity waves and the Higgs boson required statistical means to extract the signal from the noise.

N.B.:

>It is frequently found that an **absolute** statement about _**Y**_ is useless... however, experience has shown that **relative** statements about _**Y**_ will often still apply in changed conditions.

###Designing a (planned) experiment

_This section (1.4 in the notes) is about planned experiments; observational experiments are in section 1.6_

First you need to work out what your objective actually is&mdash;the question you're asking, so to speak. Only then is it really possible to start planning. Use general terms rather than being overly specific.

####Response variables

The _response variable_ is referred to as _Y_, though it may not be directly measurable. In this situation you need to use a surrogate, e.g. a diagnostic test for a disease that is not 100% reliable, or an absorbency reading to calculate cell density. Multiple response variables are possible, but not dealt with in 200-level.

_Y_ is also called the _observed value_ or, in the context of regression, the _dependent variable_. In psychology _Y_ may be called the _criterion variable_, while for agricultural experiments it is often known as the _yield_. In part 1, we only talk about cases where _Y_ is a continuous variable&mdash;the second half will have _Y_ as a _count_, a _binary response variable_, or _multinomial response variable_

Given that _Y_ is continuous, we still require it to follow a normal distribution to perform ANOVA,[^ANOVA] regression analysis, or ANCOVA.[^ANCOVA] It's also common for data to have a _lognormal_ distribution, meaning that you must first take the log of _Y_ to get a normal distribution suitable for analysis&mdash;this is particularly common in biology.

ANOVA can actually be used sometimes with non-continuous _Y_, because the Central Limit Theorem ensures that the average score over a group of similar items tends to a normal distribution. On this basis, ANOVA can be used on the results of e.g. psychology questionnaires.

[^ANOVA]: Analysis of Variance.

[^ANCOVA]: Analysis of Covariance.

####Experimental units

The notes are a bit confusing about this, but it would appear that an _experimental unit_ is, e.g., a single person being measured, or a petri dish, or a forest quadrat, or whatever you're measuring and getting the _response variable_ from. In STAT 292, it is assumed that each _experimental unit_ gives us a single observation of the result variable. It is possible for there to be many observations, but that is for STAT 393 _Linear Models_.

Sometimes you have no choice in the experimental unit, because the fields are already picked out, or there are only so many students in a class. If there is a choice, e.g. in a political poll of the entire population, random sampling is the default option.

Having more information about said units may modify your approach, however. For example, if you wanted to poll about what people think about a certain political issue you would want to ensure representation from people of different age groups, regions in the country, ethnicity, political allegiance, etc.

The number of experimental units depends on your budget, the number available, the time available, the desired precision, etc. Run a pilot study and look at other examples of similar studies in the literature to get an idea of how many subjects you need.

####Choosing the treatments

Each unit receives one treatment, assigned to it to determine their effect on the response variable.

_Simple treaments_ have only one source of variation for _Y_. Categorical variables are called _factors_, while numerical variables are _independent variables_. Examples would include the drug used in a medical trial (categories),[^simpledrugvar] or the amount of noise interfering with concentration (numeric).

[^simpledrugvar]: Placebo, no drug, drug A, drug B, etc would all be "treatments."

_Control treatments_ are useful in many experiments. If you were testing different varieties of crop you would have no control as such, but in a fertiliser the control treatment would be no fertiliser at all. In a medical trial, giving the patient no drug would be the control.

_Placebo treatments_ are useful in a medical context, as the mere act of treating a patient generally elicits a positive response.

_Complex treatments_ are the result of two of more sources of variation being provided by the treatments. For example, testing different varieties of broccoli's responses to fertiliser would result in a given treatment constituting a specific broccoli variety plus the presence or absence of fertiliser. If there were three different varieties, and each could be fertilised or not, you would wind up with six (three times two) different _complex treatments_.

####Control extraneous variation

Try to remove or account for other possible sources of variation in _Y_. For example, in an agricultural experiment, all plots should be similar, planted in the same way at the same time under the same conditions, so much as is possible.

However, if you need to demonstrate that the results hold over a range of conditions, these conditions will need to be controlled but not eliminated. They become _explained_ variation, rather than unexplained.

Uncontrolled and even entirely unexpected sources of variation in _Y_ will exist. The most basic method of dealing with this is randomisation, for example randomising the plots selected for each treatment to ensure that no individual treatment is biased with a more fertile plot (a large number of plots is also important here). If the variation is measurable, however, like pH, you might:

* Make sure you get a representative sample of the various cases that exist.
* Use _blocking_ to assign treatments in a balanced way, e.g. assigning pairs units with similar properties and then randomising the treatment each gets within the pair, or more generally assure balance.
* Factor them into your statistical analysis, increasing the power to detect treatment differences.

####BACI designs

_This section is not administered in the test, but is section 1.4.7 in the part 1 notes._

BACI stands for Before-After-Control-Impact, and is common in ecology (where it is difficult to control your experiments in totality). You first divide your area of study into two groups, and observe them both without making any changes for a season to establish a baseline for differences between the two parts. Return the next season and conduct the experiment, and when you collect the data compare before and after first, and _then_ compare those differences between the two parts of the area. This combats issues e.g. poor breeding seasons, which would come into play if you did control and experiment sequentially, or one place being naturally less populous or fertile than the other.

####Choosing how to allocate the treatment

The _replication number_ is the number of treatments allocated. The method of allocation is also important: for example, you could randomise everyone, or split into blocks and randomise those.

####Check the method of analysis before you start

Mock up some dummy data and run your planned analysis on it before you start, to ensure that it's actually possible to do what you want to do with the data you are planning on collecting.

####Reduce the opportunity for human error

If you have assistants, make sure they know what to do and keep in touch with them during the experiment. Make sure _you_ know what to do. Ensure that the procedures are clear and simple, and that results recorded will be unambiguous. Questionnaires should be tested before the study actually starts to eliminate problems.

###Technical aspects of designed experiments

Bias, power, accuracy, etc. The things you need to think about before you start. In statistics and hypothesis testing specifically, when you've got a mean what you're doing is _estimating the population mean_.

####Bias

_Bias_ happens when a parameter is consistently underestimated or overestimated. This can be caused by some treatments being given more favourable conditions than others. Randomisation of treatments to experimental units helps reduce this, and its usefulness is under appreciated. Observational studies meanwhile require random sampling or will likely be biased. Randomisation will not guarantee the elimination of all types of bias, which should be watched for.

####Power

_Power_ relates to hypothesis tests, and quantifies the chance of rejecting the null hypothesis if the means really are different. While the _significance_ level _&alpha;_ is the probability that the null hypothesis H<sub>0</sub> is rejected when it is true, the _power_ 1 - _&beta;_ is the probability that the null will be rejected when the null is actually false. (_&beta;_ is the probability of a Type II error, failing to reject the null when it is actually false, while _&alpha;_ is the probability of a Type I error, rejecting the null when it is nevertheless true).

The significance level is chosen by the experimenter, but the power depends on a number of factors on which you have varying levels of control:

* Sample size
* Experimental design
* The amount by which the true means actually differ (a bigger gap is inherently easier to detect)
* The variability of observations
* The level of _&alpha;_

In particular there is a trade-off between _&alpha;_ and power, as a lower _&alpha;_ will give a more stringent test but lower power. Some people use _&alpha;_ = 0.05 and aim for a power of 0.80.

####Precision

_Precision_ refers to the width of the confidence interval. A precise estimate of the difference between two means is one with a narrow confidence interval, and occurs if there is low variability in the estimator.

####How to increase power and precision

1. Increase the sample size
2. Set _&alpha;_ higher, for a less stringent test that requires less evidence before rejection the null
3. For a fixed experiment size, use a _balanced_ experiment. That is to say, balance the number of observations in each category
4. For a fixed experiment size, use _blocking_ if possible

####Accuracy

_Accuracy_ is here taken to mean a _combination of precision and absence of bias_, and is therefore not the same as precision or bias alone.

###Designing observational studies

The considerations for designing observational studies are often those relevant to planned studied. Planning the sampling is important. Random sampling is needed for independence, which is usually assumed for statistical tests, but modifications e.g. stratified random sampling may be used.

###Pilot studies

Pilot studies are smaller than the main study and are used to look for potential hiccups but also to find information that is required before running the main study. For example, getting a rough idea of the variance between experimental units is important for knowing how many of them you will need for your main study.

##One-way analysis of Variance; Completely Randomised Designs

From page 14 to 49 of the part 1 notes pdf&mdash;the largest section,

The concept of a _factor_ is important here, both in observational and designed studies. For example, in an observational study, the _strata_ (e.g. income) that the _experimental units_ are sorted into. In a designed study the _treatments_ applied may be a factor, while the gender of the participants (or pH of the soil or whatever) might be another. In _one-way ANOVA_ there is **only one factor**.

_Completely Randomised Design_ means that it is assumed that all the experimental units are relatively homogeneous _or_ that we do not have detailed information about any heterogeneity. We assign the treatments are allocated completely at random, using an RNG, over the available units.

###Notation for one-way ANOVA

ANOVA
: Analysis of variance

_p_
: Number of groups or treatments

_n<sub>i</sub>_
: Number of observations in the _i_<sup>th</sup> group, _i_ = 1, 2, &hellip;, _p_

_n_ 
: &sum;_n<sub>i</sub>_; _i_ from 1 to _p_ (total number of observations)

_Y<sub>ij</sub>_
: Random variable for the _j_<sup>th</sup> observation in the _i_<sup>th</sup> group

_y<sup>ij</sup>_
: _ij_<sup>th</sup> observation, actual data
: A realisation of the random variable _Y<sub>ij</sub>_

_u<sub>i</sub>_
: _i_<sup>th</sup> population mean an unknown parameter
: Expected value of any group I observation, _E(Y<sub>ij</sub>)_

_&sigma;_<sup>2</sup>
: Population variance within each group, an unknown parameter, the same for each group[^samevariance]

_E<sub>ij</sub>_
: Random variable for error of _ij_<sup>th</sup> observation

_e<sub>ij</sub>_
: (Unknown) true error of _ij_<sup>th</sup> observation

[^samevariance]: This is one of the assumptions for ANOVA

Note: random variables get capital letters; unknown constants get Greek letters.

###Model equation

We use a statistical model to anayse data, made up of the model equation, and the model assumptions. In general:

Observed value = expected value + error

For one-way designs this becomes:

Observed value = population mean + deviation from the mean

The model equation may be written as:

_Y<sub>ij</sub>_ = _&mu;<sub>i</sub>_ + _E<sub>ij</sub>_

Remember, i indexes the group and j indexes the observations in each group; the values for j need not be the same in each i.

###Fitting the model to data

Observed value = estimated expected value + estimated error

Or:

Observed value = fitted value + residual

###SSE, df, and MSE calculations

SSE (sum of squares) is the sum of the squares of the residuals, calculated for each group. If the residuals are small then the SSE will be small.

The (error) degrees of freedom (df) is calculated from the number of observations _n_ minus the number of independent parameters that had to be estimated in order to fit the model and find SSE. In the case of _p_ groups in a one-way ANOVA, we estimated the _p_ means and so df = n - p.

The Mean Square Error (MSE) is SSE/df, which is the estimate of _&sigma;_<sup>2</sup>.

###Post-hoc testing

Imagine you have ten treatments: you'd have 45 possible comparisons between two means. If you test at 5% difference, _you're going to find a difference somewhere_ nomatter what. The Tukey test, or HSD (honest significance difference), is useful here. It is commonly used in preliminary studies where you don't know what you're looking for and don't want to go on a wild goose chase after an effect that isn't there.

###One-way ANOVA theory

We assume that data from the _i<sup>th</sup>_ group comes independently from a normal distribution with mean _&mu;<sub>i</sub>_ and variance _&sigma;<sup>2</sup>_. This leads to the three assumptions: independence, normality, and constant variance.

For one-way ANOVA we attempt to fit two different statistical models to the data:

* The **reduced model**, where we assume _H<sub>0</sub>_ is true, is that all the _p_ means are the same, imposing _p_ - 1 restrictions on the model. The model equation is:
    
    <em>Y<sub>ij</sub> = &mu; + E<sub>ij</sub></em>, where <em>E<sub>ij</sub> ~ N(0, &sigma;<sup>2</sup>)</em>, independently

* The **complete model**, assuming _H<sub>A</sub>_ is true, is that at least one population mean is different, imposing no restrictions. The model equation is:

    <em>Y<sub>ij</sub> = &mu;<sub>i</sub> + E<sub>ij</sub></em>, where <em>E<sub>ij</sub> ~ N(0, &sigma;<sup>2</sup></em>), independently

The null is inherently less of a fit, but hopefully not much.

###Presenting the results

* Description
* Assumptions
* Hypotheses
* ANOVA table
* Conclusions
* Interpretation

###The Effects model

The ANOVA model equation we've been using is fine for one-way ANOVA, but it doesn't generalise to more complicated experimental designs. We instead can write

_Y<sub>ij</sub> = &mu; + &alpha;<sub>i</sub> + E<sub>ij</sub>_

But you have to place constraints on &alpha;p so that you aren't adding an extra degree of freedom.

##Factorial Designs; Multi-Way Analysis of Variance

Need to take own notes here.

From page 50 to 82 of the part 1 notes pdf.

##Regression

From page 83 to 106 of the part 1 notes pdf.

Multiple regression:

Two or more x variables are tried as predictors of _Y_. Overall f test to see if at least one x predicts Y. Take care to interpret these models _carefully_.

##Analysis of Covariance

From pages 107 to 121 of the part 1 notes pdf.

##Overview of Part 1

The final section of the part 1 notes pdf. A short cheat sheat, and some further study-type paragraphs.

##Categorical data analysis

In categorical data the response variable (dependent variable) is a set of categories. For example: favourite movies, preferred political party.

##Tutorials

Tutorials are in MY 632 on Wednesdays between Computability and the Stats class itself (11am to 12pm). The tutor is Lindsay(sp?).

###Tutorial 1, 2 March

A review tutorial with no formal assignment attached. Reviewing ANOVA and collecting some data for later tutorials.

####ANOVA

There are four steps for carrying out ANOVA, same as hypothesis testing:

1. State the hypothesis
2. Create an ANOVA table: k is the number of groups; n is the number of subjects. The first column is the source of variation, the second column is the degrees of freedom, the third is Sum of Squares, the fourth is Mean Square, the fifth is the F Value (test statistic), and the sixth is the P value
3. Calculate the rejection region (F-distribution)
4. Make a conclusion (reject or do not reject hypothesis)

####Experiment

Each person is given a piece of paper with a 10cm square and a irregular shape. There are four different irregular shapes. The idea is to guess the size of the unknown shape. There are 28 people in the room, so 7 of each shape to ensure a balanced study and maximum power of the hypothesis testing. The pieces of paper are shuffled and then distributed. Independence is assured by not talking to each other, and anonymity by not writing your name and turning it over when handing it in. (I got a square, which I estimated to be 20 square cm). The data for all sessions will be collated and used next week.

####Forensic dental X-ray example

1. What are the assumptions for ANOVA?
	* That the errors are normally distributed
	* That the data has a constant variance between the groups
	* That the data is independent
2. What are the null and alternative hypotheses for ANOVA?
	* The null is that there is no difference between the groups
	* The alternative hypothesis for ANOVA is that there is a difference between at least one group
3. Why should the teeth have been sampled from eight different people of each sex, and not eight teeth from one female and eight from one male?
	* Because sampling multiple teeth from one person would mean that the results are not independent&mdash;need more subjects to get a better idea of the treatment
4. Given that the researcher could afford to test _n_ = 16 subjects, what is the advantage in choosing eight from each group?
	* Choosing a balanced sample increases the power of the test, and helps to ensure the variances are the same for each group.
5. Use the SAS output to find the result of the ANOVA. Use a 5% significance level.
	* SAS gives "PR > F" as 0.0294, which is less than 0.05 and is therefore significant
	* The null hypothesis is rejected at the 5% level

####Sample report

Our assumptions are that that the errors are normally distributed; that the data has equal variance; and that the data is independent. The null hypothesis H<sub>0</sub> is that there is no difference between the mean X-ray penetration of men's and women's teeth. The alternative hypothesis H<sub><em>A</em></sub> is that there is a difference in the means at the 5% level.

###Tutorial 2, 9 March

Analysis of area estimation.

There are several features of data are "unusual." Values that are not larger than 10 ought to be impossible, because we know that the shapes estimated were larger than 10 square centimeters. The 200 guess seems too large (outlier). Guesses of round and whole numbers are more common.

Assumptions of ANOVA:

* Constant variance
* Underlying normality
* Independence

Constant variance does not seem to hold, because the circle group has outliers and is calculated to have a large standard deviation. The distribution may or may not be normal&mdash;preponderance of whole numbers suggest maybe not. Independence is valid, due to study design. We'll do ANOVA anyway.

Levene's test:

Used to test whether the assumption of constant variance is valid. I.e. like ANOVA, but testing if the variances are all the same and not the means.

We can't reject the null hypothesis (that the assumptions are valid) with this test.

Diagnostic plot:

We focus on only a handful, including the residuals plot. The residuals plot says that we do not have constant variance.

QQ plot shows normallity, in this case that obviously doesn't hold.

Non-parametric one-way anova, Kruskal-wallis test. This tests a difference in median, not mean. Medians are robust to outliers. This test shows a difference in medians.

Removing the large outlier, we now have one fewer observation. We run ANOVA again and reject the null. We're all right with residuals, we seem to have constant variance, the data seems to be normal.

####Sample report:

Model eq: _Y<sub>ij</sub> = M<sub>i</sub> + E<sub>ij</sub>_

Assumptions:

* Constant variance
* Underlying normality
* Independence

Hypotheses:

* M<sub>square</sub> = M<sub>circle</sub> = M<sub>rectangle</sub> = M<sub>triangle</sub>
* At least one of the means not equal 

ANOVA table: copy and paste the SAS table, state clearly what the F statistic, the degrees of freedom, and p values are.

###Tutorial 3, 16 March

More ANOVA

####ANOVA revision:

Model equation:

_Y<sub>ij</sub> = &Mu;<sub>i</sub> = E<sub>ij</sub>_

Assumptions:

* Independence
* Constant variance
* Normality

Or: _E<sub>ij</sub>_ follows an independently identically distributed Normal distribution with mean zero and variance &sigma;<sup>2</sup>

####Areas experiment

We're using the version with the five unusual data points removed. The actual area was 18 square cm.

The Tukey Test tests each pairwise difference in means. We draw an underlining diagram with the four groups.

####Albatross wingspan

Boxplot:

* Perhaps difference in means
* Symmetric (normality)
* Constant(ish) variance

Can be lenient due to small number of observations in each group.

ANOVA:

_p_ = 0.0001, so must reject null hypothesis. At least one mean is different.

Levene's Test:

For constant variance. _p_ = 0.0792 &gt; 0.05 (just) so cannot reject the null hypothesis that variance is constant.

Levene's Test agrees that we have constant variance.

Diagnostic plots:

Residuals plot has some indication of funneling, but this comes from only one data point. Covering up a different data point however would suggest a great deal of shape. So we can assume constant variance from here.

The Q/Q plot follows reasonably closely to the line, so we can say that we have normality.

Our conclusions for the ANOVA is valid, because our assumptions were valid.

Tukey test:

Note that a bunch of "B"s are missing in the SAS output here.

This Tukey test output looks much different, because the design is balanced. It effectively draws our underlining diagram for us, rotated 90 degrees. The line of A's functions like the line that connects B to A, including D. C is not assigned a group, because it is all on its own; it has a different mean from the other groups.

When you have a balanced design, SAS gives you a minimum significant difference, which is constant for all the groups.

###Tutorial 3, 23 March

Random effects and factorial design.

####Random effects model

The means model is Yij = &Mu;i + Eij, while the fixed effects model is Yij = &Mu; + &alpha;i + Eij

|    | Means model | Fixed effects model | Random effects |
|----|-------------|---------------------|----------------|
| **Model** | Yij = &Mu;i + Eij | Yij = &Mu; + &alpha;i + Eij |   |
| **Hypotheses:** | H0: &Mu;1 = &Mu;2 = &Mu;3<br/>H1: At least one &Mu; is different | H0: &alpha;1 = &alpha;2 = &alpha;3 = 0<br/>H1: At least one &alpha; ≠ 0 | Yij = &Mu; + Ai + Eij<br/>Where A follows a normal distribution around 0 with &sigma;² variance  |
| **Parameters:** | &Mu;1, &Mu;2, &Mu;3, &sigma;² | &Mu;, &alpha;1, &alpha;2, &alpha;3, &sigma;²<br/>&Sum;&alpha; = 0 |   |
| **Assumptions:** | Normal distribution; Independence; Constant variance | The same assumptions, and that the fixed effects sum to zero |  independence etc.<br/>Eij and Ai following normal distributions |

* MSE = &sigma;²
* MST = &sigma;² + r × &sigma;²<sub>A</sub> where r is the number of students in each teaching group.
* &sigma;²<sub>A</sub> = (MST - &sigma;)÷r

####Factorial design (two-factor ANOVA)

12 patients, 2 levels of delivery, three levels of dose.

Model: <em>Y<sub>ijk</sub> = &Mu; + &alpha;<sub>i</sub> + &beta;<sub>j</sub> + (&alpha;&beta;)<sub>ij</sub> + E<sub>ijk</sub></em>

###Tutorial 4, 6 April

Multi-factor ANOVA.

####Recovery time

Three factors, twelve treatments.

###Tutorial 5, 13 April

####Bird Abundance

Using log instead of the raw X produces better results.

####ANCOVA

Y = &alpha;i + &beta;ix + E

##Footnotes