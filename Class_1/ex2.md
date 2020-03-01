# Solution

## 1.2 B

**CL** - nº of cannibals in left margin

**CR** - nº of cannibals in right margin

**ML** - nº of missionaries in left margin

**MR** - nº of missinaries in right margin

**BL** - boat on left margin (false(0)/true(1))

**BR** - boat on right margin (...)

**[[CL,ML,BL],[CR,MR,BR]]**

**Initial state**: [[3,3,1],[0,0,0]]

**Final state**: [[0,0,0],[3,3,1]]

**Operators**:
| Ops | Pre-conds | Effects |
|:---:|:---------:|:-------:|
|CMR_1 (Cross 1 Missionary to Right Margin) | CL <= ML - 1 and CR <= MR + 1 and BL= 1 | ML -> ML - 1 and MR -> MR + 1 and BL = 0 and BR = 1|
|CMR_2 (Cross 2 Missionaries to Right Margin)| CL <= ML - 2 and CR <= MR + 2 and BL= 1 | ML -> ML - 2 and MR -> MR + 2 and BL = 0 and BR = 1|
|CML_1 (Cross 1 Missionary to Left Margin) | CR <= MR - 1 and CL <= ML + 1 and BR = 1 | ML -> ML + 1 and MR -> MR - 1 and BL = 1 and BR = 0|
|CML_2 (Cross 2 Missionaries to Left Margin) | CR <= MR - 2 and CL <= ML + 2 and BR = 1 | ML -> ML + 2 and MR -> MR - 2 and BL = 1 and BR = 0|
|CCR_1 (Cross 1 Cannibal to Right Margin) | CR + 1 <= MR and BL = 1 | CL -> CL - 1 and CR -> CR + 1 and BL = 0 and BR = 1|
|CCR_2 (Cross 2 Cannibals to Right Margin) | CR + 2 <= MR and BL = 1 | CL -> CL - 2 and CR -> CR + 2 and BL = 0 and BR = 1|
|CCL_1 (Cross 1 Cannibal to Left Margin) | CL + 1 <= ML and BR = 1 | CL -> CL + 1 and CR -> CR - 1 and BL = 1 and BR = 0|
|CCL_2 (Cross 2 Cannibals to Left Margin) | CL + 2 <= ML and BR = 1 | CL -> CL + 2 and CR -> CR - 1 and BL = 1 and BR = 0|
|CCMR (Cross 1 Cannibal and 1 Missionary to Right Margin) |  CR <= MR and BL = 1 | CL -> CL - 1 and ML -> ML - 1 and CR -> CR + 1 and MR -> MR + 1 and BL = 0 and BR = 1|
|CCML (Cross 1 Cannibal and 1 Missionary to Left Margin) |  CL <= ML and BR = 1 | CL -> CL + 1 and ML -> ML + 1 and CR -> CR - 1 and MR -> MR - 1 and BL = 1 and BR = 0|
