# Solution

## 1.1 A)

**B1** - water in the 4l bucket

**B2** -  ' ' ' ' ' ' 3l bucket

**Initial state**: [0,0]

**Final state**: [n,_]

**Operators**:
 |   OP   |              Pre-conds |  Effects|
 |:-------:|:----------------------:|:--------|
| FB1 (Fill Bucket 1)  | B1 < 4     | B1 -> 4|
| FB2 (Fill Bucket 2) |  B2 < 3     | B2 -> 3|
| EB1 (Empty Bucket 1) |  B1 > 0  |    B1 -> 0|
| EB2 (Empty Bucket 2) |  B2 > 0   |   B2 -> 0|
| TB12_1 (B1->B2 and B2 full) | B1 + B2 >= 3 and B2 < 3  |    B2 -> 3 and B1 -> B1 - (3 - B2)|
| TB12_2 (B1->B2 and B1 empty) | B1 + B2 < 3 and B1 > 0  | B2 -> B2 + B1 and B1 -> 0|
| TB21_1 | B1 + B2 >= 4  |    B1 -> 4 and B2 -> B2 - (4 - B1)|
| TB21_2 |  B1 + B2 < 4 and B2 > 0  |  B1 -> B1 + B2 and B2 -> 0|