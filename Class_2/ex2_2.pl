
initial_state(Ei,Sol):-
    h(Ei,Hi),
    astar([(Hi,0,Hi,[Ei])],Sol).

goal_state([2,0]).

%FB1
operator([B1,B2],[4,B2],C) :-
    B1 < 4, C is 4 - B1.

%FB2 
operator([B1,B2],[B1,3],C) :-
    B2 < 3, C is 3 - B2.

%EB1
operator([B1,B2],[0,B2],C) :-
    B1 > 0, C is B1.
%EB2
operator([B1,B2],[B1,0],C) :-
    B2 > 0, C is B2.

%TB12_1
operator([B1,B2],[B1_,B2_],C) :-
    B1 + B2 >=3,
    B2 < 3,
    B1_ is B1 - (3 - B2),
    B2_ is 3,
    C is (3 - B2).

%TB12_2
operator([B1,B2],[B1_,B2_],C) :-
    B1 + B2 < 3, 
    B1 > 0,
    B1_ is 0,
    B2_ is B2 + B1,
    C is B1.

%TB21_1
operator([B1,B2],[B1_,B2_],C) :-
    B1 + B2 >= 4,
    B1 <  4,
    B1_ is 4,
    B2_ is B2 - (4 -  B1),
    C is 4 - B1.

%TB21_2
operator([B1,B2],[B1_,B2_],C) :-
    B1 + B2 < 4, 
    B2 > 0,
    B2_ is 0,
    B1_ is B2 + B1,
    C is B2.


h([B1,B2],H) :-
    goal_state([B1f,B2f]),
    H is max(abs(B1-B1f), abs(B2-B2f)).
    
astar((_,_,_,[[E|Cam]|_]),[E|Cam]) :-
    goal_state(E).

astar([(_,G,_,[E|Cam])|R],Sol) :-
    findall((F2,G2,H2,[E1|[E|Cam]]),
    (operator(E,E1,C),G2 is G + C, h(E1,H2), F2 is G2+ H2),
    LS),
    append(LS,R,L),
    sort(L, Sorted),
    astar(Sorted,Sol).
    


