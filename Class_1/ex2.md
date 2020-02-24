# Solution

## 1.2 B

**C1** - nº of cannibals in left margin
**C2** - nº of cannibals in right margin
**M1** - nº of missionaries in left margin
**M2** - nº of missinaries in right margin
**BS** - margin side of the boat (left(0)/right(1))
**[C1,M1,C2,M2]**

**Initial state**: [3,3,0,0]

**Final state**: [0,0,3,3]

**Operators**:
| Ops | Pre-conds | Effects |
|:---:|:---------:|:-------:|
|CMR_1 (Cross 1 Missionary to Right Margin) | C1 <= M1 - 1 and C2 <= M2 + 1 and BS = 0 | M1 -> M1 - 1 and M2 -> M2 + 1|
|CMR_2 (Cross 2 Missionaries to Right Margin)| C1 <= M1 - 2 and C2 <= M2 + 2 and BS = 0 | M1 -> M1 - 2 and M2 -> M2 + 2|
|CML_1 (Cross 1 Missionary to Left Margin) | C2 <= M2 - 1 and C1 <= M1 + 1 and BS = 1 | M1 -> M1 + 1 and M2 -> M2 - 1|
|CML_2 (Cross 2 Missionaries to Left Margin) | C2 <= M2 - 2 and C1 <= M1 + 2 and BS = 1 | M1 -> M1 + 2 and M2 -> M2 - 2 |
|CCR_1 (Cross 1 Cannibal to Right Margin) | C2 + 1 <= M2 and  and BS = 0 | C1 -> C1 - 1 and C2 -> C2 + 1|
|CCR_2 (Cross 2 Cannibals to Right Margin) | C2 + 2 <= M2 and BS = 0 | C1 -> C1 - 2 and C2 -> C2 + 2|
|CCL_1 (Cross 1 Cannibal to Left Margin) | C1 + 1 <= M1 and BS = 1 | C1 -> C1 + 1 and C2 -> C2 - 1|
|CCL_2 (Cross 2 Cannibals to Left Margin) | C1 + 2 <= M1 and BS = 1 | C1 -> C1 + 2 and C2 -> C2 - 1|
|CCMR (Cross 1 Cannibal and 1 Missionary to Right Margin) |  C2 <= M2 and BS = 0 | C1 -> C1 - 1 and M1 -> M1 - 1 and C2 -> C2 + 1 and M2 -> M2 + 1|
|CCML (Cross 1 Cannibal and 1 Missionary to Left Margin) |  C1 <= M1 and BS = 1 | C1 -> C1 + 1 and M1 -> M1 + 1 and C2 -> C2 - 1 and M2 -> M2 - 1|