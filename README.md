# Intruder in the Building
 
Given a building with a robot in some position r, and an intruder in some position i, the goal of this exercise is to write an algorithm to find the intruder. 
The rules for the robot are that it can scan any location that is adjacent (up, down, left, or right) to any location that it has already scanned. You can assume that it has scanned the start location. Also, it can not move outside the building or through walls (denoted as w's).
Please note, no part of the building will ever be blocked off entirely by walls, so the intruder is always accessible.
 
 ```
Example building: 
-----
---r-
--www
---i- 
 ```
 ## Solution

 After Wesley and Craig pointed out that I should have been using a tree structure, I took the time to implement it.

 If you have Dart installed, you should be able to simply check out the code and run
 ```
 dart pub get
 dart run
 ```
If you do, you should get the following output
```
Intruder is: i and is at location:(3,0)
x: 3,y: 2
-----
---C-
--www
---i-

x: 3,y: 3
---C-
---C-
--www
---i-

x: 2,y: 3
--CC-
---C-
--www
---i-

x: 2,y: 2
--CC-
--CC-
--www
---i-

x: 1,y: 2
--CC-
-CCC-
--www
---i-

x: 1,y: 3
-CCC-
-CCC-
--www
---i-

x: 0,y: 3
CCCC-
-CCC-
--www
---i-

x: 0,y: 2
CCCC-
CCCC-
--www
---i-

x: 0,y: 1
CCCC-
CCCC-
C-www
---i-

x: 0,y: 0
CCCC-
CCCC-
C-www
C--i-

x: 1,y: 0
CCCC-
CCCC-
C-www
CC-i-

x: 1,y: 1
CCCC-
CCCC-
CCwww
CC-i-

x: 2,y: 0
CCCC-
CCCC-
CCwww
CCCi-

x: 3,y: 0
Found Intruder at X: 3,Y: 0
```

