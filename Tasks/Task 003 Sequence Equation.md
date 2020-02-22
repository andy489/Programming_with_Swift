## Sequence Equation

[Judge System](https://www.hackerrank.com/challenges/permutation-equation/problem)

Given a sequence of <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> integers, <img src="https://latex.codecogs.com/svg.latex?\Large&space;p(1),p(2),...,p(n)"> where each element is distinct and satisfies <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{p(x)}\le{n}">. For each <img src="https://latex.codecogs.com/svg.latex?\Large&space;x"> where <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{x}\le{n}">, find any integer <img src="https://latex.codecogs.com/svg.latex?\Large&space;y"> such that <img src="https://latex.codecogs.com/svg.latex?\Large&space;p(p(y))\equiv{x}"> and print the value of <img src="https://latex.codecogs.com/svg.latex?\Large&space;y"> on a new line.

For example, assume the sequence <img src="https://latex.codecogs.com/svg.latex?\Large&space;p=[5,2,1,3,4]">. Each value of <img src="https://latex.codecogs.com/svg.latex?\Large&space;x"> between <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;5">, the length of the sequence, is analyzed as follows:

1. <img src="https://latex.codecogs.com/svg.latex?\Large&space;x=1\equiv{p[3],p[4]=3}">, so <img src="https://latex.codecogs.com/svg.latex?\Large&space;p[p[4]]=1"><br>
2. <img src="https://latex.codecogs.com/svg.latex?\Large&space;x=2\equiv{p[2],p[2]=2}">, so <img src="https://latex.codecogs.com/svg.latex?\Large&space;p[p[2]]=2"><br>
3. <img src="https://latex.codecogs.com/svg.latex?\Large&space;x=3\equiv{p[43],p[5]=4}">, so <img src="https://latex.codecogs.com/svg.latex?\Large&space;p[p[5]]=3"><br>
4. <img src="https://latex.codecogs.com/svg.latex?\Large&space;x=4\equiv{p[5],p[1]=5}">, so <img src="https://latex.codecogs.com/svg.latex?\Large&space;p[p[1]]=4"><br>
5. <img src="https://latex.codecogs.com/svg.latex?\Large&space;x=5\equiv{p[1],p[3]=1}">, so <img src="https://latex.codecogs.com/svg.latex?\Large&space;p[p[3]]=5"><br>

The values for <img src="https://latex.codecogs.com/svg.latex?\Large&space;y"> are <img src="https://latex.codecogs.com/svg.latex?\Large&space;[4,2,5,1,3]">

#### Input Format

The first line contains an integer <img src="https://latex.codecogs.com/svg.latex?\Large&space;n">, the number of elements in the sequence.<br>
The second line contains <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> space-separated integers <img src="https://latex.codecogs.com/svg.latex?\Large&space;p[i]"> where <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{i}\le{n}">.

#### Constraints
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{n}\le{50}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{p[i]}\le{50}">, where <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{i}\le{n}">.
- Each element in the sequence is distinct.

#### Output Format

For each <img src="https://latex.codecogs.com/svg.latex?\Large&space;x"> from <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> to <img src="https://latex.codecogs.com/svg.latex?\Large&space;n">, print an integer denoting any valid <img src="https://latex.codecogs.com/svg.latex?\Large&space;y"> satisfying the equation <img src="https://latex.codecogs.com/svg.latex?\Large&space;p(p(y))\equiv{x}"> on a new line.

#### Sample Input 0
```
3
2 3 1
```
#### Sample Output 0
```
2
3
1
```
#### Explanation 0

Given the values of <img src="https://latex.codecogs.com/svg.latex?\Large&space;p(1)=2,p(2)=3">, and <img src="https://latex.codecogs.com/svg.latex?\Large&space;p(3)=1">, we calculate and print the following values for each <img src="https://latex.codecogs.com/svg.latex?\Large&space;x"> from <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> to <img src="https://latex.codecogs.com/svg.latex?\Large&space;n">:<br>

1. <img src="https://latex.codecogs.com/svg.latex?\Large&space;x=1\equiv{p(3)}=p(p(2))=p(p(y))">, so we print the value of <img src="https://latex.codecogs.com/svg.latex?\Large&space;y=2"> on a new line.<br>
2. <img src="https://latex.codecogs.com/svg.latex?\Large&space;x=2\equiv{p(1)}=p(p(3))=p(p(y))">, so we print the value of <img src="https://latex.codecogs.com/svg.latex?\Large&space;y=3"> on a new line.<br>
3. <img src="https://latex.codecogs.com/svg.latex?\Large&space;x=3\equiv{p(2)}=p(p(1))=p(p(y))">, so we print the value of <img src="https://latex.codecogs.com/svg.latex?\Large&space;y=1"> on a new line.<br>

#### Sample Input 1
```
5
4 3 5 1 2
```
####vSample Output 1
```
1
3
5
4
2
```
