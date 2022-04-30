conc([],L2,L2).
conc([H|L1],L2,[H|L3]):-conc(L1,L2,L3).
palindrome([]).
palindrome([_]).
palindrome(L):-conc([H|T],[H],L),palindrome(T).
