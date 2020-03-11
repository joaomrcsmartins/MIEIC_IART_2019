# Solution

## 2.1 Solution for 9puzzle (particular)

### States

**State** - \[[P1,P2,P3], [P4,P5,P6], [P7,P8,P9]]

**Initial state** - \[[0,2,3], [4,7,6], [5,8,1]]

**Final state**  - \[[1,2,3], [4,5,6], [7,8,0]]

### Operators

**i** - row where space (0) is
**j** - column where space is

| Ops | Pre Conds | Effects |
|:---:|:---------:|:-------:|
| **MU** (move space up) | i != 0 | State[ i ][ j ] = State[i-1][ j ] and State[i-1][ j ] = 0|
| **MD** (move space down) | i != 2 | State[ i ][ j ] = State[i+1][ j ] and State[i+1][ j ] = 0|
| **ML** (move space left) | j != 0 | State[ i ][ j ] = State[ i ][j-1] and State[ i ][j-1] = 0|
| **MR** (move space right) | j != 2 | State[ i ][ j ] = State[ i ][j+1] and State[ i ][j+1] = 0|

### Cost

The cost is the number of plays made. The optimal solution (the one with the best cost), is the one that solves the puzzle in the minimum number of moves.



[see more](https://blog.goodaudience.com/solving-8-puzzle-using-a-algorithm-7b509c331288)