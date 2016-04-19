#Computability and Complexity

Computability and Complexity is a 300 level mathematics paper, with three one-hour lectures per week:

* Tuesday 12pm to 1pm, CO 118
* Wednesday 10am to 11am, CO 220
* Friday 10am to 11am, CO 118

_Cover picture is of David Hilbert in 1912._[^HilbertPicture]

[^HilbertPicture]: From [_File:Hilbert.jpg_](https://commons.wikimedia.org/wiki/File:Hilbert.jpg), Wikimedia Commons.

##Introduction

The _Theory of Computation_ originated in the 1930's, and its goal is to:

> Develop formal mathematical models of computation that reflect real-world computers.[^ToCpdf]

[^ToCpdf]: From [_Introduction to Theory of Computation_](http://cglab.ca/~michiel/TheoryOfComputation/TheoryOfComputation.pdf), by Anil Maheshwar and Michiel Smid.

The theory is divided into three areas:

* **Complexity Theory**  
  Classification of problems into _hard_ and _easy_, proof that hard problems are really of that nature.
* **Computability Theory**  
  Classification of problems as _solvable_ or _unsolvable_
* **Automata Theory**  
  Considering different types of _computational models_, such as _finite automata_, _context-free grammars_, and _turing machines_, determine whether they are of equal power or if one can solve more problems than others.

##Hilbert's Radio Address

Introduction, transcription, and translation by James T. Smith.[^HilbertRadio]

[^HilbertRadio]: From [_David Hilbert’s Radio Address_](http://math.sfsu.edu/smith/Documents/HilbertRadio/HilbertRadio.pdf), James T. Smith, San Franscisco State University.

> In Königsberg on 8 September 1930, David Hilbert addressed the yearly meeting of the Society of German Natural Scientists and Physicians (Gesellschaft der Deutschen Naturforscher und Ärzte).  Generally regarded as the world’s leading mathematician, Hilbert was born and educated in Königsberg and spent the early years of his career there. Retiring at age sixty-eight from his professorship at Göttingen, he was being honored by his home city.  Hilbert forcefully delineated a basic tenet of his research philosophy—that every mathematical problem is solvable—and countered a widespread but controversial opposing opinion. Shortly afterward, he read on German radio a four-minute version of the finale of his speech.  This excerpt stands on its own as a dramatic poem or anthem that has inspired many mathematicians and will continue to do so, and it has the potential to reinforce public appreciation of the historical and present context of mathematical research.

###Translation

> The instrument that mediates between theory and practice, between thought and observation, is mathematics;  it builds the connecting bridge and makes it stronger and stronger.  Thus it happens that our entire present-day culture, insofar as it rests on intellectual insight into and harnessing of nature, is founded on mathematics.  Already, GALILEO said:  Only he can understand nature who has learned the language and signs by which it speaks to us;  but this language is mathematics and its signs are mathematical figures.  KANT declared, “I maintain that in each particular natural science there is only as much true science as there is mathematics.”  In fact, we do not master a theory in natural science until we have extracted its mathematical kernel and laid it completely bare.  Without mathematics today’s astronomy and physics would be impossible;  in their theoretical parts, these sciences unfold directly into mathematics.  These, like numerous other applications, give mathematics whatever authority it enjoys with the general public. 
>
> Nevertheless, all mathematicians have refused to let applications serve as the standard of value for mathematics.  GAUSS spoke of the magical attraction that made number theory the favorite science for the first mathematicians, not to mention its inexhaustible richness, in which it so far surpasses all other parts of mathematics.  KRONECKER compared number theorists with the Lotus Eaters, who, once they had sampled that delicacy, could never do without it.  
>
> With astonishing sharpness, the great mathematician POINCARÉ once attacked TOLSTOY, who had suggested that pursuing “science for science’s sake” is foolish.  The achievements of industry, for example, would never have seen the light of day had the practical-minded existed alone and had not these advances been pursued by disinterested fools. 
>
> The glory of the human spirit, so said the famous Königsberg mathematician JACOBI, is the single purpose of all science.  
>
> We must not believe those, who today with philosophical bearing and a tone of superiority prophesy the downfall of culture and accept the _ignorabimus_.  For us there is no _ignorabimus_, and in my opinion even none whatever in natural science.  In place of the foolish _ignorabimus_ let stand our slogan:
>
> We must know,
>
> We will know.

##Computability

In order to properly study algorithms, and to answer the question "what can be achieved by an algorithm?", we need a formal mathematical definition of what an algorithm actually is. We'll look at several different potential candidates, which may all seem too simple to be correct. Despite this, they can actually be quite complex, and further more they can all _simulate each other_. Further, no-one has yet come up with a definition that _cannot_ be simulated by them. This evidence at least suggests that they might be the correct notion.

###Turing machines

One option might be to take a random, commonly used programming language and say "an algorithm is anything that can be done by a program in this language." You can&mdash;and people do&mdash;mathematically analyse programming languages, so this is a perfectly plausible approach in theory. In practise, however, programming languages are complicated and redundant and therefore hard to work with like mathematically. As a stand-in, then, we use "an incredibly simplified sort of program introduced by Alan Turing."

**Definition:** A _Turing machine M_ is a triple (&Sigma;, _Q_, _&delta;_).

1. &Sigma; is a finite set called the _alphabet_ of _M_. &Sigma; must contain one symbol _B_&mdash;the _blank symbol_.
2. _Q_ is a finite set called the _states_ of _M_. _Q_ must contain at least two states, _s_ (the _start state_) and _h_ (the _halt state_).
3. _&delta;_ is a finite set called the _instructions_ of _M_. Each element of _&delta;_ must be a quadruple &lang;_q_, _x_, _A_, _r_&rang;, where _q_, _r_ &isin; _Q_, _x_ &isin; &Sigma; and _A_ &isin; &Sigma; &cup; {_R_, _L_}.[^RandL]

[^RandL]: The two actions _R_ and _L_ are moving _right_ and _left_ respectively. See the next section.

A Turing machine is called _deterministic_ if for each pair _q_, _x_, there is at most one quadruple &lang;_q_, _x_, _A_, _r_&rang;.

Sometimes, _A_ and _r_ get mixed up. "Confused students should not hesitate to ask for clarification." Presumably, they should also **make sure they get them the right way around** themselves.

####Running a Turing machine

A TM[^TMturing] has an infinite tape,[^Infinitetape] amounting to a list of cells from which letters from the _alphabet_[^thealphabet] can be written. There is also a read/write head which can operate on a single cell at a time. The basic actions are:

[^TMturing]: TM is just short for Turing machine, because mathematicians are lazy. So am I, for that matter, this document aside.

[^Infinitetape]: The tape is infinite in _both directions_.

[^thealphabet]: That is, items from &Sigma;.

* Move the read head one cell to the **left** (_L_)
* Move the read head one cell to the **right** (_R_)
* Write a letter from the alphabet to the current cell, replacing the previous content of the cell.

The quadruple &lang;_q_, _x_, _A_, _r_&rang; is interpreted as meaning "if the machine is in state _q_ and reading _x_, it should preform action _A_ and change to state _q_." Sometimes Turing machines can be considered to be allowed to write and move in the same step (leading to using quintuples instead of quadruples), but this makes no difference and is equivalent.

We're only looking at deterministic[^deTM] Turing machines at the moment. The machine begins at the start state, finds the instruction at that state, reads it, and obeys it. It continues doing this until it reaches the _halt state_ or there is no appropriate instruction.

[^deTM]: See previous section.

####Some notation

&#8469;[^naturalhtml] is the symbol for the _natural numbers_ {0, 1, 2, 3, ...}.[^natsfromzero]

[^naturalhtml]: &#8469; is &amp;#8469; in html, and doesn't have a nice shorthand because the standards people are jerks.

[^natsfromzero]: Note, we start from zero. Mathematicians are not very consistent with this, but in this field that's the choice made.

If _a_ &isin; &Sigma; and n &isin; &#8469;, then _a_<sup><em>n</em></sup> denotes the string of _n_ many <em>a</em>s. For example, 1<sup>5</sup> = 11111. Note that _a_<sup>0</sup> is the empty string.[^expconf] 

[^expconf]: Be very careful to distinguish this from normal exponentiation, despite their being written identically. Context is important.

If &Sigma; is an alphabet, we use &Sigma;<sup>&lowast;</sup> and &Sigma;<sup>&lt;&#8469;</sup> to denote the set of all finite strings made from &Sigma;.[^finstringsfromsum] The former option is computer science notation, while the latter is logic notation. Note that this _includes the empty string_. For the set of all finite binary strings, we write {0, 1}<sup>&lowast;</sup>  or 2<sup>&lt;&#8469;</sup> (becuase 2 = {0, 1} in Von Neumann ordinals). 

[^finstringsfromsum]: All finite sequences whose entries are elements of &Sigma;.

If _M_ is a machine and _&sigma;_ &isin; &Sigma;<sup>&lowast;</sup>, we write _M_(_&sigma;_) to refer to the result of starting _M_ with _&sigma;_ on the tape and the read/write head on the first letter of _&sigma;_. We write _M_(_&sigma;_)&uarr; to indicate that when run in this fashion _M_ never halts; we also say that _M_(_&sigma;_) _diverges_. Similarly, _M_(_&sigma;_)&darr; means that _M_ eventually halts; and by extention that _M_(_&sigma;_) _converges_. If _M_(_&sigma;_)&darr; and _r_ is what is on the tape when the machine halts, then we write _M_(_&sigma;_) = _r_ or sometimes _M_(_&sigma;_)&darr; = _r_.

####Partial functions

A function &fnof; : _A_ &rarr; _B_ is a rule for taking elements of _A_ to elements of _B_, _such that no element of A is taken to more than one element of B_. This would be formally written &fnof; &sub; {(_a_, _b_) | _a_ &isin; _A_ & _b_ &isin; _B_}[^funcdef] with the property that for every _a_ &isin; _A_, there is exactly one _b_ &isin; _B_ with (_a_, _b_) &isin; &fnof;. &fnof;(_a_) = _b_ means that (_a_, _b_) &isin; &fnof;.

[^funcdef]: Or "&fnof; is the subset (_a_, _b_) such that _a_ is in _A_ and _b_ is in _B_."

A _partial function_ &fnof; : _A_ &rarr; _B_ is a function &fnof; : _D_ &rarr; _B_ for some _D_ &sube; _A_. _D_ is the _domain_ of &fnof;, or dom(&fnof;). &fnof;(_a_)&uarr; means that _a_ &notin; dom(&fnof;), and &fnof;(_a_)&darr; means that _a_ &isin; dom(&fnof;). If _D_ is all of _A_, then &fnof; is _total_. _D_ is also allowed to be the empty set.

####Turing machines and functions

**Definition:** A Turing machine _M_ _simulates_ a partial function &fnof; : &Sigma;<sup>&lowast;</sup> &rarr; &Sigma;&lowast;[^notemistake] if

[^notemistake]: This might be a minor mistake in the notes. I'm not sure what the difference in asterix position means, if anything.

1. &forall;&sigma; &isin; dom(&fnof;), _M_(_&sigma;_)&darr; = &fnof;(_&sigma;_); and
2. &forall;&sigma; &notin; dom(&fnof;), _M_(_&sigma;_)&uarr;.[^TMfuncexp]

[^TMfuncexp]: In plainer English, in every case that &sigma; (i.e. the input) is within the domain of &fnof;, _M_ (the machine) halts and produces the same output as &fnof;. Meanwhile, in every case that &sigma; is _not_ within the domain of the function, the machine does not halt.

We assume for convienience that if _M_ halts, it stops with its head on the leftmost element of the output (which need not be the same as the leftmost element of the input, where it starts). This is, among other things, to allow functions to act on the output of other functions, and is allowed because it is fairly easy to modify any machine that might not inherently have that property to one that does.[^convenientmodification]

[^convenientmodification]: Simply replace the halt state with a new state for which all relevant instructions cause the head to shift left if not blank and stay in that state. The instruction for blank, meanwhile, would be to shift right and change to the new halt state.

For example, &fnof;(1<sup><em>n</em></sup>) = 1<sup>2<em>n</em></sup> (remember, this notation means "a string of _n_ 1's").

Let &Sigma; = {0, 1, _B_} and _Q_ = {_s_, _q_<sub>1</sub>, _q_<sub>2</sub>, _q_<sub>3</sub>, _h_}. Our list of instructions &delta; is:

* &lang;_s_, _B_, _B_, _h_&rang; &mdash; i.e. if _&sigma;_ is the empty set, halt (and return sigma).
* &lang;_s_, 1, 0, _q_<sub>1</sub>&rang;
* &lang;_q_<sub>1</sub>, 0, _L_,   _q_<sub>1</sub>&rang;
* &lang;_q_<sub>1</sub>, _B_, 0,   _q_<sub>2</sub>&rang;
* &lang;_q_<sub>2</sub>, 0, _R_,   _q_<sub>2</sub>&rang;
* &lang;_q_<sub>2</sub>, 1, 0,     _q_<sub>1</sub>&rang;
* &lang;_q_<sub>2</sub>, _B_, _L_, _q_<sub>3</sub>&rang;
* &lang;_q_<sub>3</sub>, 0, 1,     _q_<sub>3</sub>&rang;
* &lang;_q_<sub>3</sub>, 1, _L_,   _q_<sub>3</sub>&rang;
* &lang;_q_<sub>3</sub>, _B_, _R_, _h_&rang;

This is a very complicated and annoying thing to have to write out, however, so a diagram can be used to show it graphically, which I should probably draw at some point (see the original notes page, it's drawn there already). This machine works by converting 1's to 0's and adding extra 0's on the left, before converting them all to 1's and exiting.

####Composition of machines

To further remove the tedium of making turing machines, you can make new machines by fitting ones you have already created together. One way to do this is composing them together, to make &fnof;(_g_(_&sigma;_)), also expressed as &fnof; &#x2218; _g_.

**Lemma:** if &fnof; and _g_ are partial Turing complete, then so is &fnof; &#x2218; _g_.

###Multi-tape Turing machines

The previous definition of Turing machines had only one tape, used for input, output, and "scratch work." It would be more convenient if multiple tapes could be used to divide these functions between them. We now define a new notion of machine that allows this.

**Definition:** A _multi-tape Turing machine with n work tapes_ is a triple (&Sigma;, _Q_, _&delta;_).

1. &Sigma; and _Q_ are exactly the same as for single tape Turing machines.
2. _&delta;_ is again a finite set of instructions. Each element of _&delta;_ must be a tuple &lang;_q_, _x_<sub>1</sub>, &hellip;, _x_<sub><em>n</em>+2</sub>, _A_<sub>1</sub>, _A_<sub>2</sub>, &hellip;, _A_<sub><em>n</em>+2</sub>, _r_&rang;, where _q_, _r_ &isin; Q, _x_<sub>1</sub>, &hellip;, _x_<sub><em>n</em>+2</sub> &isin; &Sigma; and _A_<sub><em>i</em></sub> &isin; &Sigma; &cup; {_R_, _L_} for each _i_.

The reason for the _n + 2_ is that a multi-tape Turing machine has a tape for input, a tape for output, and _n_ extra tapes for doing work on. Each tape has an independent head. An instruction &lang;_q_, _x_<sub>1</sub>, &hellip;, _x_<sub><em>n</em>+2</sub>, _A_<sub>1</sub>, _A_<sub>2</sub>, &hellip;, _A_<sub><em>n</em>+2</sub>, _r_&rang; means "if I'm at state _q_ and head _i_ is seeing _x_<sub><em>i</em></sub> for each _i_, then I should do A<sub><em>i</em></sub> at head _i_ for each _i_." Head 1 is the head on the input tape; head 2 is on the output tape; the remaining _n_ heads are on the work tapes.

A multi-tape machine still has one state at a time, and one alphabet, but must have instructions that take into account all tapes. The graphical representations of multi-tape Turing machines are more complicated. Multi-tape machines are no more powerful than single-tape machines, though easier to use perhaps.

**Lemma:** Every partial function that can be simulated by a multi-tape Turing machine can be simulated by a single-tape machine.

To do this, the number of states and number of symbols in the alphabet must be expanded vastly. Suppose _n_ on the multi-tape machine is 1, i.e. three tapes, and the symbols are {0, 1}. The symbols of the new machine will have to incorporate the information in the symbols on all three tapes at once. E.g. if the tapes say 0, 1, 0, then "010" would be included in the symbol (remember that B must also be an option here). The information storing the location of the heads is also required, storing whether or not the head from that particular tape is present. Further, all the original symbols (including B) must be acceptable. In this case we wind up with 27 * 8 + 3 symbols required.

The head needs to scan through the single tape to find out where the heads on the multi-tape machine would be. It needs states to remember this information. You therefore require:

* A state that remembers that _M_ is in state _q_, and we need to gather information, and we don't know head 1, head 2, or head 3
* A state that remembers &hellip; don't know head 1 or 2 but know 3 is reading 0
* And so on like that&hellip;
* Then we need a state that remembers that _M_ is in state _r_ and that we need to do xyz for the heads
* And more states like that one

A lot of states carefully remembering where you are when changing things, making it messy.

At the very start we simply have the input, so the first step is to simply transform it into the multi-tape simulating state. At first all the other tapes would be blank, so easy to run through and convert into the form we expect, and blank tapes can have their head initially arbitrarily assigned to the first cell. If we have an instruction to move a head beyond the bounds of the region that has been set up at the start like this, we need to be able to convert that cell.

At the point where we would reach the halt state we need to run through and convert everything into the value that would be on the output tape. The steps then are:

1. Prepare the input into the expected format
2. Scan from left to right, collecting information
3. Pass from right to left, making changes
4. Repeat this until the original machine _M_ would halt
5. Create the output
6. Halt

**Example:** &fnof;(1<sup><em>n</em></sup>) &rarr; 1<sup><em>n</em><sup>2</sup></sup> is partial computable.

1. Start by copying the input to a work tape&mdash;a state can be used to remember that this is what is being done
2. Delete one 1 from the input
3. Add a copy of the worktape to the output
4. Repeat until the input is fully gone
5. Halt

According to the lemma, if you can do it with the multi-tape machine you can do this with a single-tape machine. This kind of simplified way of writing it out will be used alot&mdash;so long as you are confident that it _can_ be written out it's ok.

####Numbers as strings

These machines were used on strings, representing numbers in uniary. Computability theory doesn't care about the form of the inputs, but complexity theory prefers binary.

1. Unary: _n_ is represented by 1<sup><em>n</em></sup>
2. Binary: _b_<sub>k</sub>b<sub>k-1</sub>&hellip;b<sub>0</sub> represents _n_ (in binary). There are computable functions that convert unary to binary, so it's fine to use it.

####Simulating the addition function

With functions of more than one variable, we can:

1. Use more than one input tape&mdash;one tape per input variable
2. Use a single input tape with some kind of separator, e.g. 00101;10100 means inputs are 00101 (nine) and 10100 (twenty). The separator character must merely be something not easily confused with the input

These are easily interconvertable, so either one is good. We'll use multiple input tapes for convenience.

To simulate addition on little-endian binary integers we will need to first shift our input heads all the way to the right of each input. Then we move across to the left, adding as we would in primary school (but with binary numbers). We will need states to record whether or not there is a carry bit.

* 0 + 0 and no carry bit &rarr; 0 and no carry bit
* 0 + 1 and no carry bit &rarr; 1 and no carry bit
* 1 + 0 and no carry bit &rarr; 1 and no carry bit
* 1 + 1 and no carry bit &rarr; 0 and a carry bit
* 0 + 0 and a carry bit &rarr; 1 and no carry bit
* &hellip;

The instructions you will need are:

* &lang;_s_, 1, 1, _B_, _R_, _R_, _B_, _s_&rang;
* &lang;_s_, 0, 0, _B_, _R_, _R_, _B_, _s_&rang;
* &lang;_s_, 1, 0, _B_, _R_, _R_, _B_, _s_&rang;
* &lang;_s_, 0, 1, _B_, _R_, _R_, _B_, _s_&rang;
* &lang;_s_, 0, _B_, _B_, _R_, _L_, _B_, _q1_&rang;
* &lang;_s_, 1, _B_, _B_, _R_, _L_, _B_, _q1_&rang;
* &lang;_s_, _B_, 1, _B_, _L_, _R_, _B_, _q2_&rang;
* &lang;_s_, _B_, 0, _B_, _L_, _R_, _B_, _q2_&rang;
* &lang;_s_, _B_, _B_, _B_, _L_, _L_, _B_, _q3_&rang;
* &lang;_q1_, 0, 0, _B_, _R_, 0, _B_, _q1_&rang;
* &lang;_q1_, 1, 0, _B_, _R_, 0, _B_, _q1_&rang;
* &lang;_q1_, 0, 1, _B_, _R_, 1, _B_, _q1_&rang;
* &lang;_q1_, 1, 1, _B_, _R_, 1, _B_, _q1_&rang;
* &lang;_q1_, _B_, 0, _B_, _L_, 0, _B_, _q3_&rang;
* &lang;_q1_, _B_, 1, _B_, _L_, 1, _B_, _q3_&rang;
* (repeat last six for q2)

_q3_ here will be the no carry bit state, _q4_ here will be the carry bit state.

* &lang;_q3_, 0, 0, _B_, 0, 0, 0, _q3_&rang;
* &lang;_q3_, 0, 0, 0, _L_, _L_, _L_, _q3_&rang;
* &lang;_q3_, 0, 1, _B_, 0, 1, 1, _q3_&rang;
* &lang;_q3_, 1, 1, _B_, 0, 1, 1, _q4_&rang;
* &hellip;

And then you need to halt at some point:

* &lang;_q3_, _B_, _B_, _B_, _B_, _B_, _R_, _h_&rang;
* &lang;_q1_, _B_, _B_, _B_, _B_, _B_, 1, _h_&rang;

###A universal Turing machine

**Notation:** If _M_ is a turing machine, _M_(_&sigma;_, _r_) means that _M_ is run with multiple inputs _&sigma;_ and _r_.

**Notation:** If _&sigma;_ and _&tau;_ are strings _&sigma;&tau;_ is the string made by concactenating _&tau;_ on the end of _&sigma;_ (with no separator). We can extend this to concactenating an arbitrary number of strings.

**Definitions:** A Turing machine _U_ is called _universal_ if for every partial computable function &fnof; : {0, 1}<sup>&lowast;</sup> &rarr; {0, 1}<sup>&lowast;</sup>, there is a _&sigma;_ &isin; {0, 1}<sup>&lowast;</sup> such that for all _&tau;_ &isin; {0, 1}<sup>&lowast;</sup>, _U_(_&sigma;_, _&tau;_) = &fnof;(_&tau;_).  Here, _U_ is like an operating system or a compiler, and _&sigma;_ is like a computer program.

Suppose _M_ is a single-tape TM. A description is a list of instructions &lang;q, x, A, r&rang;. Number &Sigma;<sub>M</sub> &cup; {R, L} from 0 to k. Represent a symbol or instruction by the binary representation of its number. Number Q<sub>M</sub> from 0 to n. Represent each state by the binary representation of each number. 

The start and halt states are special, 0 and 1 are special, R and L are special&mdash;each should get their own number. 0 gets 0, 1 gets 1, R gets 2, L gets 3. Start gets 0, halt gets 1.

To pass _U_ an instruction, you concatenate the binary representations of &lang;q, x, A, r&rang;. But they may not be the same length, so pad them all to be the same length with 0's. Call this length _l_. &sigma;<sub>I</sub> will then be 4<em>l</em> long and be the concatenated four parts of the instruction.

To start the program put _l_ many 1's, followed by a 0, to give the length of _l_ in this case. Then concatenate on each &sigma;<sub>I</sub>.

####Description of _U_(_&sigma;_, _&tau;_)

1. Start by copying 1<sup><em>l</em></sup> onto the first worktape (of many) and deleting 1<sup><em>l</em></sup>0 from the input.
2. The second worktape is devoted to tracking the state of _M_. So write 0<sup><em>l</em></sup> on the second worktape.
3. The input tape _&tau;_ is a string of 1's and 0's, but these are not the same 1's and 0's as _U_ is working with. So we copy _&tau;_ to the third worktape but translate it: every 0 is replaced by 0<sup><em>l</em></sup>, every 1 by 0<sup><em>l</em> - 1</sup>1.
4. Move the head of the third worktape to the start.

Now repeat:

1. Search _&sigma;_ for an instruction matching _M_'s state and what _M_'s head is reading. We have to search in steps of _l_ (using work tape 1), first matching state _q_ and then the code _x_
2. Obey the instruction
	* change code on third tape or move head
	* Modify the new state on the second tape
3. Check if the second tape holds 0<sup><em>l</em> - 1</sup>1 (i.e. halt)

Once _M_ has halted, we need to build the output. Walk through the third worktape in steps of size _l_, writing a 0 on the output tape for every 0<sup><em>l</em></sup> and a 1 for every 0<sup><em>l</em> - 1</sup>1. Then halt.

**Claim:** _U_ is universal

So for every partial computable &fnof; : {0, 1}<sup>&lowast;</sup> &rarr; {0, 1}<sup>&lowast;</sup> there is a _&sigma;_ &isin; {0, 1}<sup>&lowast;</sup> such that &forall;<em>&tau;</em> &isin; {0, 1}<sup>&lowast;</sup> _U_(_&sigma;_, _&tau;_) = &fnof;(_&tau;_).

Proof: Since &fnof; is partial computable, there is a turing machine _M_ such that _M_(_&tau;_) = &fnof;(_&tau;_). Let _&sigma;_ be the description of _M_ described in the construction. Then by construction, _U_(_&sigma;_, _&tau;_) = _M_(_&tau;_) = &fnof;(_&tau;_).

####A paradox?

Define _g_(_&sigma;_) = 1 if _U_(_&sigma;_, _&tau;_) halts; 0 if otherwise. Is _g_ partial computable?

Suppose _g_ is, in fact, partial computable. Fix _M_ such that &forall;<em>&tau;</em> _M_(_&tau;_) = _g_(_&tau;_). Let _&sigma;_ be the description of _M_. _g_(_&sigma;_) = 1 if and only if _U_ halts, so _M_ halts, so _g_(_&sigma;_) = 0. This is a contradiction.

Therefore _g_ is _not partially computable_.

Define _h_(_&sigma;_) = _U_(_&sigma;_, _&sigma;_)0 &mdash; i.e. concatenate 0 on the end of the output of _U_.

Machine for _h_:

* On input _&sigma;_, copy _&sigma;_ on to the first work tape
* Run _U_, treating the input tape as _U_'s first input and the first worktape as _U_'s second input
* When _U_ halts, write another 0 on the output and end

Fix a single tape machine _N_ for _h_. Let _&sigma;_ be a description for _N_. What is _h_(_&sigma;_).

&forall;<em>&tau;</em>, _U_(_&sigma;_, _&tau;_) = _N_(_&tau;_) = _h_(_&tau;_)

_U_(_&sigma;_, _&sigma;_) = _h_(_&sigma;_) = _U_(_&sigma;_, _&sigma;_)0

This is possible because _U_(_&sigma;_, _&sigma;_) _does not halt_.

###Defining sets recursively

A recursive definition has two parts:

* A list of base elements
* Rule for generating new elements

**Example:** Define _B_ &sube; &#8469; by:

* 6 &isin; _B_
* 8 &isin; _B_
* If x, y &isin; _B_ then x + y &isin; _B_

_B_ = {6, 8, 12, 14, 16, 18, 20, &hellip;}

**Example:** Define _A_ &sube; {0, 1}<sup>&lowast;</sup> by:

* 00 &isin; _A_
* If &sigma; &isin; _A_ then 0&sigma;0 &isin; _A_
* If &sigma; &isin; _A_ then 11&sigma;11 &isin; _A_

_A_ = {00, 0000, 000000, &hellip;, 110011, 1111001111, 01100110, &hellip;}

Returning to the first example, the natural numbers &#8469; also satisfy the rules but this is not what we meant. Properly defined then:

If _C_ is given the recursive definition:

* _a_<sub>0</sub>, &hellip;, _a_<sub>n</sub> &isin; _C_
* If _x_<sub>0</sub>, &hellip;, _x_<sub>k</sub> &isin; _C_ then &Phi;<sub>0</sub>(_x_<sub>0</sub>, &hellip;, _x_<sub>k</sub>), &hellip;, &Phi;<sub>m</sub>(_x_<sub>0</sub>, &hellip;, _x_<sub>k</sub>) &isin; _C_

Then _C_ = &cap; _D_ [_a_<sub>0</sub> &isin; _D_ &cap; (_x_<sub>0</sub>, &hellip;, _x_<sub>k</sub> &isin; _D_ &rArr; &Phi;<sub>0</sub>(_x_<sub>0</sub>, &hellip;, _x_<sub>k</sub>), &hellip;, &Phi;<sub>m</sub>(_x_<sub>0</sub>, &hellip;, _x_<sub>k</sub>) &isin; _D_]

_Or_

Define _C_<sub>0</sub> = {_a_<sub>0</sub>, &hellip;, _a_<sub>n</sub>}

####Structural induction

Suppose I have a set _C_ defined by:

* a<sub>0</sub>, &hellip;, a<sub>k</sub> &isin; _C_
* If x<sub>0</sub>, &hellip;, x<sub>n</sub> is in _C_ then &Phi;(x<sub>0</sub>, &hellip;, x<sub>n</sub>) &isin; _C_

If I have property _P_, and I show that a<sub>0</sub>, &hellip;, a<sub>k</sub> have _P_, and for any x<sub>0</sub>...x<sub>n</sub> with _P_, &Phi;(x<sub>0</sub>, &hellip;, x<sub>n</sub>) has _P_, then all of _C_ has _P_.

**Example:**

_B_:

* 6, 8 &isin; _B_
* &forall; x, y &isin; _B_, x + y &isin; _B_

Claim: all elements of _B_ are even.

Proof: 6 is even, 8 is even, if x, y are even then x + y is even.

**Example:**

_A_:

* 00 &isin; _A_
* 11 &isin; _A_
* &sigma; &isin; _A_ &rArr; 00&sigma;00 &isin; _A_
* &sigma; &isin; _A_ &rArr; 11&sigma;11 &isin; _A_

Claim: all elements of _A_ are palindromes.

###Primitive Recursive Functions

Primitive recursive functions were an early attempt to define what algorithms could do.

Primitive recursive functions are the set _P_ defined by:

* The zero function _Z_(_x_) = 0 is in _P_
* The successor function _S_(_x_) = _x_ + 1 is in _P_
* The predecessor function _P_(_x_) = _x_ &#8760; 1[^monus] is in _P_
* Every projection function _P_<sub>j</sub>(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>) = _x_<sub>j</sub> is in _P_
* Substitution: if _g_(_y_<sub>0</sub>, &hellip;, _y_<sub>_n_ - 1</sub>)&isin; _P_ and &fnof;<sub><em>i</em></sub>(_x_<sub>0</sub>, &hellip;, _x_<sub><em>k</em>-1</sub>) &isin; _P_ for every _i_ &lt; _m_, then _g_(&fnof;<sub>0</sub>(_x_<sub>0</sub>, &hellip;, _x_<sub>k - 1</sub>), &hellip;, &fnof;<sub>m - 1</sub>(_x_<sub>0</sub>, &hellip;, _x_<sub>k - 1</sub>) &isin; _P_.
* Primitive Recursion: If _g_(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em>-1</sub>) &isin; _P_ and _h_(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em>+1</sub>) &isin; _P_ then &fnof; defined by
	* &fnof;(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>, 0) = _g_(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em>-1</sub>)
	* &fnof;(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>, _n_ + 1) = _h_(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>, _n_, &fnof;(_x_<sub>0</sub>,_x_<sub><em>m</em> - 1</sub>, _n_))
	* &hellip;is in _P_

[^monus]: a &#8760; b is a "monus" b, or a - b so long as a > b, otherwise 0.

####Examples

* &fnof;(_x_) = 1
	* &fnof;(_x_) = _S_(_Z_(_x_))
	* So &fnof;(_x_) is primitive recursive by substitution
* _g_(_x_) = _x_ + 2
	* _g_(_x_) = _S_(_S_(_x_))

#####Addition

&fnof;(_x_, _y_) = _x_ + _y_

* Define _g_(_x_): _g_(_x_) needs to have 1 input, and tells you what you get for &fnof;(_x_, 0). Therefore _g_(_x_) = _x_, which is a projection function
* Define _h_(_x_, _y_, _z_): _h_(_x_, _y_, _z_) has 3 inputs to allow &fnof; to have two. Therefore _h_(_x_, _y_, _z_) = _S_(_P_<sub>2</sub>(_x_, _y_, _z_)) = _S_(_z_) = _z_ + 1
* So:
	* &fnof;(_x_, 0) = _g_(_x_) = _x_
	* &fnof;(_x_, _n_ + 1) = &fnof;(_x_, _n_) + 1

**Claim:** This function does addition, i.e. &fnof;(_x_, _y_) = _x_ + _y_

Proof: By induction on _y_:

_y_ = 0, &fnof;(_x_, 0) = _x_ = _x_ + 0

&fnof;(_x_, _y_ + 1) = &fnof;(_x_, _y_) + 1 = (_x_ + _y_) + 1 = _x_ + (_y_ + 1)

Addition is therefore repetitively applying the successor function.

#####Multiplication

&fnof;(_x_, _y_) = _xy_

_g_(_x_) = _Z_(_x_) = 0

_h_(_x_, _y_, _z_) = _x_ + _z_ = +(_P_<sub>0</sub>(_x_, _y_, _z_), _P_<sub>2</sub>(_x_, _y_, _z_))

* &fnof;(_x_, 0) = _g_(_x_) = 0
* &fnof;(_x_, _n_ + 1) = _h_(_x_, _n_, &fnof;(_x_, _n_)) = _x_ + &fnof;(_x_, _n_)

#####Sum of _i_ from 0 to _x_

I.e &fnof;(_x_) = (_x_(_x_+1))/2

Note that primitive recursive functions aren't really designed to have just one input, so we need a helper function &fnof;<sub>1</sub>(_u_, _x_) = _x_(_x_ + 1)/2. We can use substitution to show that if &fnof;<sub>1</sub> is primitive recursive, so is &fnof;.

* &fnof;<sub>1</sub>(_u_, 0) = 0, so _g_(_u_) = 0
* &fnof;<sub>1</sub>(_u_, _n_ + 1) = &fnof;<sub>1</sub>(_u_, _n_) + (_n_ + 1)
* _h_(_u_, _n_, _z_) = _z_ + _n_ + 1 = _S_(+(_P_<sub>2</sub>(_u_, _n_, _z_), _P_<sub>1</sub>(_u_, _n_, _z_)))

So let &fnof;<sub>1</sub> be the function defined by primitive recursive.[^PRnotebreakdown]

[^PRnotebreakdown]: At around this point I don't really know what is going on in the notes.

Let &fnof;(_x_) = &fnof;<sub>1</sub>(_x_, _x_) = &fnof;<sub>1</sub>(_P_<sub>0</sub>(_x_), _P_<sub>0</sub>(_x_))

NB: first input is arbitrary and can be "forgotten"

####Lemma: all primitive recursive functions are total

**Proof:** 

* _Z_(_x_) = 0, _S_(_x_) = _x_ + 1, _P_(_x_) = _x_ - 1, _P_<sub>j</sub>(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>) = _x_<sub>j</sub> are all total.
* Substitution of total functions makes total functions.
* Primitive recursion: suppose _g_(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>) and _g_(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>, _x_<sub><em>m</em></sub>, _x_<sub><em>m</em> + 1</sub>) are total. Let &fnof; be given by &fnof;(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>, 0) = _g_(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>), &fnof;(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>, _n_ + 1) = _h_(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>, _n_, &fnof;(_x_<sub>0</sub>, &hellip;, _x_<sub><em>n</em> - 1</sub>, _n_))

**Claim:** &fnof; is total

**Proof:** induction on the <em>m</em>th input

* If _x_<sub>m</sub> = 0, &fnof;(_x_<sub>0</sub>, &hellip;, _x_<sub>m</sub>) = _g_(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>)
* Assume &fnof;(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em> - 1</sub>, n) is defined
* &fnof;(_x_<sub>0</sub>, _x_<sub><em>m</em> - 1</sub>, _n_ + 1) = _h_&hellip;
* So this is defined

So &fnof; is total. So by structural induction, all elements of _P_ are total.

This means that primitive recursive functions are not good models for algorithms&mdash;Turing machines could model partial functions too!

####Theorem: Every primitive recursive function is computable

Not all computable functions are primitive recursive, but all primitive recursive functions are computable. We need to show that all primitive recursive functions can be modelled by Turing machines.[^turinput] That is to say, if &fnof; is a primitive recursive function, there is a TM _M_ such that _M_(b(n)) = b(&fnof;(n)) where b(n) is the biinary representation of n.

[^turinput]: The machine takes an input in binary and outputs in binary.

This is proved by structural induction. For the first few kinds of functions,[^prbc] two of the examples were on the assignment. (The other examples need to be drawn.)

[^prbc]: Specifically, the base cases.

#####Substitution

Suppose &fnof;(_y_<sub>0</sub>, &hellip;, _y_<sub>m-1</sub>), _g_<sub>i</sub>(_x_<sub>0</sub>, &hellip;, _x_<sub><em>k</em>-1</sub>) for _i_ &lt; _m_ are all primitive recursive and computable. So let <em>M</em><sub>&fnof;</sub>, <em>M</em><sub>g<sub>0</sub></sub>, &hellip;, _M_<sub>g<sub><em>m</em>-1</sub></sub> be machines for them. We want _N_, a machine for &fnof;(_g_<sub>0</sub>(_x_<sub>0</sub>, &hellip;, _x_<sub><em>k</em>-1</sub>), &hellip;, _g_<sub><em>m</em>-1</sub>(_x_<sub>0</sub>, &hellip;, _x_<sub><em>k</em>-1</sub>)).

N: repeat the following for _i_ = 0 to _m_ - 1

1. Copy inputs 0 through _k_ - 1 onto worktapes 0 through _k_ - 1
2. Run M<sub>g<sub><em>i</em></sub></sub> on these worktapes
3. Copy the output to worktape _k_ + _i_
4. Clear the output and worktapes 0 to _k_ - 1

Now I have _g_<sub>i</sub>(x<sub>0</sub>, &hellip;, x<sub>k-1</sub>) on worktape _k_ + _i_ for each _i_ &lt; _m_. Run _M_&fnof; on these worktapes. Halt.

#####Primitive recursion

Want _N_ for &fnof;.

1. Write 0 on worktape _m_ + 2 (this is _n_)
2. Copy inputs 0 through _m_-1 to worktapes 0 through _m_-1. Run _M_<sub><em>g</em></sub> on these
3. If input m matches worktape _m_ + 2, halt
4. Otherwise, copy the output tape to work tape _m_ + 1, delete output tape, add one to the number on work tape _m_ + 2 (that is, _n_) and copy work tape _m_ + 2 onto work tape _m_.
5. Copy inputs 0 through _m_ - 1 onto work tapes 0 through _m_ - 1
6. Run _M_<sub><em>h</em></sub> on work tapes 0 through _m_ + 1
7. Return to step 3

###Sets and relations

For a set _A_, the characteristic function is &Chi;<sub><em>A</em></sub>(_x_) = {1, if _x_ &isin; _A_; 2, if _x_ &notin; _A_}. For a relation _R_(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em>-1</sub>) the characteristic function &Chi;<sub><em>R</em></sub>(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em>-1</sub>) = {1 if _R_(_x_<sub>0</sub>, &hellip;, _x_<sub><em>m</em>-1</sub>) holds; 0 otherwise).

A set or relation is computable if it's characteristic function is; similarly a set or relation is primitive recursive if it's characteristic function is.

####More primitive recursive functions

For the assignment, prove (in full) that _a_ &#8760; _b_ is primitive recursive.

From there, you can start composing known primitive recursive functions together in valid ways to prove other primitive recursive functions, without going into the gory details. e.g. min(_a_, _b_) = _b_ &#8760; (_b_ &#8760; _a_); max(_a_,_b_) = (_a_ + _b_) &#8760; min(_a_, _b_); sg(_a_) = min(1, _a_) = min(_S_(_Z_(_a_)), _a_).

**Lemma:** If _R_ and _S_ are primitively recursive relations, then the following are primitive recursive:

1. _R_ &and; _S_
2. _R_ &or; _S_
3. &not;R

Proof:

1. &Chi;<sub><em>R&and;S</em></sub> = &Chi;<sub><em>R</em></sub> &dot; &Chi;<sub><em>S</em></sub>
2. Exercise
3. &Chi;&not;R = 1 &#8760; R

**Lemma:** If R(x0, &hellip;, xm, y) is a primitive recursive relation, then T(x0, &hellip;, xm, z) = &forall; y &le; z R(x0, &hellip;, y) is primitive recursive

Proof: &Chi;T(x0, &hellip;, xm, z) = sg ( &Sigma;<sub>y &le; z</sub>(&Chi;R(x0, &hellip;, xm, y))

####Bounded search

Definition: if R(x0, &hellip;, xm-1, y) is a relation, &fnof;(x0, &hellip;, xm-1, z) = &mu;y&le;z R(x0, &hellip;, xm-1, y) is the function "least y less than or equal to z such that R(x0, &hellip;, xm-1, y) holds." If there is no such y, &fnof; outputs 0&mdash;but 0 could also be the least value! You often need to check if the returned value is valid.

Lemma: if R(x0, &hellip;, xm-1, y) is primitive recursive, then so is &mu;y&le;zR(x0, &hellip;, xm-1, y)

Proof: Let S(x0, &hellip;.... Copy from notes later

###Partial recursive functions

The class of partial recursive functions is the set _C_ defined recursively as follows:

1. The zero function is in _C_
2. The successor function is in _C_
3. The predecessor function is in _C_
4. The projection function is in _C_
5. If two functions are in _C_, the function created by substitution is in _C_
6. If two functions are in _C_, the function created by primitive recursion is in _C_
7. (Unbounded search) If g(x0, &hellip;, xm-1, y) &isin; _C_, then the partial function &fnof; defined below is in _C_
	* &fnof;(x0, &hellip;, xm-1) = &mu;y[g(x0, &hellip;, xm-1)&darr; = 1 &and; (&forall;z&le;y)g(x0, &hellip;, xm-1,z)&darr;].
	* This means &fnof; outputs the smallest y that makes the right side true. If there is no such y, then &fnof;&uarr;.

Note that 1 through 6 are the same rules as for the primitive recursive functions&mdash;every primitive recursive function is partial recursive.

Theorem: The partial recursive functions are precisely the partial computable functions.

* &rArr; is already shown
* &lArr; is in the notes but not examinable

###Church's Thesis

_Any reasonable model of computation gives precisely the same class of functions: the partial computable functions. In fact, these are precisely the functions described by a process which can be done by a human with paper and pencil._

This is not a mathematical theorem: "reasonable model" isn't exactly a mathematical property. But the evidence seems to suggest it&mdash;we always end up back at the same set of functions. We'll be using this idea from now on, not taking the time to check that a algorithm that intuitively seems like something a human can do is actually computable.

**Definition:** A _good numbering_ of computable functions is a list &phi;0, &phi;1, &hellip; of functions from N to N such that:

1. For every computable function there is an _e_ with &fnof; = &phi;e.
2. There is a computable function that sends the description of a TM and outputs an _e_ such that &Rho;e is the function given by the Turing machine.
3. There is a computable h(x, y) such that &forall;y h(e, y) = &Rho;e(y)
4. (Padding) There is a computable _g_ such that _g_ is total, &forall;x g(x) > x and &forall;e &Rho;e = &Rho;<sub>g(e)</sub>

**Lemma:** There is a good numbering.

Proof: Remember our Universal Turing Machine _U_. Define &Rho;e(y) = U(b(e), y), where b(e) is the binary expansion of _e_. Check:

1. If &fnof; is computable, fix M a Turing machine giving &fnof;. M has a description &sigma;. &sigma; = b(e) for some e. So &Rho;e(y) = U(b(e), y) = U(&sigma;, y) = M(y) = &fnof;(y).
2. Must send &sigma; to _e_ such that b(e) = &sigma;. _e_ = &Sigma; <sub>i = 0 to |&sigma;| - 1</sub> 2<sup>|&sigma;| - i - 1</sup>&sigma;(i).[^lensigma]
3. Let h(e, y) = U(b(e), y). _h_ is computable because it is described by _U_ (and _b_, but _b_ is computable by assignment)
4. Given &sigma;, a description, it is easier to make &tau; which is a description for the same machine but with extra useless states. &tau; represents a larger number than &sigma;. So let g(e) = n(&tau;). &tau; is made from &sigma; = b(e).

[^lensigma]: |&sigma;| means the length of the string &sigma;.

There are many ways to make good numberings&mdash;the details are not important. We need one, we assume we picked one, but it doesn't matter which one.

**Lemma:** Every finite set is computable.

Proof: Suppose our set is {a0, &hellip;, ak-1} = _A_. Consider the following alogarythm for &Chi;A(x):

> 1) Check if x = a<sub>0</sub>. If so, output 1 and halt.
>
> 2) Check if <em>x = x<sub>1</sub></em>, &hellip;
>
> &hellip;
>
> k) Check if x = a<sub>k-1</sub>, &hellip;
>
> k + 1) Output 0. Halt.

This can't be done with infinite sets, though some infinite sets (the set of primes, the set of even numbers) are computable.

**Lemma:** Suppose _A_ and _B_ are computable sets. Then so are:

* _A_ &cup; _B_
* _A_ &cap; _B_
* _A_ - _B_

Proof: For <em>A &cup; B</em>:

1. Run <em>&Chi;<sub>A</sub>(x)</em>. If it is 1, output 1 and halt.
2. Run <em>&Chi;<sub>B</sub>(x)</em>, If it is&hellip;
3. Output 0 and halt.

Can also be done with primitive recursive functions, but this is an easy algorithm. The same basic principle works for 2 and 3.

**Definition:** A set _A_ is _computably enumerable_ (c.e.) if there is an e with <em>A = dom(&Rho;<sub>e</sub>)</em>.

**Lemma:** The following are equivalent:

1. _A_ is c.e.
2. _A_ is the range of a partial computable function.
3. _A_ is enumerated by an algorithm.[^aenum]

[^aenum]: _A_ can be infinite, finite, or empty. The algorithm never halts, merely specifying the numbers as it goes. It doesn't have to go in order, and can have repeats.

Proof: 

* (1) &rArr; (3): If _A_ is c.e. by definition there is e with <em>A = dom(&Rho;<sub>e</sub>)</em>. Consider this algorithm:

    1. Let _t_ = 0
    2. Run <em>&Rho;<sub>e</sub></em> on every input _x &le; t_ for _t_ steps each.
    3. For each _x &le; t_ with <em>&Rho;<sub>e</sub>(x)</em> halting within _t_ steps put _x_ on the list
    4. Increase _t_ by 1
    5. Return to step 2

    This uses dovetailing: i.e. trying to run everything, even machines that may not halt, at the same time.

* (3) &rArr; (2): Suppose _A_ is enumerated by an algorithm. Define <em>&fnof;(i) =</em> the <em>i</em>th entry on the line.
* (2) &rArr; (1): Suppose <em>A = range(&Rho;<sub>e</sub>)</em>. Consider _&fnof;(z)_ given by the following algorithm:
    1. Let _t_ = 0
    2. Run <em>&Rho;<sub>e</sub></em> on every input _x &le; t_ for _t_ steps
    3. If there is <em>x &le; t</em> with <em>&Rho;<sub>e</sub>(x) = z</em>, halt and output 1
    4. Otherwise increase _t_ and return to step 2

**Lemma:** Every computable set is computable enumerable.

Proof: Suppose _A_ is computable. So &Chi;<sub>A</sub> is computable. Consider g(x) given by this algorythm:

1. Compute <em>&Chi;<sub>A</sub>(x)</em>
2. If <em>&Chi;<sub>A</sub>(x) = 1</em>, halt and output 1
3. Otherwise, enter an infinite loop

Things not in _A_ will not be in the range of g(x):

* If x &isin; A, &Chi;A(x)&darr; = 1, so g(x) = 1, so x &isin; dom(g).
* If x &nin; A, &Chi;A(x)&darr; = 0, so g(x)&uarr;, so x &nin; dom(g)

Theorem: TFAE:[^TFAE]

[^TFAE]: The following are equivalent.

1. A is computable
2. A and N - A are both c.e

Proof: 

* (1)&rArr;(2): Suppose A is computable. The &Chi;N-A = 1 - &Chi;A. So N-A is computable. By the lemma, A and N-A are c.e.
* (2)&rArr;(2): Suppose A os tje dp,aom pf &fnof;, and N - A is the domain of g, where f and g are computable. Here is an alogarythm for &Chi;A(x):
	1. Set _t_ = 0
	2. Run f(x) for t steps. If f(x) halts within t steps, halt and output 1
	3. Run g(x) for t steps. If g(x) halts within t steps, halt and output 0
	4. Add 1 to t and return to step 2

    Eventually one must halt, and we will know the correct answer: 

    * If x &isin; A, then there is a t such that f(x) halts in t steps. Also, g(x) never halts. So our algorithm eventually outputs 1
    * If x &nin; A, same but with f and g reversed.

Definition: A computable function &fnof; is called extendible if there is a total computable g with &fnof;(x) = g(x) for all x &isin; dom(&fnof;). g(x) "fills in the holes" of &fnof; without changing the results within the domain.

Aside: Consider f(x) = 1/x. This is a continuous function on its domain, but it cannot be extended into a total continuous function&mdash;no matter the value of f(0) it will not be continuous. On the other hand, h(x) = (x^2 - 1)/(x - 1) has a hole at x = 1. Declaring h(1) = 2 makes it a continuous total function. Here, continuous is analogous to computability.

Claim: f(x) = &Rho;x(x) + 1 is partial computable but not extendable.

Proof: f(x) = U(x, x) + 1 shows that f is partial computable. Now, suppose f were extendable. Fix total computable g witnessing this. So g = &Rho;e for some e (every computable function is on the list). e is either in the domain of f or it is not.

* If so, g(e) = f(e) = &Rho;e(e) + 1 = g(e) + 1 &mdash; a contradiction
* If not, &Rho;e(e) must diverge. So g(e) diverges. But g is supposed to be total&mdash;a contradiction

By contradiction, f is not extendible.

Definition: (The halting set)

Let K = dom(f) for the f of the claim. So K is c.e.

Claim: K is not computable

Proof: Suppose K were computable: Consider g(x) given by:

1. First check if x &isin; K
2. If it is, compute f(x) and output the result. Halt
3. If not, output 0 and halt

But _this g extends f_, and g is total. This is a contradiction, as we know that f is not extendible.

Alternate proof: Suppose K were computable. Notice K = {x : &Rho;x(x)&darr;}.[^traddef] Consider d(x) given by:

[^traddef]: This is the traditional definition of K. The definition of f we've been using is non-standard.

1. First check if x &isin; K
2. If not, output 1, halt (the output is not what is important)
3. If so, enter an infinite loop

So x &isin; dom(d) is equivalent to x &nis; K.

There is some i with d = &Rho;<sub>i</sub>. Is i &isin; K? If so, i &nisn; dom(d) so d(i)&uarr;. So &Rho;i(i)&uarr;. So i &nisn; K. If not, i & isin; dom(d) so d(i)&darr;. So &Rho;i(i)&darr;. So i &isin; K. These are contradictions, so K is not computable.

Example: A = {p<sub>i</sub> | i &isin; K}

A is c.e., because it is the domain of h(x) given by:

1. Check if x is prime. If not, enter an infinite loop
2. If so, find i with x = p<sub>i</sub>
3. Now run f(i) (this is the same f as previous)
4. If f(i) ever halts, output 0

x &isin; dom(h) if and only if x = p<sub>i</sub> and i &isin; dom(f) = K. A = dom(h), so A is c.e. If A was computable, it could be used to compute K.

Suppose A were computalbe:

Consider this alogarythm for &Chi;K(x):

1. Compute p<sub>x</sub>
2. Check if px &isin; A
3. If so, output 1 and halt
4. If not, output 0 and halt

Contradiction, so A is not computable.

There are other c.e. sets that are not computable that aren't based on K, but they take a lot of work to make.

###Pairing and numbering for functions of multiple inputs

Definition: A _pairing function_ is a bijection &fnof; : &#8469; × &#8469; &rarr; &#8469;

Lemma: There is a computable pairing function with a computable inverse

Proof: there are many, here is one example:

&fnof;(0,0) = 0, and then diagonal from bottom right to top left. x + y is a constant on each diagonal, and is the number of complete diagonals that have already passed. The numbers along the bottom are the triangular numbers.

The explicit description of the function is: &fnof;(x, y) = ½(x + y)(x + y + 1) + y

Algorithm for &fnof;<sub>x</sub><sup>-1</sup>(z) and &fnof;<sub>y</sub><sup>-1</sup>(z):

1. Set i = 0 and k = z
2. If i ≥ k, then &fnof;<sub>y</sub>(z) = k - i and &fnof;<sub>x</sub>(z) = i - &fnof;<sub>y</sub>(z)
3. Otherwise, replace k with k - i, replace i with i + 1, return to (2)

Convention: &lt;n, k&gt; will denote the pairing function. &phi;e<sup>[2]</sup>(x, y) = &phi;e(&lt;x, y&gt;)

###The _s-m-n_ theorem

If you have a computable function &fnof;(x, y) you can think of it as a grid, with &fnof;(0,0) in the bottom left and x along the bottom, etc. Each _x_ determines a a column, and that function is a function of one variable (y).

####The recursion theorem

For any total computable function &fnof;, there is an _n_ with &phi;<sub>n</sub> = &phi;<sub>&fnof;(n)</sub>. This doesn't mean that &fnof;(n) = n.

Proof: Note that the lecturer doesn't actually understand _why_ this proof works, only that it does.

Define h(u, x) = {&phi;<sub>&phi;(u)</sub>(x), if &phi;<sub>u</sub>(u) &darr;; &uarr; otherwise}

Algorythm for h(u, x):

1. Run U(u, u)
2. If it converges, call the output k. Run U(k, x) (&phi;<sub>k</sub>(x))
3. If that converges, that's the output

By the s-m-n theorem, there is a total computable function _s_ with &phi;<sub>s(u)</sub>(x) = h(u, x). Now consider &fnof; · s. &fnof; · s = &phi;<sub>v</sub> for some v. Let n = s(v). &phi;(v)&darr;, so h(v, x) = &phi;<sub>&phi;(v)</sub>(x). &phi;<sub>n</sub>(x) = &phi;<sub>s(v)</sub>(x) = h(v, x) = &phi;<sub>&phi;<sub>v</sub>(v)</sub>(x) = &phi;<sub>&fnof;(s(v))</sub>(x) = &phi;<sub>&fnof;(n)</sub>(x) □.

Example: Let h(x, y) = {x, if y = x; &uarr; otherwise}

Now, apply the s-m-n theorem to get a total computable &fnof; with &phi;<sub>&fnof;(x)</sub>(y) = h(x, y). By the recusion theorem there is an n with &phi;<sub>n</sub> = &phi;<sub>&fnof;(n)</sub>. So:

&phi;<sub>n</sub>(y) = {n, if y = n, &uarr; otherwise}

dom(&phi;<sub>n</sub>) = {n}.

This can also be used to prove that quines must exist, i.e. &phi;<sub>n</sub>(y) = n (the costant _n_ function).

###Rice's theorem

Our numbering has lots of repeats, but it turns out that it's not possible to choose a better numbering system that ignores the repeats. It's very hard to determine that two computable functions are the same function.

Definition: A set A &sube; &#8469; is an index set of it has the property that for all i, j &isin; &#8469;, if &phi;i = &phi;j, then i &isin; A &rArr; i &isin; A.

Example: The following are index sets:

* &#8469;
* the empty set
* Tot = {i | &phi;i is total}
* Inf = {i | dom(&phi;i) is infinite}
* Ax = {i | &phi;i = &phi;x}

Rice's theorem: The only computable index sets are &#8469; and the empty set.

Proof: Suppose A were a computable index set other than &#8469; and the empty set:

Plan: fix e<sub>0</sub> &nin; A and e<sub>1</sub> &isin; A. Build n such that &phi;n(x) = {&phi;e0(x), if n &isin; A; &phi;e1(x), if n &nin; A}

Then n being in A implies that &phi;n = &phi;e0 withihc implies that n is not in A, and the reverse is also true. This is a contradiction; it remains to find n.

h(x, y) = {&phi;e0(y), if x &isin; A; &phi;e1(y) if x &nin; A}

Algorithm for h:

1. Run &Chi;A(x)
2. If &Chi;A(x) = 1, run and output &phi;e0(y)
3. Else, run and output &phi;e1(y)

By the s-m-n theorem there is a total computable ss swith &phi;s(x)(y) = h(x, y). By the recursion theorem, there is an n with &phi;n(y) = &phi;s(n)(y). This is the n we wanted.

&phi;n(y) = &phi;s(n)(y) = h(n, y) = {&phi;e0(y) if n &isin; A; &phi;e1(y) if n &nin; A}

Corollary: Tot and Inf are not computable

Corollary: The padding function is not exhaustive

###Reductions

We've made arguments like "_A_ cannot be computable because if it were we could use it to show that _K_ is computable, and _K_ is not computable."[^AandK] That is, _A_ can be used to compute _K_, because elements of _K_ can be transformed into elements of _A_. If you wanted to know if _x_ was in _K_, you'd be able to test if &fnof;(_x_) &isin; _A_, _x_ &isin; _K_.

[^AandK]: E.g. <em>A = {3x + 1|x &isin;K}</em>.

Definition: B is m-reducible to A, written B&le;mA, if there is a total computable &fnof; such that x &isin; B &harr; &fnof;(x) &isin; A.

Definition: B is 1-reducible to A, written B&le;1a, if there is an injective total computable &fnof; such that x &isin; B &harr; &fnof; &isin; A.

If you have 1-reducibility you have m reducibility. If you can compute A you have a way to compute B.

Lemma: &le;m and &le;1 are both pre-orders. That is, they are both transitive and reflexive.

Proof: to show that &le;m is reflexive, we must show that A &le;m A. Let &fnof;(x) = x&mdash;&fnof; is clearly total, and is in fact injective, so this also show that &le;1 is reflexive.

To show that &le;m is transitive, compose &fnof;(x) for one and g(x) for the other to get h(x). Composing two injective functions makes an injective function, so &le;1 is also transitive.

A pre-order gives a notion of _degree_.

Definition: We write A &equiv;m B if A &le;m B and B &le;m A. We say that A and B are in the same m-degree (an equivalence class). Similarly, &equiv;1.

Example: A {3x + 1|x &isin; K}

K &le;1 A, &fnof;(x) = 3x + 1

Now, fix some c &nin; K

Define g(x) = {y, if x = 3y + 1; c otherwise}

Then g shows A &le;m K

So A &equiv;m K


Lemma: 

1. If A is computable and B is any set except &empty; or _N_, then A &le;m B.
2. If A &le;m B and B is computable, then A is computable.

Proof: exercise

The very bottom degree, excluding the naturals and the empty set, is the computables. Call this degree **0**.

Lemma: If A &le;m B and B is c.e. then A is c.e.

Proof: exercise

Theorem: Every c.e. set is 1-reducible to K.

Proof: Suppose A is c.e., so A = dom(&phi;d) for some d. Given x, must build e such that &phi;d(x)&darr; &harr; e &isin; K &harr; &phi;e(e)&darr;. We want &forall;y &phi;e(y)&darr; &harr; &phi;d(x)&darr;

Let &fnof;(x, y) = &phi;d(x). Algorythm for &fnof;(x, y):

1. Ignore y and run &phi;d(x)
2. If &phi;d(x)&darr;, that's our output. Halt.

By the s-m-n theorem, there is a total computable _s_ such that &forall;y &phi;s(x)(y) = &fnof;(x, y). We may assume s is injective.

s(x) &isin; K &harr; &phi;s(x)(s(x))&darr; &harr; f(x, s(x))&darr; &harr; &phi;d(x)&darr; &harr; x &isin; A. So s shows A &le;1 K.

Cor: Any set m-reducible to K is 1-reducible to K.

There are A B with A &le;m B but not A &le;1 B.

###Wang tiles

Definition: A Wang tile is a 1&times;1 square with a colour on each side.[^WangSide]

[^WangSide]: That is, edge.

Formally, a Wang tile is a 4-tuple &lang;a, b, c, d&rang;, where a, b, c, d &isin; **N**. It doesn't matter which side matches which letter, and which colour matches which number, it doesn't matter what you've chosen. A tile has an orientation&mdash;rotating and mirroring produces a new tile.

Definition: A _tiling_ is an arrangement of Wang tiles in the plane such that adjacent tiles have the same colour on their common edge.

Formally, a tiling is a partial function **Z**<sup>2</sup> &rarr; Tiles, satisfying the edge condition. For q &isin; **Z**<sup>2</sup>, &fnof;(q) = tile at q; &fnof;(q)&uarr; if no tile. We don't really care about the formalisation that much.

Definition: A _tiling of the plane_ is a tiling that fills the entire plane. Formally, it is a tiling given by a total function.

Definition: A _tile set_ is a finite set of tiles. An _anchored tile set_ is a tile set with a distinguished element called the _anchor_.

Observation: Every tile set has only finitely many n&times;n tilings. In fact, if the tile set has _k_ tiles, there are at most <em>k<sup>n<sup>2</sup></sup></em> tilings of size n&times;n.

Definition: A tile set _tiles the plane_ if there is a tiling of the plane using only tiles from the tile set. Each tile from the tile set can be used as many or as few times as you like (including all of the time or none of them). An anchored tile set tiles the plane if there is a tiling of the plane using only tiles from the set, using each time as many or as few times as you like _except the anchor tile_ which _must be used at least once_.

Definition: A tiling of the plane is _periodic_ if there is some n such that the tiling consists of a single repeating n&times;n pattern. Formally, this means there is an _n_ such that the tiling is invariant under vertical and horizontal translations by _n_. Or, &exists;n such that &forall;p, q&isin;**Z**, &fnof;(p, q) = &fnof;(p + n, q) = &fnof;(p, q + n).

Conjecture: A tile set can tile the plane if and only if it can do so with a periodic tiling

This is _false_, which we will show with anchored tile sets, and indicate why it is false for tiles sets as well.

Lemma: suppose a tile set or anchored tile set can create a 2n&times;2n tiling consisting of a single n&times;n tiling repeated four times. (If it's anchored, the anchor needs to show up somewhere). Then the tile set or anchored tile set can tile the plane periodically.

Using coding, we can represent a tile as a single natural number, and a tiling as a set of natural numbers, and using coding again represent that set as another natural number. This only works because tile sets are _finite_.

We can therefore input tile sets into partial computable functions.

Theorem: The set of tile sets which can tile the plane periodically is computably enumerable. The same holds for anchored tile sets. Proof by exercise.

Lemma (Compactness): A tile set tiles the plane if and only if it has n&times;n tilings for all n.

Proof: 

* (&rArr;) If the set tiles the plane, take a tiling of the plane. Cut out an n&times;n square from this tiling. This gives an n&times;n tiling.
* (&lArr;) Suppose the tile set has n&times;n tilings for all n. Then it has n&times;n tilings for all _odd_ n. Because the tile set is finite there is a tile _t_ which is the centre tile of an n&mdash;n pattern for infinitely many odd n. <br/>**Notice:** if _t_ is the centre of some n&times;n pattern, it is also the centre of some k&times;k pattern for all odd k&lt;n. <br/>Let T<sub>0</sub> be the finite tiling that places t at the origin and places no other tiles. Consider all n&times;n tilings with T<sub>0</sub> at the centre, for odd n &ge; 3. For each, consider the 3&times;3 centre. There are only finitely many 3&times;3 patterns, but infinitely many n&times;n tilings containing T<sub>0</sub>. So at least one 3&times;3 tiling containing T<sub>0</sub> occurs as the centre of infinitely many larger tilings. Call this T<sub>1</sub>. <br/>Consider all n&times;n tilings with T<sub>1</sub> as the centre for odd n&ge;5. There are infinitely many, but only finitely many 5&times;5 tilings, so some 5&times;5 tiling is the centre of infinitely many. Choose one and call it T<sub>2</sub>. <br/>_Etcetera_&hellip; <br/>Let <em>T = &cup;T<sub>i</sub></em> for all _i_. <br/>**Claim:** _T_ is a tiling of the plane. <br/>Suppose _p_ and _q_ are adjacent points. Choose an _i_ large enough that T<sup>i</sub>(p) and T<sub>i</sub>(q) are defined. Then T(p) = T<sub>i</sub>(p) and T(q) = T<sub>i</sub>(q) by definition. But T<sub>i<sub> is a tiling, so T<sub>i</sub>(p) and T<sub>i</sub>(q) agree on their common edge. So T(p) and T(q) do. <br/>Also, for p = (xp, yp) &isin;**Z**<sup>2</sup> (need to prove that p is defined, which is trivial). <br/>So T is a tiling. The result is proved.

Lemma: An anchored tile set tiles the plane if and only if there is an n&times;n tiling with the anchor at the centre for all odd n.

Proof: exercise.

Theorem: The set of tile sets which _cannot_ tile the plane is computably enumerable (c.e.).

Proof: Suppose S is a tile set. Consider this algorithm for &fnof;(S):

1. Let n = 1
2. Check all n&times;n arrangements of tiles from S to see if any are legal tilings. (This is finite, but growing, which is ok.)
3. If none of them are legal tilings, output 1 and halt
4. If there is a legal n&times;n tiling, increase _n_ by 1 and return to step 2

&fnof; is partial computable. I claim that S &isin; dom(&fnof;) &harr; S cannot tile the plane.

If S &isin; dom(&fnof;), then the algorithm halts at step 3 for some n. So S has no n&times;n tilings, so S does not tile the plane. If S cannot tile the plane, then for some n it has no n&times;n tilings. So the algorithm halts at step 3 for this n. So S &isin; dom(&fnof;).

Theorem: The same holds for anchored tile sets.

Goal: Let A = {tiles that cannot tile the plane}. Want K &le;<sub>1</sub> A.

If M is a turing machine with alphabet &Sigma; and states Q, let R = &Sigma; &times; (Q &cup; {0}). (a, b) &isin; R if a &isin; &Sigma;, b &isin; Q or b = 0.

Theorem: Let A be the set of anchored tile sets that do not tile the plane. Then K &le;1 A.

Proof: Let K<sub>0</sub> = {e : &phi;e(0)&darr;}. It suffices to show that K0 &le;1 A.

We will transform machines into tile sets, using the "bottom of tile row codes configuration" method. We need a tile set that makes it so that the only legal next row down represents the next configuration.

For every rule &lang;a, q, R, p&rang; in the machine, make the tile that matches (a, q) on top, has (a, 0) on the bottom (to signal that the head has moved away), 0 on the left to show that the head isn't moving that way, and p on the right to show that the head is moving to the right and the machine is now in state p. There must be a matching set of tiles to recieve this signal and put p at the bottom.

For every rule &lang;a, q, L, p&rang; you need similar tiles.

For every rule &lang;a, q, b, p&rang; you need a tile that has 0 on both sides (because the head is not moving), has (a, q) on the top, and (b, q) on the bottom.

(several other rules)

There are no rules for the halting state, so no tile with it on the top, so if the machine reaches the halting state it cannot tile the plane.

We have described a computable function f from machines to tile sets such that e&isin;K &harr; f(e) &isin; A.

Theorem: The same is true for unanchored tile sets. Proof ommited

The set of tiles sets that cannot tile the plane is c.e. and the set of tiles that tile the plane periodically are periodically is c.e. too. The first is not computalbe, so these are not complements, so there must be a set that can tile the plane but not periodically.

###Turing reducibility

Note: new lecturer starts here.

B &le;T A means:

* B is Turing-below A
* B is computable from A
* A computes B
* B is Turing reducible to A
* You would be able to compute B with an algorithm that is allowed to ask questions of the form "is n &isin; A?"

Observation: If B &le;<sub>m</sub> A or B &le;<sub>1</sub> A then B &le;<sub>T</sub> A.

We know that B &le;<sub>1</sub> A &rArr; B &le;<sub>m</sub> A. So we merely need to show that if B &le;<sub>m</sub> A then B &le;<sub>T</sub> A.

Assume B &le;<sub>m</sub> A. Then there is a computable &fnof; such that for all _x_, <em>x &isin; B &hArr; &fnof;(x) &isin; A</em>. To compute B with A as an oracle:

1. On input x, compute f(x)
2. Ask is &fnof;(x) &isin; A?
3. If yes, output 1
4. If not, output 0

Example: Let &fnof;(x) = the (x + 1)st element of K. Let A = {x : &fnof;(x) + 1 &isin; K}

With K as an oracle, we can compute A:

1. On input x, ask if 0 &isin; K, is 1 &isin; K, &hellip; until you get x + 1 yes answers.
2. If _n_ is the last question you asked (the place were you got your x + 1th yes), &fnof;(x) = n.
3. Ask "is n + 1 &isin; K"
4. If yes, output 1
5. If no, output 0

Turing reductions can be defined for sets or for functions. In this case you would ask your oracle "what is &fnof;(n)?"

####Proving that Turing reduction is a pre-order

Lemma: &le;<sub>T</sub> is a pre-order (reflexive and transitive)

**Reflexive:** For any A, A &le;<sub>T</sub> A. Since we have A as an oracle, we can just ask on input x if x &isin; A. This is a question we are allowed to ask, and the question we are trying to decide. If yes, output 1, if no, output 0.

**Transitive:** 

Let's assume that A &le;<sub>T</sub> B and B &le;<sub>T</sub> C. We need to prove that A &le;<sub>T</sub> C. We know there is an algorithm that could compute A if it had access to B, and an algorithm that could compute B if it had access to C.

We run the algorithm for determining A from B, and whenever it would ask if something &isin; B we run the algorithm to determine if x &isin; B using C as an oracle.

####Turing degrees

Once called the "degrees of unsolvability."

Define A &equiv;<sub>T</sub> B if A &le;<sub>T</sub> B and B &le;<sub>T</sub> A.

Lemma: If A is computable, then for any B, A &le;T B. This is because there is an algorithm to compute A, so the oracle B does not actually need to be consulted and you can just used the original algorithm that is already known to exist.

Lemma: If A &le;T B and B is computable, then A is computable. If you have a computable oracle you don't have to use the oracle B you can just compute that fact about B because B is computable.

These two lemmas shows that there is a bottom degree, made of the computable sets. Unlike with m-degrees and 1-degrees, the empty set and the natural numbers are included here.

####Functionals

Earlier we had &phi;<sub>0</sub> etc. Now we want &phi;<sub>0</sub><sup>( )</sup>, &phi;<sub>1</sub><sup>( )</sup>, the oracle Turing functionals. You feed them an input and an oracle, and then they try to compute something. They are algorithms in a language that can also ask "is n an element of my oracle?"

&phi;<sub>e</sub><sup>X</sup> is the eth function with X as an oracle.

Notation: In practise, when we write &phi;<sub>e</sub> we mean &phi;<sub>e</sub><sup>0</sup> (where 0 is the empty set).

####The Limit Lemma

Theorem: A is computable from K if and only if there is a computable function &fnof; : N&times;N &rarr; {0, 1} so that for every _n_ the limit as s goes to infinity of &fnof;(n, s) = &Chi;<sub>A</sub>(n).

&fnof;(n, s) "guesses" at whether or not n &isin; A, potentially changing its mind several times, but eventually stops changing its mind and gives the right answer.

Proof (&lArr;):

Assume there is an approximating function &fnof;. We want to compute A using K. Algorithm:

1. On input _n_, set s = 0;
2. Compute &fnof;(n, s)
3. Ask will &fnof;(n, s) ever give a different value on some larger value of _s_?[^WhyKcananswer]
4. If not, output &fnof;(n, s)
5. If yes, increase s by one and go back to 2

[^WhyKcananswer]: We can do this because we can design an algorithm that would run through larger values of _s_ (regardless of what it was acutually given), halting when it finds a different value for &fnof;(n, s). Having access to the halting set means we can know if this algorithm would ever halt (because we can find its index, in theory) by asking if it is an element of K, so we can know if &fnof;(n, s) ever give another answer.

Proof (&rArr;):

Assume A &le;T K. &phi;<sub>e</sub><sup>K</sup> is a computation of A.

For each s, let K<sub>s</sub> be the "stage s approximation to K." That is to say, the set {e : &phi;<sub>e</sub>(e) halts in &le;s steps}. It's kind of the lazy man's halting problem. K<sub>s</sub> is computable for all _s_.

To compute &fnof;(n, s), run &phi;<sub>e</sub><sup>K<sub>s</sub></sup>(n) for s many steps. If it halts, let &fnof;(n, s) = &phi;<sub>e</sub><sup>K<sub>s</sub></sup>(n); otherwise &fnof;(n, s) = 0. This is definitely computable.

To show that the limit as s goes to infinity of &fnof;(n, s) = &Chi;A:

Consider the actual computation &phi;eK(n). This computation would, after a finite number of steps, and after asking a finite number of questions, halts and gives the right answer. So all we have to do is make _s_ big enough to make Ks accurate for all of the questions asked, and large enough for all the steps in the algorithm to run.

Let m be the largest question asked in this computation. Let s<sub>0</sub> be large enough that for every i &le; m, if &phi;i(i)&darr; then &phi;i(i)&darr; in &le; s0 steps.

Let s<sub>1</sub> be the number of steps taken in the computation of &phi;<sub>e</sub><sup>K</sup>(n).

Claim: if s &ge; max(s<sub>0</sub>, s<sub>1</sub>) then &fnof;(n, s) = &phi;<sub>e</sub><sup>K</sup>(n) = &Chi;<sub>A</sub>(n). This is true because &phi;eK(n) and &phi;eKs(n) run exactly the same computation, because K and Ks agree on all values of K that are queried before &phi;<sub>e</sub>K(n)&darr;.

####Post's problem

* **O** is the Turing degree of computable sets
* **O**&prime; ("Zero-jump") is the Turing degree of K

If A is c.e., then A &le;<sub>T</sub> K &mdash; in fact, A &le;<sub>1</sub> K.

The question is: is it possible for the Turing degree of A to be strictly between **O** and **O**&prime;. That is to say, a c.e. set that is not computable but does not compute the halting set. (The answer to this question is yes, there is a whole mess going on between those two degrees.)

##Complexity

Office hours: Tuesday, Thursday, 1 to 3 pm, CO426. Lecturer email: greg.igusa@msor.vuw.ac.nz

Hopefully start after the break?

##Footnotes
