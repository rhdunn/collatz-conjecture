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

## Even Numbers

If m is even, it is divided by 2 repeatedly until the result is no
longer even. Thus, it can be expressed as the equation:

<pre><code>m = 2<sup>i</sup>n</code></pre>

where i is an integer greater than 0 and n is an odd number. Therefore,
the Collatz conjecture holds for the even numbers if it also holds for
the odd numbers.

## Odd Numbers

The odd numbers are harder to prove hold under the Collatz conjecture
as the relationship between them is not understood.

## License Information

Copyright (C) 2016-2017 Reece H. Dunn
