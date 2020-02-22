## Circular Array Rotation

[Judge System](https://www.hackerrank.com/challenges/circular-array-rotation/problem)

John Watson knows of an operation called a right circular rotation on an array of integers. One rotation operation moves the last array element to the first position and shifts all remaining elements right one. To test Sherlock's abilities, Watson provides Sherlock with an array of integers. Sherlock is to perform the rotation operation a number of times then determine the value of the element at a given position.

For each array, perform a number of right circular rotations and return the value of the element at a given index.

For example, array <img src="https://latex.codecogs.com/svg.latex?\Large&space;a=[3,4,5]">, number of rotations, <img src="https://latex.codecogs.com/svg.latex?\Large&space;k=2"> and indices to check, <img src="https://latex.codecogs.com/svg.latex?\Large&space;m=[1,2]">.<br>
First we perform the two rotations:<br>
<img src="https://latex.codecogs.com/svg.latex?\Large&space;[3,4,5]\rightarrow{[5,3,4]}\rightarrow{[4,5,3]}"><br>
Now return the values from the zero-based indices <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;2"> as indicated in the <img src="https://latex.codecogs.com/svg.latex?\Large&space;m"> array.

<img src="https://latex.codecogs.com/svg.latex?\Large&space;a[1]=5"><br>
<img src="https://latex.codecogs.com/svg.latex?\Large&space;a[2]=3">

#### Input Format

The first line contains <img src="https://latex.codecogs.com/svg.latex?\Large&space;3"> space-separated integers, <img src="https://latex.codecogs.com/svg.latex?\Large&space;n">, <img src="https://latex.codecogs.com/svg.latex?\Large&space;k">, and <img src="https://latex.codecogs.com/svg.latex?\Large&space;q">, the number of elements in the integer array, the rotation count and the number of queries.<br>
The second line contains <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> space-separated integers, where each integer <img src="https://latex.codecogs.com/svg.latex?\Large&space;i"> describes array element (where <img src="https://latex.codecogs.com/svg.latex?\Large&space;0\le{i}<n">).<br>
Each of the <img src="https://latex.codecogs.com/svg.latex?\Large&space;q"> subsequent lines contains a single integer denoting , the index of the element to return from <img src="https://latex.codecogs.com/svg.latex?\Large&space;a">.

#### Constraints
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{n}\le{10^5}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{a[i]\le{10^5}}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{k}\le{10^5}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{q}\le{500}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;0\le{m}<n">
#### Output Format

For each query, print the value of the element at index <img src="https://latex.codecogs.com/svg.latex?\Large&space;m"> of the rotated array on a new line.

#### Sample Input 0
```
3 2 3
1 2 3
0
1
2
```
#### Sample Output 0
```
2
3
1
```
#### Explanation 0

After the first rotation, the array becomes <img src="https://latex.codecogs.com/svg.latex?\Large&space;[3,1,2]">.<br>
After the second (and final) rotation, the array becomes <img src="https://latex.codecogs.com/svg.latex?\Large&space;[2,3,1]">.

Let's refer to the array's final state as array <img src="https://latex.codecogs.com/svg.latex?\Large&space;b=[2,3,1]">. For each query, we just have to print the value of <img src="https://latex.codecogs.com/svg.latex?\Large&space;b_m"> on a new line:

1. <img src="https://latex.codecogs.com/svg.latex?\Large&space;m=0">, <img src="https://latex.codecogs.com/svg.latex?\Large&space;b_0=2">

2. <img src="https://latex.codecogs.com/svg.latex?\Large&space;m=1">, <img src="https://latex.codecogs.com/svg.latex?\Large&space;b_1=3">

3. <img src="https://latex.codecogs.com/svg.latex?\Large&space;m=2">, <img src="https://latex.codecogs.com/svg.latex?\Large&space;b_2=1">. 
