## ACM ICPC Team

[Judge System](https://www.hackerrank.com/challenges/acm-icpc-team/problem)

There are a number of people who will be attending [ACM-ICPC World Finals](https://en.wikipedia.org/wiki/International_Collegiate_Programming_Contest). Each of them may be well versed in a number of topics. Given a list of topics known by each attendee, you must determine the maximum number of topics a 2-person team can know. Also find out how many ways a team can be formed to know that many topics. Lists will be in the form of bit strings, where each string represents an attendee and each position in that string represents a field of knowledge, 1 if its a known field or 0 if not.

For example, given three attendees' data as follows:
````
10101
11110
00010
````
These are all possible teams that can be formed:
````
Members Subjects
(1,2)   [1,2,3,4,5]
(1,3)   [1,3,4,5]
(2,3)   [1,2,3,4]
````
In this case, the first team will know all 5 subjects. They are the only team that can be created knowing that many subjects.

#### Function Description

Complete the acmTeam function in the editor below. It should return an integer array with two elements: the maximum number of topics any team can know and the number of teams that can be formed that know that maximum number of topics.

acmTeam has the following parameter(s):

- topic: a string of binary digits

#### Input Format

The first line contains two space-separated integers <img src="https://latex.codecogs.com/svg.latex?n"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;m">, where <img src="https://latex.codecogs.com/svg.latex?n"> represents the number of attendees and <img src="https://latex.codecogs.com/svg.latex?m"> represents the number of topics.

Each of the next <img src="https://latex.codecogs.com/svg.latex?n"> lines contains a binary string of length <img src="https://latex.codecogs.com/svg.latex?m">. If the <img src="https://latex.codecogs.com/svg.latex?\Large&space;i^{th}"> line's <img src="https://latex.codecogs.com/svg.latex?j^{th}"> character is <img src="https://latex.codecogs.com/svg.latex?1">, then the <img src="https://latex.codecogs.com/svg.latex?i^{th}"> person knows the <img src="https://latex.codecogs.com/svg.latex?j^{th}"> topic.

#### Constraints
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;2\le{n}\le{500}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{m}\le{500}">

#### Output Format

On the first line, print the maximum number of topics a 2-person team can know.<br>
On the second line, print the number of ways to form a 2-person team that knows the maximum number of topics.

#### Sample Input
````
4 5
10101
11100
11010
00101
````
#### Sample Output
````
5
2
````
#### Explanation

Calculating topics known for all permutations of 2 attendees we get:

<img src="https://latex.codecogs.com/svg.latex?\Large&space;(1,2)\rightarrow{4}"><br>
<img src="https://latex.codecogs.com/svg.latex?\Large&space;(1,3)\rightarrow{5}"><br>
<img src="https://latex.codecogs.com/svg.latex?\Large&space;(1,4)\rightarrow{3}"><br>
<img src="https://latex.codecogs.com/svg.latex?\Large&space;(2,3)\rightarrow{4}"><br>
<img src="https://latex.codecogs.com/svg.latex?\Large&space;(2,4)\rightarrow{4}"><br>
<img src="https://latex.codecogs.com/svg.latex?\Large&space;(3,4)\rightarrow{5}">

The 2 teams (1, 3) and (3, 4) know all 5 topics which is maximal.
