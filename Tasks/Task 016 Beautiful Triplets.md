# Beautiful Triplets

[Judge System](https://www.hackerrank.com/challenges/beautiful-triplets/problem)

Given a sequence of integers <img src="https://latex.codecogs.com/svg.latex?\Large&space;a">, a triplet <img src="https://latex.codecogs.com/svg.latex?\Large&space;(a[i],a[j],a[k])"> is beautiful if:

- <img src="https://latex.codecogs.com/svg.latex?\Large&space;i<j<k">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;a[j]-a[i]=a[k]-a[j]=d">

Given an increasing sequenc of integers and the value of <img src="https://latex.codecogs.com/svg.latex?\Large&space;d">, count the number of beautiful triplets in the sequence.

For example, the sequence <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr=[2,2,3,4,5]"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;d=1">. There are three beautiful triplets, by index: <img src="https://latex.codecogs.com/svg.latex?\Large&space;[i,j,k]=[0,2,3],[1,2,3],[2,3,4]">. To test the first triplet, <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr[j]-arr[i]=3-2=1"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr[k]-arr[j]=4-3=1">.

#### Function Description

Complete the beautifulTriplets function in the editor below. It must return an integer that represents the number of beautiful triplets in the sequence.

beautifulTriplets has the following parameters:

- d: an integer
- arr: an array of integers, sorted ascending

#### Input Format

The first line contains <img src="https://latex.codecogs.com/svg.latex?\Large&space;2"> space-separated integers <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;d">, the length of the sequence and the beautiful difference.<br>
The second line contains <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> space-separated integers <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr[i]">.

#### Constraints
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{n}\le{10^4}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{d}\le{20}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;0\le{arr[i]\le{2\tims{10^4}}}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr[i]>arr[i-1]">

#### Output Format

Print a single line denoting the number of beautiful triplets in the sequence.

#### Sample Input
````
7 3
1 2 4 5 7 8 10
````
#### Sample Output
````
3
````
#### Explanation

The input sequence is <img src="https://latex.codecogs.com/svg.latex?\Large&space;1,2,4,5,7,8,10">, and our beautiful difference <img src="https://latex.codecogs.com/svg.latex?\Large&space;d=3">. There are many possible triplets <img src="https://latex.codecogs.com/svg.latex?\Large&space;(arr[i],arr[j],arr[k])">, but our only beautiful triplets are <img src="https://latex.codecogs.com/svg.latex?\Large&space;(1,4,7),(4,7,10)">, and <img src="https://latex.codecogs.com/svg.latex?\Large&space;(2,5,8)"> by value not index. Please see the equations below:

<img src="https://latex.codecogs.com/svg.latex?\Large&space;7-4=4-1=3=d"><br>
<img src="https://latex.codecogs.com/svg.latex?\Large&space;10-7=7-4=3=d"><br>
<img src="https://latex.codecogs.com/svg.latex?\Large&space;8-5=5-2=3=d">

Recall that a beautiful triplet satisfies the following equivalence relation:

<img src="https://latex.codecogs.com/svg.latex?\Large&space;arr[j]-arr[i]=arr[k]-arr[j]=d">, where <img src="https://latex.codecogs.com/svg.latex?\Large&space;i<j<k">. 
