## Append and Delete 

[Judge System](https://www.hackerrank.com/challenges/append-and-delete/problem)

You have a string of lowercase English alphabetic letters. You can perform two types of operations on the string:


1. Append a lowercase English alphabetic letter to the end of the string.
2. Delete the last character in the string. Performing this operation on an empty string results in an empty string.

Given an integer, <img src="https://latex.codecogs.com/svg.latex?\Large&space;k">, and two strings, <img src="https://latex.codecogs.com/svg.latex?\Large&space;s"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;t">, determine whether or not you can convert <img src="https://latex.codecogs.com/svg.latex?\Large&space;s"> to <img src="https://latex.codecogs.com/svg.latex?\Large&space;t"> by performing exactly <img src="https://latex.codecogs.com/svg.latex?\Large&space;k"> of the above operations on <img src="https://latex.codecogs.com/svg.latex?\Large&space;s">. If it's possible, print *Yes*. Otherwise, print *No*.

For example, strings <img src="https://latex.codecogs.com/svg.latex?\Large&space;s=[a,b,c]"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;t=[d,e,f]">. Our number of moves, <img src="https://latex.codecogs.com/svg.latex?\Large&space;k=6">. To convert <img src="https://latex.codecogs.com/svg.latex?\Large&space;s"> to <img src="https://latex.codecogs.com/svg.latex?\Large&space;t">, we first delete all of the characters in <img src="https://latex.codecogs.com/svg.latex?\Large&space;3"> moves. Next we add each of the characters of <img src="https://latex.codecogs.com/svg.latex?\Large&space;t"> in order. On the <img src="https://latex.codecogs.com/svg.latex?\Large&space;6^{th}"> move, you will have the matching string. If there had been more moves available, they could have been eliminated by performing multiple deletions on an empty string. If there were fewer than <img src="https://latex.codecogs.com/svg.latex?\Large&space;6"> moves, we would not have succeeded in creating the new string.

#### Input Format

The first line contains a string <img src="https://latex.codecogs.com/svg.latex?\Large&space;s">, the initial string.<br>
The second line contains a string <img src="https://latex.codecogs.com/svg.latex?\Large&space;t">, the desired final string.<br>
The third line contains an integer <img src="https://latex.codecogs.com/svg.latex?\Large&space;k">, the number of operations.

#### Constraints
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{|s|}\le{100}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{|t|}\le{100}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{k}\le{100}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;s"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;t"> consist of lowercase English alphabetic letters, <img src="https://latex.codecogs.com/svg.latex?\Large&space;ascii[a-z]">.

#### Output Format

Print *Yes* if you can obtain string <img src="https://latex.codecogs.com/svg.latex?\Large&space;t"> by performing exactly <img src="https://latex.codecogs.com/svg.latex?\Large&space;k"> operations on <img src="https://latex.codecogs.com/svg.latex?\Large&space;s">. Otherwise, print *No*.

#### Sample Input 0
```
hackerhappy
hackerrank
9
```
#### Sample Output 0
```
Yes
```
#### Explanation 0

We perform <img src="https://latex.codecogs.com/svg.latex?\Large&space;5"> delete operations to reduce string <img src="https://latex.codecogs.com/svg.latex?\Large&space;s"> to ``hacker``. Next, we perform <img src="https://latex.codecogs.com/svg.latex?\Large&space;4"> append operations (i.e., ``r``, ``a``, ``n``, and ``k``), to get ``hackerrank``. Because we were able to convert <img src="https://latex.codecogs.com/svg.latex?\Large&space;s"> to <img src="https://latex.codecogs.com/svg.latex?\Large&space;t"> by performing exactly <img src="https://latex.codecogs.com/svg.latex?\Large&space;k=9"> operations, we print ``Yes``.

#### Sample Input 1
```
aba
aba
7
```
#### Sample Output 1
```
Yes
```
#### Explanation 1

We perform <img src="https://latex.codecogs.com/svg.latex?\Large&space;4"> delete operations to reduce string <img src="https://latex.codecogs.com/svg.latex?\Large&space;s"> to the empty string (recall that, though the string will be empty after <img src="https://latex.codecogs.com/svg.latex?\Large&space;3"> deletions, we can still perform a delete operation on an empty string to get the empty string). Next, we perform <img src="https://latex.codecogs.com/svg.latex?\Large&space;3"> append operations (i.e., ``a``, ``b``, and ``a``). Because we were able to convert <img src="https://latex.codecogs.com/svg.latex?\Large&space;s"> to <img src="https://latex.codecogs.com/svg.latex?\Large&space;t"> by performing exactly <img src="https://latex.codecogs.com/svg.latex?\Large&space;k=7"> operations, we print ``Yes``.

#### Sample Input 2
```
ashley
ash
2
```
#### Sample Output 2
```
No
```
#### Explanation 2

To convert ``ashley`` to ``ash`` a minimum of <img src="https://latex.codecogs.com/svg.latex?\Large&space;3"> steps are needed.<br> Hence we print ``No`` as answer. 
