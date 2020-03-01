## Modified Kaprekar Numbers

[Judge System](https://www.hackerrank.com/challenges/kaprekar-numbers/problem)

A modified Kaprekar number is a positive whole number with a special property. If you square it, then split the number into two integers and sum those integers, you have the same value you started with.

Consider a positive whole number <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> with <img src="https://latex.codecogs.com/svg.latex?\Large&space;d"> digits. We square to arrive at a number that is either <img src="https://latex.codecogs.com/svg.latex?\Large&space;2\times{d}"> digits long or <img src="https://latex.codecogs.com/svg.latex?\Large&space;2\times{d}-1"> digits long. Split the string representation of the square into two parts,<img src="https://latex.codecogs.com/svg.latex?\Large&space;l"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;r">. The right hand part,<img src="https://latex.codecogs.com/svg.latex?\Large&space;r"> must be <img src="https://latex.codecogs.com/svg.latex?\Large&space;d"> digits long. The left is the remaining substring. Convert those two substrings back to integers, add them and see if you get <img src="https://latex.codecogs.com/svg.latex?\Large&space;n">.

For example, if <img src="https://latex.codecogs.com/svg.latex?\Large&space;n=5,d=1">, then <img src="https://latex.codecogs.com/svg.latex?\Large&space;n^2=25">. We split that into two strings and convert them back to integers <img src="https://latex.codecogs.com/svg.latex?\Large&space;2"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;5">. We test <img src="https://latex.codecogs.com/svg.latex?\Large&space;2+5=7\neq{5}">, so this is not a modified Kaprekar number. If <img src="https://latex.codecogs.com/svg.latex?\Large&space;n=9">, still <img src="https://latex.codecogs.com/svg.latex?\Large&space;d=1">, and <img src="https://latex.codecogs.com/svg.latex?\Large&space;n^2=81">. This gives us <img src="https://latex.codecogs.com/svg.latex?\Large&space;1+8=9">, the original <img src="https://latex.codecogs.com/svg.latex?\Large&space;n">.

**Note:** r may have leading zeros.

Here's an explanation from Wikipedia about the **ORIGINAL** [Kaprekar Number](https://en.wikipedia.org/wiki/Kaprekar_number) (spot the difference!):

    In mathematics, a Kaprekar number for a given base is a non-negative integer, the representation of whose square in that base can be split into two parts that add up to the original number again. For instance, 45 is a Kaprekar number, because 45² = 2025 and 20+25 = 45.

Given two positive integers <img src="https://latex.codecogs.com/svg.latex?\Large&space;p"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;q"> where <img src="https://latex.codecogs.com/svg.latex?\Large&space;p"> is lower than <img src="https://latex.codecogs.com/svg.latex?\Large&space;q">, write a program to print the modified Kaprekar numbers in the range between <img src="https://latex.codecogs.com/svg.latex?\Large&space;p"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;q">, inclusive.

#### Input Format

The first line contains the lower integer limit <img src="https://latex.codecogs.com/svg.latex?\Large&space;p">.
The second line contains the upper integer limit <img src="https://latex.codecogs.com/svg.latex?\Large&space;q">.

**Note:** Your range should be inclusive of the limits.

#### Constraints
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;0<p<q<100,000">

#### Output Format

Output each modified Kaprekar number in the given range, space-separated on a single line. If no modified Kaprekar numbers exist in the given range, print ``INVALID RANGE``.

#### Sample Input
````
1
100
````
#### Sample Output
````
1 9 45 55 99
````
#### Explanation

<img src="https://latex.codecogs.com/svg.latex?\Large&space;1,9,45,55"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;99"> are the Kaprekar Numbers in the given range.
