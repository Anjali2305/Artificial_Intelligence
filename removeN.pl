remove([_|T],1,T).
remove([H|T],Pos,[H|Result]):-Pos1 is Pos-1, remove(T,Pos1,Result).
