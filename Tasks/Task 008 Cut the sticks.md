## Cut the Sticks

[Judge System](https://www.hackerrank.com/challenges/cut-the-sticks/problem)

You are given a number of sticks of varying lengths. You will iteratively cut the sticks into smaller sticks, discarding the shortest pieces until there are none left. At each iteration you will determine the length of the shortest stick remaining, cut that length from each of the longer sticks and then discard all the pieces of that shortest length. When all the remaining sticks are the same length, they cannot be shortened so discard them.

Given the lengths of <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> sticks, print the number of sticks that are left before each iteration until there are none left.

For example, there are <img src="https://latex.codecogs.com/svg.latex?\Large&space;n=3"> sticks of lengths <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr=[1,2,3]">. The shortest stick length is <img src="https://latex.codecogs.com/svg.latex?\Large&space;1">, so we cut that length from the longer two and discard the pieces of length <img src="https://latex.codecogs.com/svg.latex?\Large&space;1">. Now our lengths are <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr=[1,2]">. Again, the shortest stick is of length <img src="https://latex.codecogs.com/svg.latex?\Large&space;1">, so we cut that amount from the longer stick and discard those pieces. There is only one stick left, <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr=[1]"> , so we discard that stick. Our lengths are <img src="https://latex.codecogs.com/svg.latex?\Large&space;answer=[3,2,1]">.

#### Function Description

Complete the cutTheSticks function in the editor below. It should return an array of integers representing the number of sticks before each cut operation is performed.

cutTheSticks has the following parameter(s):

- arr: an array of integers representing the length of each stick

#### Input Format

The first line contains a single integer <img src="https://latex.codecogs.com/svg.latex?\Large&space;n">, the size of <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr">.<br>
The next line contains <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> space-separated integers, each an <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr[i]"> where each value represents the length of the <img src="https://latex.codecogs.com/svg.latex?\Large&space;i^{th}"> stick.

#### Output Format

For each operation, print the number of sticks that are present before the operation on separate lines.

#### Constraints
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{n}\le{1000}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{arr[i]}\le{1000}">
#### Sample Input 0
```
6
5 4 4 2 2 8
```
#### Sample Output 0
```
6
4
2
1
```
#### Explanation 0
```
sticks-length        length-of-cut   sticks-cut
5 4 4 2 2 8             2               6
3 2 2 _ _ 6             2               4
1 _ _ _ _ 4             1               2
_ _ _ _ _ 3             3               1
_ _ _ _ _ _           DONE            DONE
```
#### Sample Input 1
```
8
1 2 3 4 3 3 2 1
```
#### Sample Output 1
```
8
6
4
1
```
#### Explanation 1
```
sticks-length         length-of-cut   sticks-cut
1 2 3 4 3 3 2 1         1               8
_ 1 2 3 2 2 1 _         1               6
_ _ 1 2 1 1 _ _         1               4
_ _ _ 1 _ _ _ _         1               1
_ _ _ _ _ _ _ _       DONE            DONE
```
