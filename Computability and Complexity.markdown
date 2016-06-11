#Computability and Complexity

Computability and Complexity is a 300 level mathematics paper, with three one-hour lectures per week:

* Tuesday 12pm to 1pm, CO 118
* Wednesday 10am to 11am, CO 220
* Friday 10am to 11am, CO 118

Exam: 3 hours at 2:30 pm on **Wednesday 15 June** in MCLT102.

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

One option might be to take a random, commonly used programming language and say "an algorithm is anything that can be done by a program in this language." You can&mdash;and people do&mdash;mathematically analyse programming languages, so this is a perfectly plausible approach in theory. In practise, however, programming languages are complicated and redundant and therefore hard to work with mathematically. As a stand-in, then, we use "an incredibly simplified sort of program introduced by Alan Turing."

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

**Definition:** A Turing machine _M_ _simulates_ a partial function &fnof; : &Sigma;<sup>&lowast;</sup> &rarr; &Sigma;<sup>&lowast;</sup>[^notemistake] if

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

**Definition:** A _good numbering_ of computable functions is a list &phi;<sub>0</sub>, &phi;<sub>1</sub>, &hellip; of functions from &#8469; to &#8469; such that:

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
* If x &notin; A, &Chi;A(x)&darr; = 0, so g(x)&uarr;, so x &nin; dom(g)

Theorem: TFAE:[^TFAE]

[^TFAE]: The following are equivalent.

1. A is computable
2. A and &#8469; - A are both c.e

Proof: 

* (1)&rArr;(2): Suppose A is computable. The &Chi;<sub>&#8469;-A</sub> = 1 - &Chi;<sub>A</sub>. So &#8469;-A is computable. By the lemma, A and &#8469;-A are c.e.
* (2)&rArr;(2): Suppose A is the domain of &fnof;, and &#8469; - A is the domain of g, where f and g are computable. Here is an algorithm for &Chi;A(x):
	1. Set _t_ = 0
	2. Run f(x) for t steps. If f(x) halts within t steps, halt and output 1
	3. Run g(x) for t steps. If g(x) halts within t steps, halt and output 0
	4. Add 1 to t and return to step 2

    Eventually one must halt, and we will know the correct answer: 

    * If x &isin; A, then there is a t such that f(x) halts in t steps. Also, g(x) never halts. So our algorithm eventually outputs 1
    * If x &notin; A, same but with f and g reversed.

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

There is some i with d = &Rho;<sub>i</sub>. Is i &isin; K? If so, i &notin; dom(d) so d(i)&uarr;. So &Rho;i(i)&uarr;. So i &nisn; K. If not, i &isin; dom(d) so d(i)&darr;. So &Rho;i(i)&darr;. So i &isin; K. These are contradictions, so K is not computable.

Example: A = {p<sub>i</sub> | i &isin; K}

A is c.e., because it is the domain of h(x) given by:

1. Check if x is prime. If not, enter an infinite loop
2. If so, find i with x = p<sub>i</sub>
3. Now run f(i) (this is the same f as previous)
4. If f(i) ever halts, output 0

x &isin; dom(h) if and only if x = p<sub>i</sub> and i &isin; dom(f) = K. A = dom(h), so A is c.e. If A was computable, it could be used to compute K.

Suppose A were computalbe:

Consider this alogarythm for &Chi;<sub>K</sub>(x):

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

Plan: fix e<sub>0</sub> &notin; A and e<sub>1</sub> &isin; A. Build n such that &phi;n(x) = {&phi;e0(x), if n &isin; A; &phi;e1(x), if n &notin; A}

Then n being in A implies that &phi;n = &phi;e0 withihc implies that n is not in A, and the reverse is also true. This is a contradiction; it remains to find n.

h(x, y) = {&phi;e0(y), if x &isin; A; &phi;e1(y) if x &notin; A}

Algorithm for h:

1. Run &Chi;A(x)
2. If &Chi;A(x) = 1, run and output &phi;e0(y)
3. Else, run and output &phi;e1(y)

By the s-m-n theorem there is a total computable ss swith &phi;s(x)(y) = h(x, y). By the recursion theorem, there is an n with &phi;n(y) = &phi;s(n)(y). This is the n we wanted.

&phi;n(y) = &phi;s(n)(y) = h(n, y) = {&phi;e0(y) if n &isin; A; &phi;e1(y) if n &notin; A}

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

Now, fix some c &notin; K

Define g(x) = {y, if x = 3y + 1; c otherwise}

Then g shows A &le;m K

So A &equiv;m K


Lemma: 

1. If A is computable and B is any set except &empty; or &#8469;, then A &le;m B.
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

Formally, a Wang tile is a 4-tuple &lang;a, b, c, d&rang;, where a, b, c, d &isin; &#8469;. It doesn't matter which side matches which letter, and which colour matches which number, it doesn't matter what you've chosen. A tile has an orientation&mdash;rotating and mirroring produces a new tile.

Definition: A _tiling_ is an arrangement of Wang tiles in the plane such that adjacent tiles have the same colour on their common edge.

Formally, a tiling is a partial function **Z**<sup>2</sup> &rarr; Tiles, satisfying the edge condition. For q &isin; **Z**<sup>2</sup>, &fnof;(q) = tile at q; &fnof;(q)&uarr; if no tile. We don't really care about the formalisation that much.

Definition: A _tiling of the plane_ is a tiling that fills the entire plane. Formally, it is a tiling given by a total function.

Definition: A _tile set_ is a finite set of tiles. An _anchored tile set_ is a tile set with a distinguished element called the _anchor_.

Observation: Every tile set has only finitely many n&times;n tilings. In fact, if the tile set has _k_ tiles, there are at most <em>k<sup>n<sup>2</sup></sup></em> tilings of size n&times;n.

Definition: A tile set _tiles the plane_ if there is a tiling of the plane using only tiles from the tile set. Each tile from the tile set can be used as many or as few times as you like (including all of the time or none of them). An anchored tile set tiles the plane if there is a tiling of the plane using only tiles from the set, using each time as many or as few times as you like _except the anchor tile_ which _must be used at least once_.

Definition: A tiling of the plane is _periodic_ if there is some n such that the tiling consists of a single repeating n&times;n pattern. Formally, this means there is an _n_ such that the tiling is invariant under vertical and horizontal translations by _n_. Or, &exist;n such that &forall;p, q&isin;**Z**, &fnof;(p, q) = &fnof;(p + n, q) = &fnof;(p, q + n).

Conjecture: A tile set can tile the plane if and only if it can do so with a periodic tiling

This is _false_, which we will show with anchored tile sets, and indicate why it is false for tiles sets as well.

