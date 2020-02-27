## Repeated String

[Judge System]()

Lilah has a string, <img src="https://latex.codecogs.com/svg.latex?\Large&space;s"> , of lowercase English letters that she repeated infinitely many times.

Given an integer, <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> , find and print the number of letter a's in the first <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> letters of Lilah's infinite string.

For example, if the string <img src="https://latex.codecogs.com/svg.latex?\Large&space;s='abcaac'"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;n-10">, the substring we consider is <img src="https://latex.codecogs.com/svg.latex?\Large&space;abcacabcac">, the first <img src="https://latex.codecogs.com/svg.latex?\Large&space;10"> characters of her infinite string. There are <img src="https://latex.codecogs.com/svg.latex?\Large&space;4"> occurrences of a in the substring.

#### Function Description
Complete the repeatedString function in the editor below. It should return an integer representing the number of occurrences of a in the prefix of length <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> in the infinitely repeating string.

repeatedString has the following parameter(s):
- s: a string to repeat
- n: the number of characters to consider

#### Input Format

The first line contains a single string, <img src="https://latex.codecogs.com/svg.latex?\Large&space;s">. 
The second line contains an integer, <img src="https://latex.codecogs.com/svg.latex?\Large&space;n">.

#### Constraints

- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{|s|}\le{100}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{n}\le{10^12}">
- For <img src="https://latex.codecogs.com/svg.latex?\Large&space;25%"> of the test cases, <img src="https://latex.codecogs.com/svg.latex?\Large&space;n\le{10^6}">.

#### Output Format
Print a single integer denoting the number of letter a's in the first <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> letters of the infinite string created by repeating <img src="https://latex.codecogs.com/svg.latex?\Large&space;s"> infinitely many times.

#### Sample Input 0
```
aba
10
```
#### Sample Output 0
```
7
```
#### Explanation 0 
The first <img src="https://latex.codecogs.com/svg.latex?\Large&space;n=10"> letters of the infinite string are abaabaabaa. Because there are <img src="https://latex.codecogs.com/svg.latex?\Large&space;7"> a's, we print <img src="https://latex.codecogs.com/svg.latex?\Large&space;7"> on a new line.

#### Sample Input 1
```
a
1000000000000
```
#### Sample Output 1
```
1000000000000
```
#### Explanation 1 
Because all of the first <img src="https://latex.codecogs.com/svg.latex?\Large&space;n=1,000,000,000,000"> letters of the infinite string are a, we print <img src="https://latex.codecogs.com/svg.latex?\Large&space;1,000,000,000,000"> on a new line.
