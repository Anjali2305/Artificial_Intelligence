max(X,Y,Z):-X>Y,Z is X.
max(X,Y,Z):- Y>=X , Z is Y.

max_list([H|T],R):-max_list(T,R1),max(H,R1,R).