Lemma: suppose a tile set or anchored tile set can create a 2n&times;2n tiling consisting of a single n&times;n tiling repeated four times. (If it's anchored, the anchor needs to show up somewhere). Then the tile set or anchored tile set can tile the plane periodically.

Using coding, we can represent a tile as a single natural number, and a tiling as a set of natural numbers, and using coding again represent that set as another natural number. This only works because tile sets are _finite_.

We can therefore input tile sets into partial computable functions.

Theorem: The set of tile sets which can tile the plane periodically is computably enumerable. The same holds for anchored tile sets. Proof by exercise.

Lemma (Compactness): A tile set tiles the plane if and only if it has n&times;n tilings for all n.

Proof: 

* (&rArr;) If the set tiles the plane, take a tiling of the plane. Cut out an n&times;n square from this tiling. This gives an n&times;n tiling.
* (&lArr;) Suppose the tile set has n&times;n tilings for all n. Then it has n&times;n tilings for all _odd_ n. Because the tile set is finite there is a tile _t_ which is the centre tile of an n&mdash;n pattern for infinitely many odd n. <br/>**Notice:** if _t_ is the centre of some n&times;n pattern, it is also the centre of some k&times;k pattern for all odd k&lt;n. <br/>Let T<sub>0</sub> be the finite tiling that places t at the origin and places no other tiles. Consider all n&times;n tilings with T<sub>0</sub> at the centre, for odd n &ge; 3. For each, consider the 3&times;3 centre. There are only finitely many 3&times;3 patterns, but infinitely many n&times;n tilings containing T<sub>0</sub>. So at least one 3&times;3 tiling containing T<sub>0</sub> occurs as the centre of infinitely many larger tilings. Call this T<sub>1</sub>. <br/>Consider all n&times;n tilings with T<sub>1</sub> as the centre for odd n&ge;5. There are infinitely many, but only finitely many 5&times;5 tilings, so some 5&times;5 tiling is the centre of infinitely many. Choose one and call it T<sub>2</sub>. <br/>_Etcetera_&hellip; <br/>Let <em>T = &cup;T<sub>i</sub></em> for all _i_. <br/>**Claim:** _T_ is a tiling of the plane. <br/>Suppose _p_ and _q_ are adjacent points. Choose an _i_ large enough that T<sup>i</sup>(p) and T<sub>i</sub>(q) are defined. Then T(p) = T<sub>i</sub>(p) and T(q) = T<sub>i</sub>(q) by definition. But T<sub>i</sub> is a tiling, so T<sub>i</sub>(p) and T<sub>i</sub>(q) agree on their common edge. So T(p) and T(q) do. <br/>Also, for p = (xp, yp) &isin;**Z**<sup>2</sup> (need to prove that p is defined, which is trivial). <br/>So T is a tiling. The result is proved.

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

Theorem: A is computable from K if and only if there is a computable function &fnof; : &#8469;&times;&#8469; &rarr; {0, 1} so that for every _n_ the limit as s goes to infinity of &fnof;(n, s) = &Chi;<sub>A</sub>(n).

&fnof;(n, s) "guesses" at whether or not n &isin; A, potentially changing its mind several times, but eventually stops changing its mind and gives the right answer.

Proof (&lArr;):

Assume there is an approximating function &fnof;. We want to compute _A_ using _K_. Algorithm:

1. On input _n_, set _s = 0_;
2. Compute _&fnof;(n, s)_
3. Ask will _&fnof;(n, s)_ ever give a different value on some larger value of _s_?[^WhyKcananswer]
4. If not, output _&fnof;(n, s)_
5. If yes, increase _s_ by one and go back to 2

[^WhyKcananswer]: We can do this because we can design an algorithm that would run through larger values of _s_ (regardless of what it was acutually given), halting when it finds a different value for &fnof;(n, s). Having access to the halting set means we can know if this algorithm would ever halt (because we can find its index, in theory) by asking if it is an element of K, so we can know if &fnof;(n, s) ever give another answer.

Proof (&rArr;):

Assume _A &le;<sub>T</sub> K_. _&phi;<sub>e</sub><sup>K</sup>_ is a computation of _A_.

For each _s_, let _K<sub>s</sub>_ be the "stage _s_ approximation to _K_." That is to say, the set _{e : &phi;<sub>e</sub>(e) halts in &le;s steps}_. It's kind of the lazy man's halting problem. _K<sub>s</sub>_ is computable for all _s_.

To compute <em>&fnof;(n, s)</em>, run <em>&phi;<sub>e</sub><sup>K<sub>s</sub></sup>(n)</em> for _s_ many steps. If it halts, let <em>&fnof;(n, s) = &phi;<sub>e</sub><sup>K<sub>s</sub></sup>(n)</em>; otherwise <em>&fnof;(n, s) = 0</em>. This is definitely computable.

To show that the limit as s goes to infinity of <em>&fnof;(n, s) = &Chi;<sub>A</sub></em>:

Consider the actual computation <em>&phi;<sub>e</sub><sup>K</sup>(n)</em>. This computation would, after a finite number of steps, and after asking a finite number of questions, halts and gives the right answer. So all we have to do is make _s_ big enough to make Ks accurate for all of the questions asked, and large enough for all the steps in the algorithm to run.

Let m be the largest question asked in this computation. Let s<sub>0</sub> be large enough that for every i &le; m, if &phi;i(i)&darr; then &phi;i(i)&darr; in &le; s0 steps.

Let s<sub>1</sub> be the number of steps taken in the computation of &phi;<sub>e</sub><sup>K</sup>(n).

Claim: if _s &ge; max(s<sub>0</sub>, s<sub>1</sub>)_ then _&fnof;(n, s) = &phi;<sub>e</sub><sup>k</sup>(n) = &chi;<sub>a</sub>(n)_. this is true because <em>&phi;<sub>e</sub><sup>k</sup>(n)</em> and _&phi;<sub>e</sub><sup>K<sub>s</sub></sup>(n)_ run exactly the same computation, because _K_ and _K<sub>s</sub>_ agree on all values of _k_ that are queried before _&phi;<sub>e</sub><sup>K</sup>(n)&darr;_.

####Post's problem

* **0** is the Turing degree of computable sets
* **0**&prime; ("Zero-jump") is the Turing degree of _K_

If _A_ is c.e., then _A &le;<sub>T</sub> K_ &mdash; in fact, _A &le;<sub>1</sub> K_.

The question is: is it possible for the Turing degree of _A_ to be strictly between **O** and **O**&prime;. That is to say, a _c.e._ set that is not computable but does not compute the halting set. (The answer to this question is yes, there is a whole mess going on between those two degrees.)

**Easy version:** _There is a Turing degree strictly between **0** and **0**&prime;_

Use K as an oracle. Construct A, B. Make sure that A is not &le;<sub>T</sub> B[^Anotcomputable] and B is not &le;<sub>T</sub> A[^AnotturingequivK].

[^Anotcomputable]: So A can't be computable.

[^AnotturingequivK]: So A can't be &equiv;<sub>T</sub> to K.

How to do this: Must make sure that for every _e_, &phi;<sub>e</sub><sup>A</sup> does not compute B, and &phi;<sub>e</sub><sup>B</sup> does not compute A.

How to make &phi;<sub>e</sub><sup>A</sup> not compute B: either find an _n_ so that &phi;<sub>e</sub><sup>A</sup>(n)&uarr;, or find an _n_ so that &phi;<sub>e</sub><sup>A</sup>(n) &ne; &Chi;<sub>B</sub>(n). In other words, it either fails to give an answer, or fails to give the correct answer, either of which means it does not compute B.

Construction: Build A and B by finite approximation, in stages.

Our initial segments of A and B respectively might be:

* &sigma;: `01110110`
* &tau;: `0000010111111111110`

At the beginning of the construction both &sigma; and &tau; are empty.

At step 2e: we make sure that &phi;<sub>e</sub><sup>A</sup> does not compute B as follows:

* Let n be the first bit that we have not decided whether or not it's in B.
* Ask: is there any possible way to extend &sigma; to make &phi;eA(n) converge.[^WhywecanaskKthisqueston] If yes, then we extend &sigma; to something that makes &phi;<sub>e</sub><sup>A</sup>(n) converge. If &phi;eA(n) = 0, put n in B, otherwise put n &notin; B (i.e. make sure that &phi;<sub>e</sub><sup>A</sup>(n) does the wrong thing). If no, we have already won victory number 1: don't extend &sigma;, maybe declare n &nin;B.
* In the odd stages we do the same thing where A and B are reversed.

[^WhywecanaskKthisqueston]: Define an algorithm that (one any input) emulates &phi;<sub>e</sub><sup>-</sup>(n) on every oracle that agrees with &sigma;. Every time &phi;e(n) asks a question, if that question is something that &sigma; has decided, we use that answer, otherwise we try both, running both computations in paralell, waiting for either to converge. If any of these algorithms converge, then our search halts. This is a computable search, conducted by some &phi;i, so we can ask is "i &isin; K."

Post's problem for realsies: There is a c.e. set A whose Turing degree is strictly between **0** and **0**&prime;

Plan is to _enumerate_ A, B, making sure that A &le;<sub>T</sub> B and B &le;<sub>T</sub> A. We can't use K as an oracle.

Again: How to make &phi;<sub>e</sub><sup>A</sup> not compute B: either find an _n_ so that &phi;<sub>e</sub><sup>A</sup>(n)&uarr;, or find an _n_ so that &phi;<sub>e</sub><sup>A</sup>(n) &ne; &Chi;<sub>B</sub>(n). In other words, it either fails to give an answer, or fails to give the correct answer, either of which means it does not compute B.

Construction:

* A: _ _ _ _ _ _ _
* B: _ _ _ _ _ _ _ &hellip;

Pick an n. Hold _n_ out of _B_. Wait for &phi;<sub>e</sub><sup>A</sup>(&#8469;) to converge. If it finally converges, we&hellip; (see notes.)

####Finite injury in general

Ingredients of a finite injury priority argument:

* There are countably many strategies, each trying to do something.
* Each strategy, if never injured, will only act a finite number of times (e.g. once).
* Each strategy can only be injured by the actions of higher priority strategies.
* Each strategy, if it is injured only a finite number of times, will accomplish its goal.

Solvable by such a strategy:

Theorem: there is a minimal pair of c.e. sets: a pair of non-computable c.e. sets A and B such that for every C if C &le;T A and C &le;T then C is computable.

Theorem: there is a low c.e. set: a non-computable set A so that A&prime; = 0&prime;

Infinite injury priority arguments also exist. The highest priority can act both finite and infinite amounts of time. The lower priority ones have two versions: the first version restarts every time the highest priority one acts; the second "secret" version works using "scraps" that the highest priority allows it to have. The third has even more versions to run depending on what the ones above it.

"Monstrous" injury arguments also exist, but nobody understands them.

###The arithmetic hierarchy

Consider the set P, the prime numbers. P = {n : n &ne; 0 &and; n &ne; 1 &and; &forall;x&forall;y ((xy = n) &rarr; (x = n &or; y = n))}, but this requires checking infinitely many numbers. Alternately, P = {n : n &ne; 0 &and; n &ne; 1 &and; &forall;x&lt;n &forall;y&lt;n (xy &ne; n)}; The moral is that unbounded quantifiers are bad, and bounded quantifiers are good.

A formula of arithmetic is &Delta;<sub>0</sub> if it can be written using only bounded quantifiers: 0, 1, +, &times;, &lt; =, &not;, &and;, &or;, and bounded quantifiers.

A formula is &Sigma;<sub>1</sub> if it is written (&exist;x)(something &Delta;<sub>0</sub>).

A set is &Sigma;<sup>0</sup><sub>1</sub> if it is defined by a &Sigma;<sub>1</sub> formula.

Using &forall;, sub &Pi; for &Sigma;.

A set is &Delta;<sup>0</sup><sub>1</sub> if it is both &Sigma;<sup>0</sup><sub>1</sub> and &Pi;<sup>0</sup><sub>1</sub>.

A set is &Sigma;<sup>0</sup><sub>1</sub> if and only if it is c.e.; a set is &Delta;<sup>0</sup><sub>1</sub> if and only if it is computable.

Proof sketch:

&Delta;<sub>0</sub> formulas you can just check by looking at it. So if A is definited by A = {n : &exist;x &Phi;(n, x)}, we can enumerate A by: for each n, search for an x that makes &Phi;(n, x).

If A is &Delta;<sup>0</sup><sub>1</sub> then both A and A-bar are &Sigma;<sup>0</sup><sub>1</sub>.

Side note: with every model of computation there are sets that are computable, but you can't prove it.

Proof: Take any model of computation, and any sound proof system. List the provable computable sets S<sub>0</sub>, S<sub>1</sub>, S<sub>2</sub>, S<sub>3</sub>, etc.[^Listorder]

[^Listorder]: In the order that you find a proof that they are computable.

Define S = {n : n &ne; S<sub>n</sub>}. This is a computable set, however it itself can't be in S. No sufficiently complex proof system can prove its own consistency.

If a set is c.e. then it is &Sigma;<sup>0</sup><sub>1</sub>:

Idea: code the worksing of a Turing machine into a &Delta;0 formula, then write:

A = {n : &exist;x(The Turing machine halts on input _n_ in x steps or less) }

####The point of this

We can write things like: "A forumla is &Sigma;<sub>n + 1</sub> if it is written &exist;(a &Pi;<sub>n</sub> formula)"

* A formula is &Pi;<sub>n + 1</sub> if it is written &forall;(a &Sigma;<sub>n</sub> formula)
* A set is &Sigma;<sup>0</sup><sub>n</sub> if it is defined by a &Sigma;<sub>n</sub> formula
* A set is &Pi;<sup>0</sup><sub>n</sub> if it is defined by a &Pi;<sub>n</sub> formula
* A set is &Delta;<sup>0</sup><sub>n</sub> if it is both &Sigma;<sup>0</sup><sub>n</sub> and &Pi;<sup>0</sup><sub>n</sub>.

Theorem: A set is &Sigma;<sup>0</sup><sub>2</sub> if and only if it is c.e. relative to K; A set is &Delta;<sup>0</sup><sub>2</sub> if and only if it is computable relative to K.

Proof (if a set is E<sup>0</sup><sub>2</sub> then it is c.e. relative to K)

A = {n : &exist;x&forall;y&Phi;(n, x, y)}

Idea: K can be used as an oracle to answer any one-quantifier question. To ask "does there exist an x such that [blah]" we ask "If we were to initiate a computable search such that [blah], would that search ever halt?" To ask &forall; you ask "if a search for an x such that [blah] is false, would it ever halt?"

To decide whether to enumerate n into A, search for an x that makes &forall;y&Phi;(n, x, y) true.

In general, a set is &Sigma;<sup>0</sup><sub>n+1</sub> if and only if it is c.e. relative to 0<sup>(n)</sup> (the nth jump of 0), and &delta;<sub>0</sub><sup>n+1</sup> if and only if it is computable relative to 0<sup>(n)</sup>.

##Complexity

Office hours: Tuesday, Thursday, 1 to 3 pm, CO426. Lecturer email: greg.igusa@msor.vuw.ac.nz

Start 6/5

We study "feasible" computations, that don't take too much time or memory. We're going to talk about the number of steps it takes, so our model of computation is relevant again&mdash;one model might run the same computation in a different amount of time. We will use Turing machines.[^Turingpolynomial]

[^Turingpolynomial]: Note that a Turing machine can emulate any other reasonable model of computation in polynomial time. E.g. you might have an algorithm that you can run in linear time on your computer, but in cubic time on a Turing machine. On the other hand, if there is a problem that requires exponential time to be run on a Turing machine then it also requires exponential time on a computer.

We generally say as a first approximation that all polynomial time things are feasible, and all exponential time things are not. Using Turing machines we will end up with the same class of polynomial time solvable things that would be solvable on your computer.

###Notation for discussing how quickly functions grow

Given functions[^functiontypes] &fnof; and g, we say that:

[^functiontypes]: These functions can be from the naturals to the naturals, the naturals to the reals, the reals to the reals etc.

* &fnof; is O(g) if there is a bound n<sub>0</sub>, and a constant c, so that for all n &ge; n<sub>0</sub>, &fnof;(n) &lt; c&times;g(n).[^Ogexample]

    _c_ does not need to be a natural number, the definition does not change. But you can always replace _c_ with a number higher than _c_, so if you wanted to use e.g. &pi; you could replace it with 4 (or 23456789).

* &fnof; is o(g) if the limit as n goes to infinity of &fnof;(n) / g(n) is 0.
* &fnof; is &Omega;(g) if there is a constant _c &gt; 0_ so that there exist infinitely many different ns such that &fnof;(n)&times;c &gt;(n).[^RealOmega][^Hardylittlewood]

[^Ogexample]: <em>5n<sup>2</sup> - n - 500</em> is O(n<sup>2</sup>). Proof: if we let n<sub>0</sub> = 1 and c = 506, then for all n &ge; n<sub>0</sub> 5n<sup>2</sup> - n - 500 &le; 5n<sup>2</sup> + 0 + 500n2 = 505n<sup>2</sup> &lt; 506n<sup>2</sup> = c&times;n<sup>2</sup>. However, more strict c can be used too.

[^RealOmega]: For functions from the real numbers, we want &forall;x&exist;y&gt;x(c&fnof;(y) &gt; g(y)).

[^Hardylittlewood]: This is the Hardy-Littlewood definition, which is described in wikipedia as the "number theory definition" as opposed to the "complexity theory definition."

###Accepting and rejecting strings

In complexity theory, we frequently discuss "decision problems": some strings we want to accept, and some we want to reject.

We have a finite alphabet &Sigma; = {0, 1} (usually). Our inputs will be finite strings of symbols from &Sigma;. Our Turing machines will have two halt states. Our Turing machines will have two halt states, "accept and halt" and "reject and halt."

Definition: &Sigma;<sup>&lowast;</sup> is the set of finite strings of elements of &Sigma;. We will use letters like x, y, z, &sigma;. &tau;, &rho; to denote elements of &Sigma;<sup>&lowast;</sup>. If x &isin; &Sigma;-star, |x| is the length of x. We put a 2 on the tape to denote the end of the input string.[^EndofString]

[^EndofString]: Actually, we can use the blank symbols we were using before to communicate which parts of the tape were in the input&mdash;this was a failure of communication between lecturers. The adding two at the end is another valid approach to demarcing the end of the input, as is writing the input on alternate bits and using the skipped bits to indicate whether it's valid input etc. Our method is simpler though, albeit requireing the extra symbol.

If A &sube; &Sigma;<sup>&lowast;</sup>, and M is a deterministic Turing machine, we say that _M accepts A_ if M accepts every x that's in A and rejects every x that's not in A. Subsets of &Sigma;<sup>&lowast;</sup> are sometimes called _languages_.

Definition: DTIME(|x|<sup>c</sup>) = {A : A is acceptable in time O(|x|<sup>c</sup>) by a deterministic Turing machine. Example: DTIME(|x|<sup>2</sup>) is the set of languages so that there is a machine whose runtime bounded by a quadratic polynomial in the length of the input so that the machine accepts all x &isin; A and rejects all x &notin; A.

A simple example: A = {x : x is all 1s (no zeros)}. That is {(blank), 1, 11, 111, 1111}. A is in DTIME (|x|<sup>1</sup>), because the runtime is bounded by |x| + 1 (though sometimes the algorithm runs faster).

###Non-deterministic Turing machines

A non-deterministic Turing machine can have two options when confronted with the same bit. These can be thought of as having free will, doing both options simultaneously, doing them randomly, or whatever you want to think of them as.

Definition: A non-deterministic Turing machine is a Turing machine that, in a given state, might have more than one instruction it can do.

Example:

![Non deterministic Turing machine](Nondeterm.png)

This machine, on a blank input, is capable of producing any string and halting, or never halting at all. The only non-deterministic part is the three options on a blank bit.

A "choice" occurs when the machine has multiple instructions it could do. Because we are using polynomial time-bounds, which if it exceeds it can be made to just halt and reject, we can have them always halt.

If A &sube; &Sigma;<sup>&lowast;</sup>, and M is a non-deterministic Turing machine, we say M accepts A if for every x &isin; A there is some sequence of choicesM can make that will cause it to accept, and for every x &notin; A every sequence of choices will cause M to reject x.

NP problems can be phrased as "does x have a solution?" where it's difficult to answer this question, but easy to answer "is y a solution to x?"

A nondeterministic M will use it's choices to guess at what y could be. If any choice works then x has a solution. If x has no solution &hArr; no choice will work.

NTIME(|x|<sup>c</sup>) = {A : A is acceptable in tome O(|x|<sup>c</sup>)} by a nondeterministic Turning machine.

Definition: P = &cup; DTIME(|x|<sup>c</sup>); NP = &cup; NTIME(|x|<sup>c</sup>). (c &isin;&#8469;).

We think of P as the set of feasible problems (the polynomial time acceptable languages).

We think of NP (the non-deterministic polynomial time acceptable languages).

Note: P &sube; NP because every deterministic Turing machine is (or can be trivially converted to, depending on your definition) a non-deterministic Turing machine.

Question: is P = NP? It is widely believed that P &ne; NP but is an open question. The security of most encryption is dependent on the assumption that P &ne; NP.

&forall;c &isin; &#8469;, DTIME(|x|<sup>c</sup>) &sub; DTIME(|x|<sup>c + 1</sup>) (but not equal to).

Proof: DTIME(|x|<sup>c</sup>) &sube; DTIME(|x|<sup>c + 1</sup>) because any function that is O(|x|<sup>c</sup>) is also O(|x|<sup>c + 1</sup>)

Idea: We define an |x|<sup>c + 1</sup>-time algorithm, and prove that the A it computes is not O(|x|<sup>c</sup>)-time decidable.[^decidablecomputable]

[^decidablecomputable]: Decidable and Computable mean the same thing here.

Plan: On input &sigma; = 111100000, that is 1<sup>n</sup>0<sup>m</sup>, or n ones in a row followed by m zeros in a row. Run &phi;<sub>n</sub> on &sigma; for |&sigma;|<sup>c + 1</sup> may steps. If it accepts, we reject, if it rejects or doesn't halt, accept.

If &phi;<sub>n</sub> runs in O(|x|<sup>c</sup>) time, then from some point on the runtime of &phi;<sub>n</sub> will be bounded by d(|x|<sup>c+1</sup>) for some d. If |x| > d then |x|<sup>c+1</sup> > d(|x|<sup>c</sup>). So &phi;<sub>n</sub> will halt before we do, and then we can do opposite.

Problem: it might take more than |&sigma;|<sup>c + 1</sup> steps for me to emulate |&sigma;|<sup>c + 1</sup> steps of &phi;<sub>n</sub>.

Solution: First of all, we always do |&sigma;|<sup>n + 1</sup> many steps of our Turing machine. Second of all, use an efficient universal Turing machine. Such a machine is able to emulate any Turing machine while not in linear time can do close enough&mdash;a machine that in |x|c + 1 steps can eventually emulate &phi;<sub>n</sub>(x) if &phi;<sub>n</sub> runs in O(|x|<sup>c</sup>) time. (Using a two-tape machine it can emulate it in _nlog(n)_ time, which is less than n<sup>2</sub> time.)

Note: we will ignore this problem and its solution in the proof.

Theorem: L &isin; NP if and only if there is a polynomial time relation R( , )[^polyrelation] and a polynomial p such that x &isin; L &hArr; &exist;y(|y| &lt;' p(|x|) &and; R(x, y)).

[^polyrelation]: This is a deterministic polynomial time relation.

Alternately written as x &isin; L &hArr; &exist;<sub>y</sub><sup>p</sup>R(x,y); meaning that L is &Sigma;<sup>p</sup><sub>1</sub>; or even NP = &Sigma;<sup>p</sup><sub>1</sub>.

Proof: Suppose L &isin; NP. L is accepted by a nondeterministic Turing machine M in time O(|x|<sup>k</sup>). For any x &isin; L, let c be the sequence of choices that M makes when it accepts x.[^cisinsigmastar]

[^cisinsigmastar]: Strictly speaking, c &isin; &Sigma;<sup>&lowast;</sup> where &Sigma; is the set of instructions in M. We can code this with a sequence of 0s and 1s if we like.

R(x, y) says "y codes a sequence of choices that M can make in order to accept x." Further, y must be smaller than p(|x|)

Other direction: If there is a polynomial time relation R( , ) and a polynomial p such that x &isin; L &hArr; &exist;y(|y| &lt; p(|x|) &and; R(x, y)) then L &isin; NP.

Can assume R(x, y) can be checked in p(|x|) time.

Nondeterministic machine:

On input x, first compute p(|x|), then nondeterministically write a y so that |y| &le; p(|x|). Then check if R(x, y) is true. If yes, accept. Otherwise, reject. If there actually is a y that makes makes x &isin; L then the machine will produce such a y at least once.

Deterministically, we could write down _every_ y so that |y| = p(x), then check if R(x, y) is true for every single one y. Accept if we find a y, reject if we don't. There are 2<sup>p(|x|)</sup>-many ys, which would make it exponential time, not polynomial. Incidentally, this proves that any language in NP is exponential-time solvable.

###A warning

Warning: we didn't prove that you _can't_ answer a question in polynomial time, merely that it can be done in exponential time&mdash;whether or not it can be done depends on whether or not P = NP.

Note that determining that an algorithm is optimal for a purpose is hard, and would mean that you could compute the halting problem.

###NP-complete

We think that NP problems must be hard. Suppose we have a function that's NP, we don't know that it's not also P. We can, however, prove that it is "NP complete", i.e. as hard as an NP possibly can be. We know then that the only way it could be polynomial time decidable is if P = NP.

####Polynomial-time m-reducible

Definition: A is &le;<sup>p</sup><sub>m</sub> B (A is polynomial-time m-reducible to B) if there is a polynomial-time computable function &fnof; such that x &isin; A if and only if &fnof;(x) &isin; B.

Theorem: if A is &le;pm B and B is polynomial-time computable then so is A.

Proof: on input x, compute &fnof;(x), compute whether &fnof;(x) is in B. If yes, accept. If no, reject. Computing whether &fnof;(x) is in B takes time that is polynomial in |&fnof;(x)|, but the length of &fnof;(x) is bounded by the time it takes to compute &fnof;(x) because Turing machines can only write one symbol per step, so it's a polynomial in a polynomial which is a polynomial.

Definition: A is **NP-hard** if for every B in NP, B &le;<sup>p</sup><sub>m</sub> A.

Theorem: if A is NP-hard, and A is in P, then P = NP.

Proof: If A is in P, then everything that is below A is in P, and if A is NP-hard, then everything in NP is below A, so everything in NP is P.

If you take it on faith that P &ne; NP, then if A is NP hard then A &notin; P.

Definition: A is **NP-complete** if A is NP-hard _and_ A &isin; NP.

####SAT

Definition: SAT.

Input: A formula &Phi; of predicate logic.

Question: is &Phi; satisfiable (consistent).

Examples: 

* ((P &or; Q) &and (&not;P &or; &not;Q)), e.g. by making P true and Q false, or making P false and Q true.
* (P &and; &not;P) is not satisfiable.
* (((P &or; Q) &and ((&not;Q &or; (&not;P &and; &not;R)) &and; &not;(Q &and; &not;(R &and; P)))) &and; &not;(P &and; R)) is not satisfiable.

Theorem: SAT is NP-complete

Note that the vast majority of SAT problems can be completed in a reasonable amount of time, however there are certain problems that are extremely difficult to solve

#####SAT &isin; NP

Proof: Use a nondeterministic Turing machine that looks at &Phi;, guesses value for all the propositional variables, checks whether the guess works.

#####SAT is NP-hard

Given A &isin; NP, we need to show that A &le;<sup>p</sup><sub>m</sub> SAT.

Let M be a NTM that accepts A in time bounded by p(|x|). x &rarr; &Phi; so that &Phi; is satisfiable &harr; M accepts x. The size of &Phi; needs to be polynomial in the length of x, and the time to generate &Phi; needs to be polynomial in |x| also.

On input x, let N = p(|x|)

Propositional variables:

* Q<sub>i,k</sub> 0 &le; i &le; N: "At time i, M is in state q<sub>k</sub>" (k is the total number of state in the machine, which is fixed for a given machine).
* H<sub>i,j</sub> for 0 &le; i &le; and -N &le; j &le; N: "At time i, M is scanning cell j"
* S<sub>i,j,k</sub> 0 &le; i &le; and -N &le; j &le; N: "At time i, tape cell j contains symbol S<sub>k</sub>". k ranges over all symbols in the alphabet
* Ai,k "At time i, the next action preformed by M is action a<sub>K</sub>". k ranges over all possible actions

Formula &Phi; is a conjunction[^bigconjunction] of the following:

[^bigconjunction]: A conjunction is a bunch of formulas joined by &and; symbols; a disjunction is joined by &or; symbols

* At each time i, M is in exactly one state: A conjunction over i of a conjunction between (a conjunction over k of Q<sub>i,k</sub>) and (a conjunction over all k<sub>1</sub> &ne; k<sub>2</sub> such that &not; Q<sub>i,k<sub>1</sub></sub> &and; Q<sub>i,k<sub>2</sub></sub>).
* At each time i, M is scanning exactly one cell
* At each time i, M performs exactly one action, which requires two "ghost" actions&mdash;stay in accept state, and stay in reject state&mdash;because it would be too hard to code what to do after it has halted
* At each time i, each cell contains exactly one symbol
* At time 0, the computation is in the start state, looking aat the first cell, x is written on the tape: Q<sub>0,0</sub> &and; H<sub>0,0</sub> &and; a conjunction over j &lt; |x| that S<sub>0,j,[xj]</sub> amd a conjunction over j &notin; [0, |x|] S<sub>0,j,B</sub>.
* The machine performs its actions correctly
    * Conjunction over i of A<sub>i,staya</sub> &rarr; (Q<sub>i,accept</sub> &and; Q<sub>i+1,accept</sub>)
    * Similar for staying in the reject state
    * Action is &lang;q<sub>x</sub>, s<sub>y</sub>, s<sub>z</sub>, q<sub>w</sub>&rang;: A conjunction over i&hellip;
* At step N, you have to be in the accept state

####CNF-SAT and 3-CNF-SAT

Both are NP-complete, but are for simpler formulas/are simpler.

Definition: A formula &Phi; is in conjunctive normal form (CNF) if it is a conjunction of disjunctions of literals.

Definiton: &Phi; is in k-conjunctive normal form (k-CNF) if every clause has &le;k literals.

Definition: CNF-SAT (or k-CNF-SAT) is given by:

* Input: A forumala &Phi; in CNF (or k-CNF)
* Question: Is &Phi; satisfiable?

Proof: CNF-SAT is NP-hard

It's possible to turn the SAT formula previously into a CNF formula.

CNF-SAT is NP because SAT is NP, and CNF-SAT is "easier" than SAT.

Proof: 3-CNF-SAT (3-SAT) is NP-complete

If you have a formula written (A &or; B &or; C &or; D) &hArr; (A &or; B &or; Z) &and; (C &or; D &or; &not;Z) &mdash; the formulas aren't technically equivalent, because Z is in one of them, but one side is true if and only if the other is true.

(A &or; B &or; C &or; D &or; E) &hArr; (A &or; B &or; Z) &and; (C &or; D &or; E &or; &not;Z) &hArr; (A &or; B &or; Z) &and; (C &or; D &or; Y) &and; (E &or; &not;Z &or; &not;Y) etc.

This expands in linear time, in face something like &times;3 or &times;6, depending on how you look at it.

Corollary: For k&ge;3, k-CNF-SAT is NP-complete.

Theorem: For k = 1 or k = 2, k-CNF-SAT &isin; P.

Proof for k = 1: We just have a conjunction of literals, so so long as no literal appears both as it's standard form and its negation. Checking this takes polynomial time, and indeed approximately quadratic time.

We might double back later for k = 2.

###Some NP-complete proofs

####The Clique problem

Definition: Given a graph G, with verticies V, a k-clique is a subset U &sube; V with exactly k elements, such that any two elements of U are joined by an edge in G.

Every element is a 1-clique; any two elements joined by an edge make a 2-clique; a triangle makes a 3-clique; a square with a cross in it makes a 4-clique etc.

Definition of the clique problem:

* Input: Graph G, number k
* Output: Does G have a k-clique?

Theorem: The clique problem is NP-complete

(However, any given k-clique problem &isin; P.)

Proof: The clique problem is NP

Build a machine that nondeterministically selects k elements of G, then checks if they are a clique. The first part is linear, the second is quadratic.

Theorem: CNF-SAT &le;<sup>p</sup><sub>m</sub> Clique

&Phi; in CNF &rarr; graph G of number k, i.e. converting a problem of the CNF-SAT type to a Clique problem, and proving that the CNF-SAT problem is polynomial-time computable if and only if the Clique problem is.

* &Phi; is a formula in conjunctive normal form, e.g. (A &or; B &or; &not;C) &and; (A &or; &not;B) &and; (B &or; C)
* k = the number of clauses in &Phi;
* The vertices in G will be the occurrences of literals in &Phi;&mdash;if the same literal occurs more than once, they will have two different nodes in G. In our example the nodes will be A, B, &not;C, A, &not;B, B, C.[^nodelabelling]
* We put an edge between two vertices if they are in different clauses and they aren't the negations of each other

[^nodelabelling]: As there can be only one of an element in a set, the set can be considered {0, 1, 2, 3&hellip;}, but _labelled_ with A, B, &not;C etc.

Claim: G has a k-Clique if and only if &Phi; is satisfiable

Proof: &rArr; We have k clauses, so if we make all the literals in a clique true&mdash;and the rest whichever&mdash;we satisfy our formula, because nothing is connected to anything in the same clause or it's inverse.

Note that you can't always generate a CNF &Phi; by the reverse process.

&lArr; If the formula is satisfiable, then pick some way to satisfy it. You must have made at least one thing from every clause true. The fact that it's possible to do that means that you can find that clique in the graph.

####Independent sets

Given a graph G = (V, E), where V is the vertices and E is the edges, an independent set is a subset U &sube; V such that no two elements of U are connected by an edge.

The _Independent Set Problem_ is:

* Input: Graph G, number k
* Question: Does G have an independent set of size k?

Theorem: The independent set problem is NP-complete (proof: homework). It's the inverse of the clique problem.

####The colourability problem

Definition: C is a finite set of colours, G = (V, E) is a graph. A colouring of G is a map from &Chi;: V &rarr; C such that if you have two vertices joined by an edge they have different colours.

Definition: if k is an integer, the K colourability problem (written k-Col) is given by:

* Input: A graph G
* Question: Is G k-colourable

Note: k is not part of the input

Observation: If k = 0, 1, or 2, then k-Col &isin; P &mdash; a graph is 0-Col if and only if it has not vertices; it is 1-Col if and only if there are no edges; if k = 2 then there is a little bit of work to do.

Proof that 2-Col &isin; P:

Start with some graph, pick two colours, pick a vertices, and start colouring from there. Continue until the entire graph is coloured, or you colour two adjacent things the same colour. If that happens then you know whether or not it is possible to colour the graph at all. This takes quadratic time, because you have to search for each edge.

Theorem: if k &ge; 3 then k-Col is NP-complete.

First, k-Col is always &isin; NP. Nondeterministically colour the entire graph, then check if you coloured it right&mdash;this happens to be linear time.

Second, k-Col is NP-hard:

Lemma 1: if k &ge; 3, then 3-Col &le;<sup>p</sup><sub>m</sub> k-Col.

Lemma 2: 3-CNF-SAT &le;<sup>p</sup><sub>m</sub> 3-Col.

#####Proof of Lemma 1

We start with a graph G, which we turn into G&prime;. Then we prove that G is 3-colourable &hArr; G' is k-colourable. That is, we convert the G problem to the G&prime; one, and if the G&prime; is solvable.

To convert, add to G a k-3 clique, and connect each point of the clique to G. You have to spend k-3 of your colours on the clique, and are only left with 3 to colour the original G. If you can colour G with three colours you can colour G&prime; and vice versa.

#####Proof of Lemma 2

Start with a propositional formula &Phi; in 3-CNF and convert it to a graph G. &Phi; is satisfiable if and only if G is 3-colourable.

Begin by drawing three nodes, R, G, and B. For every propositional variable P &isin; &Phi;, we draw three nodes P, &not;P, and B (the same B as before). These form the central triangle and the variable triangles. The variable triangles all radiate out from the B vertex of the central triangle. If P is true we colour it green and &not;P red, and the other way around if &not;P is true.

Clause gadgets: If (X &or; Y &or; Z) is a clause in &Phi;. X, Y, and Z are literals, and they are the same node as in the variable traingle. The clause gadget ensures that at least one of the literals in the clause must be coloured green (i.e. is true). It can be shown that if X, Y, and Z are all red, then you cannot colour the clause gadget, while if any one of them is green then you can.

If the formula is satisfiable then you can assign the variable triangles then all of the clause gadgets are colourable, and vice versa.

####Planar graphs

Definition: A planar graph is a graph that you can draw in a plane, without any edge crossing.

The _planar_ k-colourability problem, written k-Col (planar), is given by:

* Input: a planar graph G
* Question: does G have a k-colouring?

Theorem: If k &ne; 3, then k-Col (planar) &isin; P.

Proof: We've already done k = 0, 1, 2 because k-Col &isin; P for those values of k regardless of the graph. If k &ge; 4 then k-Col (planar) is actually constant-time solvable, by the algorithm: accept. Any planar graph can be four-coloured, and so it can be coloured by more than four colours.[^Fourcolourtheorem] This is a case of an optimal solution being non-obvious, and of a problem not having an obvious increase/decrease of hardness with increase of a parameter.

[^Fourcolourtheorem]: There is no intuitive proof for the four colour theorem, but it is the one that states that you can colour any map of contiguous countries on a plane with four colours. It required a computer to prove, having reduced it to several thousand cases. There is, however, an intuitive proof for the five-colour problem. Maps are usually coloured with at least five colours, to give choices and to deal with the ascetics of a four-way border cross.

Theorem: 3-Col (planar) is NP-complete (see tutorial).

####Exact-cover problem

Definition: The exact-cover problem is defined:

* Input: A finite set X, and a family of subsets S of X
* Question: Is there a subset S&prime; &sube; S such that every elements of X lies in exactly one element of S&prime;.

Examples: 

* X = {1, 2, 3, 4}; S = { {1, 3, 4}, {1, 3}, {2, 4} }. Here, X has an exact cover S&prime; = { {1, 3}, {2, 4} }.
* X = {1, 2, 3, 4}; S = { {1, 3, 4}, {1, 3}, {1, 2, 4}, {1, 4} }. Here X has no exact cover, because you would need at least two sets in S, and every set has a 1 in it.

Theorem: Exact cover is NP-complete

Proof: First need to show that exact cover &isin; NP. Non-deterministically build a subset S&prime; &sube; S, then check if every element of X is in exactly one element of S&prime;.

NP-hardness: We show that 3-Col &le;<sup>p</sup><sub>m</sub> exact cover.

Start with a graph G = (V, E). We build sets X, S such that this has an exact cover if and only if this is 3-colourable.

X = {1, 2, 3, 4, and then elements of each colour for each edge e.g. |, /, \, &mdash;}.

####Subset sum and partition problems

Definition: The subset sum problem is defined:

* Input: A finite set S, a weight function w : S &rarr; &#8469;, a target integer B
* Question: is there a subset S&prime; &sube; S, such that &Sum;{a &isin; S&prime;} w(a) = B?

Definition: The partition problem is defined:

* Input: A finite set S, w : S &rarr; &#8469;
* Question: is there an S&prime; &sube; S such that &Sum; {a &isin; S&prime;} w(a) = &Sum;{a &isin; S - S&prime;} w(a).

Before we show that they are NP-complete, we will show that they are equivalent.

Theorem: Subset sum &equiv;<sup>p</sup><sub>m</sub> Partition

Proof: Partition &le;<sup>p</sup><sub>m</sub> Subset sum. Given an instance S, w of Partition, let B equal (&Sum;{a &isin; S) w(a))/2. This subset sum problem is solvable if and only if the partition problem is solvable.

Proof: Subset sum &le;<sup>p</sup><sub>m</sub> Partition:

Given an instance S, w, B of Subset sum create an instance S&prime;, w&prime; of partition. S&prime; = S with two new elements, and the weights B + 1, N - B + 1, where N is the total weight of all the elements of S. These two elements cannot be placed on the same side, because they are greater than all other elements combined. In order to balance you need to add N - B-worth to the side with B + 1, and B-worth to the side with N - B + 1. This can only be done if a subset of S of size B can be created, i.e. if and only if subset sum was solvable.

Theorem: Subset sum (and therefore Partition) is NP-complete:

Proof: Subset sum &isin; NP. Nondeterministally select a subset, add up the weights, and see if they weigh the correct amount.

Proof: Subset sum is NP-hard. We reduce exact cover &le;<sup>p</sup><sub>m</sub> subset sum. Start with an instance X, S of exact cover. X = {0, 1, 2, &hellip;. m - 1} (if it isn't, we translate it into that set). We build our instance of subset sum by taking S from exact cover and using it as the S in subset sum, we need a w &rarr; &#8469; and a B. Let n = the number of elements in S, + 1. If A &isin; S, we define w(A) = &Sum;{x &isin; A} n<sup>x</sup>. e.g. if A = {0, 1, 5}, in base n would be 100011. Our target sum B = &Sum;{x = 0 to m - 1} n<sup>x</sup>, which in base n would look like 1111111111&hellip; for n 1's. An exact cover would look like a exactly one 1 in each column when adding together. Because n is greater than the number of elements in S, adding them together will never cause you to carry a 1, so this is the only way to get the string of 1's.

####The Knapsack problem

Definition: The knapsack problem:

* Input: a finite set S, a weight function w : S &rarr; &#8469;, a benefit function b : S &rarr; &#8469;, a weight limit W, a desired benefit B.
* Question: Is there an S&prime;&sube;S such that &Sum; {a &isin; S&prime;} w(a) &le; W; &Sum;{a &isin; S&prime;} b(a) &ge; B?

Theorem: Knapsack is NP-complete

Proof: Knapsack &isin; NP. Nondeterministically choose S&prime;, check weight/benefit.

Proof: Knapsack is NP-hard: subset sum &le;pm knapsack. Given an instance S, w, B of subset sum, w = w, b = w, W = B, B = B. The question now becomes can you make a subset that is at most B, and at least B.

####The bin packing problem

Definition: The bin packing problem:

* Input: a finite set S, a weight function w : &rarr; &#8469;, a bin size B &isin; &#8469;, number k
* Question: can you divide S into at most k bins, with each bin holding at most B weight?

Theorem: bin packing is NP-complete

Proof: bin packing &isin; NP: take your things, distribute them into k bins, see if they are all in the weight limit.

Proof: bin packing is NP-hard: Partition &le;pm Bin-packing. Given an instance S, w of partition, give ourselves two bins that can contain half the total weight n of set S.

####The vertex cover problem

A vertex cover is a set of vertices, such that every edge in the entire graph touches at least one of those vertices.

Definition: The vertex cover problem is defined:

* Input: Graph G, number k
* Question: Is there a vertex cover of G of size k?

Theorem: Vertex cover is NP-complete

Proof: If _G = (V, E)_ is a graph, then _U_ is a vertex cover if and only if _V - U_ is an independent set. Therefore, vertex cover &equiv;<sup>p</sup><sub>m</sub> independent set. G, k &rarr; G, |V| - k converts between both. Note that the prove that polynomial time equivalancy to an NP-complete problem makes the other problem also NP-complete has not been proved so far, but is instead in the homework.

####The Hamiltonian Circuit problem

Given a finite graph G, a Hamiltonian circuit is a circuit (loop) that visits every vertex in G exactly once. The graph may be directed or undirected (though we have done nothing with directed circuits).

Definition: The Hamiltonian Circuit problem is:[^CapitalHamilton]

[^CapitalHamilton]: Hamilton is a person's name; the Hamiltonian Circuit problem is capitalised; a Hamiltonian circuit is not.

* Input: Graph G
* Question: Is there a Hamiltonian circuit?

Theorem: Hamiltonian Circuit is NP-complete

Proof: NP: Non-deterministically build a path, stop when you get back to some place you were (or the path is exactly the number of vertices long), check. Takes at most O(|V|) many steps; each step takes at most O(|E|) long to figure out your choices before making a choice.

Proof: NP-hard:

This requires a bunch of gadgets, and involves reducing vertex cover to Hamiltonian Circuit.

Vertex Cover &le;<sup>p</sup><sub>m</sub> Hamiltonian Circuit.

G = (V, E), k &rarr; H.

H: For every edge in E, we build a gadget involving twelve points where you must exit in a specific way, going through the entire bottom but none of the top, or go though all twelve points. See notes for diagram. One side is said to belong to one the two vertexes that make the edge ('U'), the other to the other.

For every vertex in V, we string together all the 'U' sides of all the gadgets of edges touching U. This makes a U loop, which is actually a string.

Add k additional dummy vertices, where every dummy vertex is connected to the beginning of every U loop, and the end of every U loop.

Claim: If there is a vertex cover u<sub>1</sub>, &hellip;, u<sub>k</sub>, of size k, then we can build a Hamiltonian circuit in H.

#####The Hamiltonian Circuit solution problem

How hard is it to find a Hamiltonian circuit in a graph that has one?

Theorem: If we could solve the Hamiltonian Circuit problem in polynomial time, then we could find a Hamiltonian circuit in polynomial time.

Note: It's trivial that if we could find a circuit in polynomial time then we could prove that one existed in polynomial time, and the same is true with NP-complete problems generally, however the reverse is not always true.

####Travelling salesman problem

Definition: The Travelling salesman problem (TSP) is given by:

* Input: A directed or undirected graph G = (V, E); a weight function w : E &rarr; &#8469;; and a number k.
* Question: is there a circuit that hits all vertices, so that the circuit has weight &le; k?

This is the way to phrase it as a decision problem, rather than the more well-known solution problem version. This is also interchangable with the version where there must be a path between every two vertex, which simplifies the solution problem as it means there is always _a_ solution merely more and less optimal ones.

Theorem: The Travelling salesman problem is NP-complete

The proof that it is NP-hard is easier than the proof that it is NP.

Proof NP-hard: Hamiltonian circuit &le;<sup>p</sup><sub>m</sub> TSP. Given an instance of Hamiltonian circuit, use the same graph, give each edge weight 1, and let the target number k be equal to |V| (the number of vertices in G). If there is a travelling salesman solution then there is a way to visit all cities (vertices), and because k is the number of cities then you must not revisit the same city twice.

Proof NP: You want to construct some kind of a path in polynomial time, but it seems like this might take exponential time. K, given to us in binary, can grow in size exponentially as it grown in length, so just stopping after reaching k doesn't work. But note: in any optimal solution you never have to visit any vertex more than |V|-many times, because if you're not visiting any city you haven't visited before at each revisit then you can just remove that part of the graph; this provides a polynomial bound. So we polynomially build a path of length at most |V|<sup>2</sup>, then check if it works. We could probably find a lower bound, but we just need _a_ bound.

#####Travelling salesman solution problem

The travelling salesman solution problem is defined:

* Input: Strongly connected graph G = (V, E); weight function w : E &rarr; &#8469;
* Question: Find an optimal solution (the solution with the smallest weight).

Theorem: given a polynomial time oracle for TSP, we could solve the travelling salesman solution problem in polynomial time.

There are two big steps. Step 1 is find the optimal k; while step 2 is find the solution with that k. 

First we find a k<sub>0</sub> that is big enough that there _must_ be a solution. One option is to multiply the largest weight by |V|<sup>2</sup>. The size of k<sup>0</sup> in your input is polynomial time, but the value may be exponential. This means that you can't just decrease by one until it finds the lowest, as this may take exponentially many steps. Instead, we do divide and conquer; the total number of steps that this takes is the log of the number, which is linear in its length.

For step 2 we need to double the size of all the weights, to ensure that all are at least 2, and double the size of k accordingly. We do this so that we can put dots in the middle to test whether the path goes through that edge&mdash;adding a city in the middle of a road forces the algorithm to go through this road. If the new graph has a solution, then the old graph goes through that edge. Then we need to know if the graph _uses this edge more than once_, which we didn't need to know for Hamiltonian circuits. We do this by adding another path between the two edges of the same length, divided by another new city. We can keep doing this until we know how many times it goes over that edge, which is bounded by at most |V| (really much smaller: just 2). We can do this for all edges, one at a time, which gives us the information of both how many times we use each edge and which edges we use. We can turn this into a circuit in polynomial time, using the new graph we created.

###Time bounds for computations

From one of the assignments, we made a Turing machine that orders a string of 1's and 0's so that there is a list of 1's and a list of 0's.

* "It runs in O(|x|<sup>2</sup>) time because it runs in O(|x|) &times; O(|x|) time." This just rephrases the question, so 0/3 marks
* "&hellip;it takes O(|x|) time to move each 1, and there are O(|x|) 1's." 2/3; not quite enough detail.
* "&hellip;it needs to find a 1, carry it to the left, and drop it off (O(|x|)), and it needs to do this for at most |x| 1's, and then it needs to move all the way right. This makes (O(|x|) + O(|x|))&times;O(|x|) + O(|x|) = O(|x|<sup>2</sup>)." Perfectly acceptable; 3/3. Better though to state explicit _bounds_.
* "&hellip;the longest possible runtime is on a string of n 0's followed by n 1's, and on such a string, the runtime is&hellip;" 1/3 points: two issues, it may not actually be true&mdash;there may be actually longer runtimes from slightly more 1's than 0's. Second, you haven't actually proved that the total time is always O(|x|<sup>2</sup>). This can be turned into 2/3 and 3/3 answers, but it takes vastly more effort than it ought to.

##Godel's First Incompleteness Theorem

Optional lecture at the end of the trimester (Wednesday 1st of June 2016). Godel has two dots over the o.

Theorem: (Godel's first incompleteness theorem)

Idea: for every sufficiently strong proof system[^proofsystem] (or theory) there will always be at least one true statement that is unprovable by the proof system.

[^proofsystem]: A set of axioms, and rules of inference.

###Historical context

Historical context: was hated by logicians when proved, "destroyed logic." Before it was proved, the idea of logic was to create a single axiomatic system that encompassed all of mathematics and could prove any true concept. If that could be done you could make a machine that could search for proofs; if your proof system wasn't strong enough you could always make it more robust and able to prove more things. Godel's first incompleteness theorem shows that you will never be able to do that. Instead logic has branched out from there.

###Properties of our proof system

What does "sufficiently strong" mean? For one, it can mean "stronger than Peano arithemetic."

Properties of our proof system:

* It can talk about Turing machines (Can make the sentence &phi;<sub>n</sub>(n)&darr;, even if it can't prove it). Where "sufficently strong" is replaced by "stronger than PA", this statement takes 90% of the proof. However, we've already seen how to model Turing machine in propositional logic, and first order logic allows us to model halting.
* It is valid: It doesn't prove false statements. But what does it mean for a statement to be false? Formally: it doesn't prove false statements concerning whether or not Turing machines halt. In the "stronger than PA" case it would mean "doesn't prove false statements about natural numbers."
* It is computable: Given a proof, there is a way of checking whether or not it is a proof. Any proof system people use is computable, because you otherwise would not be able to use it. The proof can be made to work if the proof system is merely _computably enumerable_, but nobody actually uses these. This is because you only need to be able to show that purported proofs are really proofs, and not reject false proofs.

###"This sentence is unprovable"

We would like to write the liar paradox, but you can't actually do that&mdash;this is the next best thing. We'll call it "S". If S _can_ be proved, then it's false, but we can't prove things that are wrong. But how do we build it?

Consider the Turing machine that searches for a proof of S, and halts if it finds such a proof. That machine halts. This sort of works, but isn't very good. We'd need to prove the recursion theorem over sentences in our proof system, but we'd rather not know anything about it.

Better: Build an algorithm which, on input n, does the following:

* It writes Sn = "&phi;<sub>n</sub>(n)&uarr;" = &not;"&phi;<sub>n</sub>(n)&darr;"
* It searches for a proof of S<sub>n</sub>. If it finds such a proof, it halts.

This algorithm is carried out by some Turing machine &phi;<sub>m</sub>. What does &phi;<sub>m</sub>(m) do? The statement S is S<sub>m</sub>. The value of m will change depending on the proof system, but it _will always exist_.

###Godel's Second Incompleteness Theorem

Idea: For any sufficiently strong proof system, the proof system cannot prove its own consistency.

No proof system can prove that it cannot prove itself false. E.g. you can have Con-PA, PA + "PA is consistent," but this cannot prove that Con-PA is provable, so you need Con-Con-PA, etc.

##Exam practise

###State and prove Rice's theorem

> The only computable index sets are &#8469; and &empty;

Suppose A were a computable index set, and that A &ne; &#8469; and A &ne; &empty;. Since A &ne; &#8469; there exists an e<sub>0</sub> &notin; A; since A &ne; &empty; there exists an e<sub>1</sub> &isin; A. Since A is computable we can fix an e<sub>0</sub> and e<sub>1</sub>.

We want to build an _n_ such that &phi;<sub>n</sub>(x) = {&phi;<sub>e<sub>0</sub></sub>(x), if n &isin; A; &phi;<sub>e<sub>1</sub></sub>(e), if n &notin; A}

To do so, create an h(x, y) = {&phi;<sub>e<sub>0</sub></sub>(y), if x &isin; A; &phi;<sub>e<sub>1</sub></sub>(y) if x &notin; A}

An algorithm for h:

1. Run &Chi;<sub>A</sub>(x)
2. If &Chi;<sub>A</sub>(x) = 1, run and output &phi;<sub>e<sub>0</sub></sub>(y)
3. Else, run and output &phi;<sub>e<sub>1</sub></sub>(y)

By the s-m-n theorem, there is a total computable _s_ with &phi;<sub>s(x)</sub>(y) = h(x, y). By the recursion theorem there is an _n_ with &phi;<sub>n</sub>(y) = &phi;<sub>s(n)</sub>(y)&mdash;this is the n we want.

&phi;<sub>n</sub>(y) = h(n, y) = {&phi;<sub>e<sub>0</sub></sub>(y), if n &isin; A; &phi;<sub>e<sub>1</sub></sub>(y) if n &notin; A}

Then n &isin; A &rArr; &phi;<sub>n</sub> = &phi;<sub>e<sub>0</sub></sub> &rArr; n &notin; A, and n &notin; A &rArr; &phi;<sub>n</sub> = &phi;<sub>e<sub>1</sub></sub> &rArr; n &isin; A. This is a contradiction, so A does not exist.

###M-reducibility

2014 Q2A:

> i. Define the term: A is m-reducible to C, A &le;<sub>m</sub> C

A is m-reducible to C if there is a total computable &fnof;, such that x &isin; A &harr; &fnof;(x) &isin; C.

> ii. Using the s-m-n theorem, or otherwise, show that K &le;<sub>m</sub> D, where K = {x | &phi;<sub>x</sub>(x)&darr;} and D = {x | &phi;<sub>x</sub>(x<sup>3</sup>)&darr;}

&fnof;(x, y):

1. Run &phi;x(x<sup>3</sup>)
2. Halt and output the result

&fnof;(x, y)&darr; &harr; &phi;x(x<sup>3</sup>)&darr; &harr; x &isin; D

By s-m-n &exist; some function s(x) such that &fnof;(x, y) = &phi;<sub>s(x)</sub>(y), where s is a totally computable injective function.

&phi;<sub>s(x)</sub>(s(x)) = &phi;<sub>s(x)</sub>(y) &forall;y = &fnof;(x, y) = &phi;<sub>x</sub>(x<sup>3</sup>)

&phi;<sub>x</sub>(x)&darr; &harr; x &isin; K; &phi;<sub>s(x)</sub>(s(x))&darr; &harr; s(x) &isin; K?

Somehow, this s(x) is the function we need, but I don't really get it&hellip;

###Primitive recursion

2013 Q1b

> Prove that g(x) = (x + 3)! + 1 is primitive recursive

* x + 3 is primitive recursive because x + 3 = S(S(S(x)))
* x + 1 is primitive recursive because x + 1 = S(x)
* x! is primitive recursive:
    * Consider g&prime;(u, x) = g(x) = x!
    * Define &fnof;(u) = 1
    * Take x &times; y to have already been proven primitive recursive
    * Define h(u, x, z) = &times;(P<sub>2</sub>(u, x, z), P<sub>3</sub>(u, x, z)) = x &times; z
    * Define g&prime;(u, x):
	    * g&prime;(u, 0) = &fnof;(u)
	    * g&prime;(u, n + 1) = h(u, n + 1, g&prime;(u, n))
    * This function does x!, by induction on x:
	    * 0! = g&prime;(u, 0) = 1
	    * (x + 1)! = g&prime;(u, x + 1) = h(u, x + 1, g&prime;(u, x)) = (x + 1) &times; x!
* (x + 3)! + 1 is primitive recursive by substitution 

##Footnotes
