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

## Summation algebra review

Sum is &Sigma;, capital greek sigma. Obvious rules are obvious. To sum all in groups, need &sum;&sum;. Brackets used, e.g. &sum;(&sum;Y<sub>ij</sub>)<sup>2</sup>.

### Bar-dot notation

The sum of elements in group 1 can be written as both &sum;Y<sub>1j</sub> and as Y<sub>1.</sub> (without, in the latter case, needing to specify i from 1 to 4 or similar.

The sum of elements in column 2 can be written Y<sub>.2</sub>, the jth column as Y<sub>.j</sub>, and the grand total as Y<sub>..</sub>.

A bar over a symbol means the mean; need to find unicode character for this. These two notations can be combined to give, e.g. Y(bar)<sub>1.</sub> is the mean of the first row, which is the total of the first row (Y<sub>1.</sub>) divided by the number of elements in the row. Simularity the mean of the jth column is Y(bar)<sub>.j</sub>. The grand mean is Y(bar)<sub>..</sub>.

### Expected value and variance of a random variable

The expected value &mu; = E(Y). Need the "hat" unicode here, as the estimate of the expected value &mu;(hat) = E(Y)(hat) = Y(bar).

The population variance is the expected value of the quantity (Y - &mu;)<sup>2</sup>. That is:

&sigma;<sup>2</sup> = E[(Y - &mu;)<sup>2</sup>] = E[(Y - &mu;)(Y - &mu;)] = E(Y<sup>2</sup> - 2&mu;Y + &mu;<sup>2</sup>) = E(Y<sup>2</sup>) - 2&mu;E(Y) + &mu;<sup>2</sup> = E(Y<sup>2</sup>) - 2&mu;<sup>2</sup> + &mu;<sup>2</sup> = E(Y<sup>2</sup>) - &mu;<sup>2</sup> = E(Y<sup>2</sup>) - [E(Y)]<sup>2</sup>.



## Footnotes
