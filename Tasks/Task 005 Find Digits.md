## Find Digits

[Judge System](https://www.hackerrank.com/challenges/find-digits/problem)

An integer <img src="https://latex.codecogs.com/svg.latex?\Large&space;d"> is a divisor of an integer <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> if the remainder of <img src="https://latex.codecogs.com/svg.latex?\Large&space;n(mod(d))=0">.

Given an integer, for each digit that makes up the integer determine whether it is a divisor. Count the number of divisors occurring within the integer.

**Note:** Each digit is considered to be unique, so each occurrence of the same digit should be counted (e.g. for
<img src="https://latex.codecogs.com/svg.latex?\Large&space;n=111">, <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> is a divisor of <img src="https://latex.codecogs.com/svg.latex?\Large&space;111"> each time it occurs so the answer is <img src="https://latex.codecogs.com/svg.latex?\Large&space;3">).

Input Format

The first line is an integer, <img src="https://latex.codecogs.com/svg.latex?\Large&space;t">, indicating the number of test cases.<br>
The <img src="https://latex.codecogs.com/svg.latex?\Large&space;t"> subsequent lines each contain an integer, <img src="https://latex.codecogs.com/svg.latex?\Large&space;n">.

#### Constraints
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{t}\le{15}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;0<n<10^9">

#### Output Format

For every test case, count the number of digits in <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> that are divisors of <img src="https://latex.codecogs.com/svg.latex?\Large&space;n">. Print each answer on a new line.

#### Sample Input
```
2
12
1012
```
#### Sample Output
```
2
3
```
#### Explanation

The number <img src="https://latex.codecogs.com/svg.latex?\Large&space;12"> is broken into two digits, <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;2">. When <img src="https://latex.codecogs.com/svg.latex?\Large&space;12"> is divided by either of those two digits, the remainder is <img src="https://latex.codecogs.com/svg.latex?\Large&space;0"> so they are both divisors.

The number <img src="https://latex.codecogs.com/svg.latex?\Large&space;1012">
is broken into four digits, <img src="https://latex.codecogs.com/svg.latex?\Large&space;1,0,1">, and <img src="https://latex.codecogs.com/svg.latex?\Large&space;2">. <img src="https://latex.codecogs.com/svg.latex?\Large&space;1012"> is evenly divisible by its digits <img src="https://latex.codecogs.com/svg.latex?\Large&space;1,1"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;2">, but it is not divisible by <img src="https://latex.codecogs.com/svg.latex?\Large&space;0"> as division by zero is undefined.
