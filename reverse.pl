conc([],L2,L2).
conc([H|L1],L2,[H|L3]):-conc(L1,L2,L3).reverse([],[]).
reverse([H|Tail],R):-reverse(Tail,RevTail),conc(RevTail,[H],R).
