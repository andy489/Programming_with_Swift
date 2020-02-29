## Jumping on the Clouds

Emma is playing a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. She can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> or <img src="https://latex.codecogs.com/svg.latex?\Large&space;2">. She must avoid the thunderheads. Determine the minimum number of jumps it will take Emma to jump from her starting postion to the last cloud. It is always possible to win the game.

For each game, Emma will get an array of clouds numbered <img src="https://latex.codecogs.com/svg.latex?\Large&space;0"> if they are safe or <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> if they must be avoided. For example, <img src="https://latex.codecogs.com/svg.latex?\Large&space;c=[0,1,0,0,0,1,0]"> indexed from <img src="https://latex.codecogs.com/svg.latex?\Large&space;0...6">. The number on each cloud is its index in the list so she must avoid the clouds at indexes <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;5">. She could follow the following two paths: <img src="https://latex.codecogs.com/svg.latex?\Large&space;0\rightarrow{2}\rightarrow{4}\rightarrow{6}"> or <img src="https://latex.codecogs.com/svg.latex?\Large&space;0\rightarrow{2}\rightarrow{3}\rightarrow{4}\rightarrow{6}">. The first path takes <img src="https://latex.codecogs.com/svg.latex?\Large&space;3"> jumps while the second takes <img src="https://latex.codecogs.com/svg.latex?\Large&space;4">.

#### Function Description

Complete the jumpingOnClouds function in the editor below. It should return the minimum number of jumps required, as an integer.

jumpingOnClouds has the following parameter(s):

- c: an array of binary integers

#### Input Format

The first line contains an integer
, the total number of clouds. The second line contains space-separated binary integers describing clouds <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[i]"> where <img src="https://latex.codecogs.com/svg.latex?\Large&space;0\le{i}<n">.

#### Constraints
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;2\le{n}\le{100}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[i]\in\{\0,1\}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[0]=c[n-1]=0">
#### Output Format

Print the minimum number of jumps needed to win the game.

#### Sample Input 0
````
7
0 0 1 0 0 1 0
````
#### Sample Output 0
````
4
````
#### Explanation 0:
Emma must avoid <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[2]"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[5]">. She can win the game with a minimum of 4 jumps:

![](https://github.com/andy489/Data_Structures_and_Algorithms_CPP/blob/master/assets/Jumping%20on%20the%20Clouds%2001.png)

#### Sample Input 1
````
6
0 0 0 0 1 0
````
#### Sample Output 1
````
3
````
#### Explanation 1:
The only thundercloud to avoid is <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[4]">. Emma can win the game in <img src="https://latex.codecogs.com/svg.latex?\Large&space;3"> jumps:
![](https://github.com/andy489/Data_Structures_and_Algorithms_CPP/blob/master/assets/Jumping%20on%20the%20Clouds%2002.png)
