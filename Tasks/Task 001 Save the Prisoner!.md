## Save the Prisoner!

[Judge System](https://www.hackerrank.com/challenges/save-the-prisoner/problem)

A jail has a number of prisoners and a number of treats to pass out to them. Their jailer decides the fairest way to divide the treats is to seat the prisoners around a circular table in sequentially numbered chairs. A chair number will be drawn from a hat. Beginning with the prisoner in that chair, one candy will be handed to each prisoner sequentially around the table until all have been distributed.

The jailer is playing a little joke, though. The last piece of candy looks like all the others, but it tastes awful. Determine the chair number occupied by the prisoner who will receive that candy.

For example, there are <img src="https://latex.codecogs.com/svg.latex?4"> prisoners and  <img src="https://latex.codecogs.com/svg.latex?6"> pieces of candy. The prisoners arrange themselves in seats numbered <img src="https://latex.codecogs.com/svg.latex?1"> to <img src="https://latex.codecogs.com/svg.latex?4">. Let's suppose two is drawn from the hat. Prisoners receive candy at positions <img src="https://latex.codecogs.com/svg.latex?2,3,4,1,2,3">. The prisoner to be warned sits in chair number <img src="https://latex.codecogs.com/svg.latex?3">.

#### Input Format

The first line contains an integer, <img src="https://latex.codecogs.com/svg.latex?\Large&space;t">, denoting the number of test cases.<br>
The next <img src="https://latex.codecogs.com/svg.latex?t"> lines each contain <img src="https://latex.codecogs.com/svg.latex?\Large&space;3"> space-separated integers:
- <img src="https://latex.codecogs.com/svg.latex?n"> : the number of prisoners
- <img src="https://latex.codecogs.com/svg.latex?m"> : the number of sweets
- <img src="https://latex.codecogs.com/svg.latex?s"> : the chair number to start passing out treats at

#### Constraints
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{t}\le{100}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{n\le{10^9}}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{m}\le{10^9}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{s}\le{n}">

#### Output Format

For each test case, print the chair number of the prisoner who receives the awful treat on a new line.

#### Sample Input 0
```
2
5 2 1
5 2 2
```
#### Sample Output 0
```
2
3
```
#### Explanation 0

In first query, there are <img src="https://latex.codecogs.com/svg.latex?n=5"> prisoners and <img src="https://latex.codecogs.com/svg.latex?m=2"> sweets. Distribution starts at seat number <img src="https://latex.codecogs.com/svg.latex?s=1">. Prisoners in seats numbered <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;2"> get sweets. Warn prisoner .
In the second query, distribution starts at seat so prisoners in seats and get sweets. Warn prisoner <img src="https://latex.codecogs.com/svg.latex?\Large&space;2">.

#### Sample Input 1
```
2
7 19 2
3 7 3
```
#### Sample Output 1
```
6
3
```
#### Explanation 1

In the first test case, there are <img src="https://latex.codecogs.com/svg.latex?\Large&space;n=7"> prisoners, <img src="https://latex.codecogs.com/svg.latex?\Large&space;m=19"> sweets and they are passed out starting at chair <img src="https://latex.codecogs.com/svg.latex?\Large&space;s=2">. The candies go all around twice and there are <img src="https://latex.codecogs.com/svg.latex?\Large&space;5"> more candies passed to each prisoner from seat to seat <img src="https://latex.codecogs.com/svg.latex?\Large&space;2"> to seat <img src="https://latex.codecogs.com/svg.latex?\Large&space;6">.

In the second test case, there are <img src="https://latex.codecogs.com/svg.latex?\Large&space;n=3"> prisoners, <img src="https://latex.codecogs.com/svg.latex?\Large&space;m=7"> candies and they are passed out starting at seat <img src="https://latex.codecogs.com/svg.latex?\Large&space;s=3">. They go around twice, and there is one more to pass out to the prisoner at seat <img src="https://latex.codecogs.com/svg.latex?\Large&space;3">.
