## Equalize the Array

[Judge System](https://www.hackerrank.com/challenges/equality-in-a-array/problem)

Karl has an array of integers. He wants to reduce the array until all remaining elements are equal. Determine the minimum number of elements to delete to reach his goal.

For example, if his array is <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr=[1,2,2,3]">, we see that he can delete the <img src="https://latex.codecogs.com/svg.latex?\Large&space;2"> elements <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;3"> leaving <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr=[2,2]">. He could also delete both twos and either the <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> or the <img src="https://latex.codecogs.com/svg.latex?\Large&space;3">, but that would take <img src="https://latex.codecogs.com/svg.latex?\Large&space;3"> deletions. The minimum number of deletions is <img src="https://latex.codecogs.com/svg.latex?\Large&space;2">.

#### Function Description

Complete the equalizeArray function in the editor below. It must return an integer that denotes the minimum number of deletions required.<br>
equalizeArray has the following parameter(s):
- arr: an array of integers

#### Input Format

The first line contains an integer <img src="https://latex.codecogs.com/svg.latex?\Large&space;n">, the number of elements in <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr[i]">.<br>
The next line contains <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> space-separated integers <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr[i]">.

#### Constraints

- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{n}\le{100}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{arr[i]\le{100}}">

#### Output Format

Print a single integer that denotes the minimum number of elements Karl must delete for all elements in the array to be equal.

#### Sample Input
```
5
3 3 2 1 3
```
#### Sample Output
```
2
```
#### Explanation
Array <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr=[3,3,2,1,3]">. If we delete <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr[2]=2"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;arr[3]=1">, all of the elements in the resulting array, <img src="https://latex.codecogs.com/svg.latex?\Large&space;A'=[3,3,3]">, will be equal. Deleting these <img src="https://latex.codecogs.com/svg.latex?\Large&space;2"> elements is minimal. Our only other options would be to delete <img src="https://latex.codecogs.com/svg.latex?\Large&space;4"> elements to get an array of either <img src="https://latex.codecogs.com/svg.latex?\Large&space;[1]"> or <img src="https://latex.codecogs.com/svg.latex?\Large&space;[2]">.
