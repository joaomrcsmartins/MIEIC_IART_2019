
initial_state([0,0]).
goal_state([2,0]).

%FB1
operator([B1,B2],[4,B2]) :-
    B1 < 4.

%FB2 
operator([B1,B2],[B1,3]) :-
    B2 < 3.

%EB1
operator([B1,B2],[0,B2]) :-
    B1 > 0.
%EB2
operator([B1,B2],[B1,0]) :-
    B2 > 0.

%TB12_1
operator([B1,B2],[B1_,B2_]) :-
    B1 + B2 >=3,
    B2 < 3,
    B1_ is B1 - (3 - B2),
    B2_ is 3.

%TB12_2
operator([B1,B2],[B1_,B2_]) :-
    B1 + B2 < 3, 
    B1 > 0,
    B1_ is 0,
    B2_ is B2 + B1.

%TB21_1
operator([B1,B2],[B1_,B2_]) :-
    B1 + B2 >= 4,
    B1 <  4,
    B1_ is 4,
    B2_ is B2 - (4 -  B1).

%TB21_2
operator([B1,B2],[B1_,B2_]) :-
    B1 + B2 < 4, 
    B2 > 0,
    B2_ is 0,
    B1_ is B2 + B1.

dfs(S,_,[S]) :-
    goal_state(S).

dfs(S,Visited,[S|R]) :-
    operator(S,S2), 
    \+ member(S2,Visited),
    dfs(S2,[S2|Visited],R).

