## Sherlock and Squares

[Judge System](https://www.hackerrank.com/challenges/sherlock-and-squares/problem)

Watson likes to challenge Sherlock's math ability. He will provide a starting and ending value describing a range of integers. Sherlock must determine the number of square integers within that range, inclusive of the endpoints.

**Note:** A square integer is an integer which is the square of an integer, e.g. <img src="https://latex.codecogs.com/svg.latex?\Large&space;1,4,9,16,25">.

For example, the range is <img src="https://latex.codecogs.com/svg.latex?\Large&space;a=24"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;b=49">, inclusive. There are three square integers in the range: <img src="https://latex.codecogs.com/svg.latex?\Large&space;25,36"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;49">.

#### Function Description

Complete the squares function in the editor below. It should return an integer representing the number of square integers in the inclusive range from <img src="https://latex.codecogs.com/svg.latex?\Large&space;a"> to <img src="https://latex.codecogs.com/svg.latex?\Large&space;b">.

squares has the following parameter(s):

- a: an integer, the lower range boundary
- b: an integer, the uppere range boundary

#### Input Format

The first line contains <img src="https://latex.codecogs.com/svg.latex?\Large&space;q">, the number of test cases.<br>
Each of the next <img src="https://latex.codecogs.com/svg.latex?\Large&space;q"> lines contains two space-separated integers denoting <img src="https://latex.codecogs.com/svg.latex?\Large&space;a"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;b">, the starting and ending integers in the ranges.

#### Constraints

<img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{q}\le{100}"><br>
<img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{a}\le{b}\le{10^9}">

#### Output Format

For each test case, print the number of square integers in the range on a new line.

#### Sample Input
```
2
3 9
17 24
```
#### Sample Output
```
2
0
```
#### Explanation

Test Case #00: In range <img src="https://latex.codecogs.com/svg.latex?\Large&space;[3,9]">, <img src="https://latex.codecogs.com/svg.latex?\Large&space;4"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;9"> are the two square integers.<br>
Test Case #01: In range <img src="https://latex.codecogs.com/svg.latex?\Large&space;[17,24]">, there are no square integers.
