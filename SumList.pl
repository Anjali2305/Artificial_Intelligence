sum([],0).
sum([H|T],S):-sum(T,ST), S is H+ST.
