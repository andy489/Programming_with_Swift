## Jumping on the Clouds: Revisited

[Judge System](https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited/problem)

Aerith is playing a cloud hopping game. In this game, there are sequentially numbered clouds that can be thunderheads or cumulus clouds. Her character must jump from cloud to cloud until it reaches the start again.

To play, Aerith is given an array of clouds, <img src="https://latex.codecogs.com/svg.latex?\Large&space;c"> and an energy level <img src="https://latex.codecogs.com/svg.latex?\Large&space;se=100">. She starts from <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[0]"> and uses <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> unit of energy to make a jump of size <img src="https://latex.codecogs.com/svg.latex?\Large&space;k"> to cloud <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[(i+k)char`%n]">. If Aerith lands on a thundercloud, <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[i]"> , her energy (<img src="https://latex.codecogs.com/svg.latex?\Large&space;e">) decreases by <img src="https://latex.codecogs.com/svg.latex?\Large&space;2"> additional units. The game ends when Aerith lands back on cloud <img src="https://latex.codecogs.com/svg.latex?\Large&space;0">.

Given the values of <img src="https://latex.codecogs.com/svg.latex?\Large&space;n,k">, and the configuration of the clouds as an array <img src="https://latex.codecogs.com/svg.latex?\Large&space;c">, can you determine the final value of <img src="https://latex.codecogs.com/svg.latex?\Large&space;e"> after the game ends?

For example, give <img src="https://latex.codecogs.com/svg.latex?\Large&space;c=[0,0,1,0]"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;k=2">, the indices of her path are <img src="https://latex.codecogs.com/svg.latex?\Large&space;0\rightarrow{2}\rightarrow{0}">. Her energy level reduces by <img src="https://latex.codecogs.com/svg.latex?\Large&space;1"> for each jump to <img src="https://latex.codecogs.com/svg.latex?\Large&space;98">. She landed on one thunderhead at an additional cost of <img src="https://latex.codecogs.com/svg.latex?\Large&space;2"> energy units. Her final energy level is <img src="https://latex.codecogs.com/svg.latex?\Large&space;96">.

**Note:** Recall that <img src="https://latex.codecogs.com/svg.latex?\Large&space;char`%"> refers to the [modulo operation](https://en.wikipedia.org/wiki/Modulo_operation). In this case, it serves to make the route circular. If Aerith is at <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[n-1]"> and jumps <img src="https://latex.codecogs.com/svg.latex?\Large&space;1">, she will arrive at <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[0]">.

#### Input Format

The first line contains two space-separated integers, <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> and <img src="https://latex.codecogs.com/svg.latex?\Large&space;k">, the number of clouds and the jump distance.<br>
The second line contains <img src="https://latex.codecogs.com/svg.latex?\Large&space;n"> space-separated integers <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[i]"> where <img src="https://latex.codecogs.com/svg.latex?\Large&space;0\le{i}<n">. Each cloud is described as follows:
- If <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[i]=0">, then cloud <img src="https://latex.codecogs.com/svg.latex?\Large&space;i"> is a cumulus cloud.
- If <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[i]=1">, then cloud <img src="https://latex.codecogs.com/svg.latex?\Large&space;i"> is a thunderhead.

#### Constraints
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;2\le{n}\le{25}">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;1\le{k}<n">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;n{char`%}k=0">
- <img src="https://latex.codecogs.com/svg.latex?\Large&space;c[i]\in{\{0,1\}}">

#### Output Format

Print the final value of <img src="https://latex.codecogs.com/svg.latex?\Large&space;e"> on a new line.

#### Sample Input
```
8 2
0 0 1 0 0 1 1 0
```
#### Sample Output
```
92
```
#### Explanation

In the diagram below, red clouds are thunderheads and purple clouds are cumulus clouds:

![](https://github.com/andy489/Data_Structures_and_Algorithms_CPP/blob/master/assets/Jumping%20on%20the%20Clouds%20-%20Revisited.png)

Observe that our thunderheads are the clouds numbered <img src="https://latex.codecogs.com/svg.latex?\Large&space;2,5">, and <img src="https://latex.codecogs.com/svg.latex?\Large&space;6">. Aerith makes the following sequence of moves:

1. Move: <img src="https://latex.codecogs.com/svg.latex?\Large&space;0\rightarrow{2}">, Energy: <img src="https://latex.codecogs.com/svg.latex?\Large&space;e=100-1-1=97">.<br>
2. Move: <img src="https://latex.codecogs.com/svg.latex?\Large&space;2\rightarrow{4}">, Energy: <img src="https://latex.codecogs.com/svg.latex?\Large&space;e=97-1=96">.<br>
3. Move: <img src="https://latex.codecogs.com/svg.latex?\Large&space;4\rightarrow{6}">, Energy: <img src="https://latex.codecogs.com/svg.latex?\Large&space;e=96-1-2=93">.<br>
4. Move: <img src="https://latex.codecogs.com/svg.latex?\Large&space;6\rightarrow{0}">, Energy: <img src="https://latex.codecogs.com/svg.latex?\Large&space;e=93-1=92">.
