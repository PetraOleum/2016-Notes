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

Sum is &Sigma;, capital greek sigma. Obvious rules are obvious. To sum all in groups, need &sum;&sum;. Brackets used, e.g. &sum;(&sum;Y<sub>ij</sub>)<sup>2</sup>.

### Bar-dot notation

The sum of elements in group 1 can be written as both &sum;Y<sub>1j</sub> and as Y<sub>1.</sub> (without, in the latter case, needing to specify i from 1 to 4 or similar.

The sum of elements in column 2 can be written Y<sub>.2</sub>, the jth column as Y<sub>.j</sub>, and the grand total as Y<sub>..</sub>.

A bar over a symbol means the mean. These two notations can be combined to give, e.g. Y&#x0304;<sub>1.</sub> is the mean of the first row, which is the total of the first row (Y<sub>1.</sub>) divided by the number of elements in the row. Simularity the mean of the jth column is Y&#x0304;<sub>.j</sub>. The grand mean is Y&#x0304;<sub>..</sub>.

### Expected value and variance of a random variable

The _expected value_ &mu; = E(Y). Need the "hat" unicode here, as the estimate of the expected value &mu;&#x0302; = E&#x0302;(Y) = Y&#x0304;.

The _population variance_ is the expected value of the quantity (Y - &mu;)<sup>2</sup>. That is:

_&sigma;<sup>2</sup> = E[(Y - &mu;)<sup>2</sup>] = E[(Y - &mu;)(Y - &mu;)] = E(Y<sup>2</sup> - 2&mu;Y + &mu;<sup>2</sup>) = E(Y<sup>2</sup>) - 2&mu;E(Y) + &mu;<sup>2</sup> = E(Y<sup>2</sup>) - 2&mu;<sup>2</sup> + &mu;<sup>2</sup> = E(Y<sup>2</sup>) - &mu;<sup>2</sup> = E(Y<sup>2</sup>) - [E(Y)]<sup>2</sup>._

The _population standard deviation_ is denoted, obviously, by &sigma;, and is the square root of the variance (&sigma;<sup>2</sup>).

The _population covariance_ of tow variables X and Y is defined as the expected value of the quantity (X - &mu;<sub>X</sub>)(Y - &mu;<sub>Y</sub>). It is denoted by &mu;<sub>XY</sub>, that is &mu;<sub>XY</sub> = E[(X - &mu;<sub>X</sub>)(Y - &mu;<sub>Y</sub>)].

The _population correlation coefficient_ between X and Y is defined as the covarance of X and Y divided by the product of their standard deviations, and is written &rho;. That is, &rho; = &sigma;<sub>XY</sub> / (&sigma;<sub>X</sub>&times;&sigma;<sub>Y</sub>).

Expected values rules: 

* _E(aY) = aE(Y)_ (where _a_ is a constant).
* _E(X + Y) = E(X)_ + E(Y)
* _E(XY) = E(X)E(Y)_

### Linear combinations

A linear combination is a weighted sum&mdash;that is, the sum of constant times random variable combinations&mdash;and comes up a lot in stats when forming new variables. For example, V = X + 3Y + 10. The sample mean Y&#x0304; is equal to a linear combination of the variables Y<sub>i</sub> with weights all equal to 1/n.

## Footnotes
