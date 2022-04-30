insertn(I,1,List,[I|List]).
insertn(I,Pos,[H|List],[H|R]):-Pos1 is Pos-1, insertn(I,Pos1,List,R).

