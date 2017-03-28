# The Collatz Conjecture

The Collatz conjecture defines a function c such that:

	c(x) = 3x + 1 if x is odd
	c(x) = x/2    if x is even

For a given starting value s, the sequence x<sub>i</sub> is given
by:

<pre><code>
x<sub>0</sub> = s
x<sub>n</sub> = c(x<sub>n-1</sub>)
</code></pre>

There is a trivial loop `[1, 4, 2]` when x is 1. The Collatz conjecture
states that all other integers greater than 0 produce a sequence that
terminates in this trivial loop, i.e. reach 1.

## Pattern #1 -- n=2i (Even Numbers)

If m is even, it is divided by 2 repeatedly until the result is no
longer even. Thus, it can be expressed as the equation:

<pre><code>m = 2<sup>i</sup>n</code></pre>

where i is an integer greater than 0 and n is an odd number. Therefore,
the Collatz conjecture holds for the even numbers if it also holds for
the odd numbers.

## Pattern #2 -- n=2i+1 (Odd Numbers)

The odd numbers are harder to prove hold under the Collatz conjecture
as the relationship between them is not understood.

The [collatz\_odd\_numbers.csv](collatz_odd_numbers.csv) file contains
the odd numbers from 1 to 599 with other information. This is to try
and identify some patterns in the odd numbers.

Given an odd number n, the next number m in the Collatz sequence is
given by:

<pre><code>
   c(n) = 3n+1 = 2<sup>k</sup>m
=>    m = (3n+1)/2<sup>k</sup>
</code></pre>

## Pattern #3 -- n=4i+1

The odd numbers 1, 5, 9, 13, 17, etc. (i.e. those of the form `4i+1`)
appear to always have a value of k>1 and the next odd Collatz number
in the sequence is smaller than n, so will reduce to 1 if the odd
numbers smaller than n also reduce to 1.

For a value of k that is 2 or greater, <code>2<sup>k</sup></code> is
4 or greater. The inequality:

	3n+1 < 4n

always holds, so the next odd number in the Collatz sequence must be
smaller than n if k>1.

It is not clear how to prove that k>1 is always true in this case.

## Pattern #4 -- n=4i+3

The odd numbers 3, 7, 11, 15, 19, etc. (i.e. those of the form `4i+3`)
appear to always have a value of k=1 and the next odd Collatz number
in the sequence is larger than n.

## License Information

Copyright (C) 2016-2017 Reece H. Dunn
