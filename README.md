# Artificial_Intelligence

## QUESTION-01 Write a prolog program to calculate the sum of two numbers.
Sum(X,Y,Z):- Z is X+Y.
 
 
## QUESTION-02 Write a Prolog program to implement max(X, Y, M) so that M is the maximum of two numbers X and Y.
max(X,Y,M):-X>Y, M is X.
max(X,Y,M):-Y>=X, M is Y.
 
 
## QUESTION-03 Write a program in PROLOG to implement factorial (N, F) where F represents the factorial of a number N
fact(0,1).
fact(N,X):-N1 is N-1,fact(N1,Y),X is Y*N,!.
 
 
## Question-04 Write a program in PROLOG to implement generate fib(N,T) where T represents the Nth term of the Fibonacci series.
fab(1,0).
fab(2,1).
fab(N,X):-N1 is N-1, N2 is N-2,fab(N1,X1),fab(N2,X2), X is X1+X2,!.
 
 
## Question-05 Write a Prolog program to implement GCD of two numbers.
gcd(0,A,A):-!.
gcd(A,0,A):-!.
gcd(A,B,R):- B1 is mod(A,B),gcd(B,B1,R).
 
 
## Question-06 Write a Prolog program to implement power (Num,Pow, Ans) : where Num is raised to the power Pow to get Ans.
pow(X,0):-!.
pow(Num,Pow, Ans):- Ans is Num^Pow.
 
 
## Question-07 Prolog program to implement multi (N1, N2, R) : where N1 and N2 denotes the numbers to be multiplied and R represents the result
multi(X,0).
multi(N1, N2,R):-R is N1*N2.
 
 
## Question -08 Write a Prolog program to implement memb(X, L): to check whether X is a member of L or not.  
member(X,[X|Tail]).
member(X,[Head|Tail]):-member(X,Tail).
 
 
## Question_09 Write a Prolog program to implement conc (L1, L2, L3) where L2 is the list to be appended with L1 to get the resulted list L3.
conc([],L2,L2).
conc([H|L1],L2,[H|L3]):-conc(L1,L2,L3).
 
 
## Question-10 Write a Prolog program to implement reverse (L, R) where List L is original and List R is reversed list.
conc([],L2,L2).
conc([H|L1],L2,[H|L3]):-conc(L1,L2,L3).reverse([],[]).
reverse([H|Tail],R):-reverse(Tail,RevTail),conc(RevTail,[H],R).
 
 
## Question-11 Write a program in PROLOG to implement palindrome (L) which checks whether a list L is a palindrome or not.
conc([],L2,L2).
conc([H|L1],L2,[H|L3]):-conc(L1,L2,L3).
palindrome([]).
palindrome([_]).
palindrome(L):-conc([H|T],[H],L),palindrome(T).
 
 
## Question-12 Write a Prolog program to implement sumlist(L, S) so that S is the sum of a given list L
sum([],0).
sum([H|T],S):-sum(T,ST), S is H+ST.
 
 
## Questiom-13 Write a Prolog program to implement two predicates evenlength(List) and oddlength(List) so that they are true if their argument is a list of even or odd length respectively.
evenlength([]).
evenlength([_|T]):-oddlength(T).
oddlength([_]).
oddlength([_|T]):-evenlength(T).
 
 
## Question-14 . Write a Prolog program to implement nth_element (N, L, X) where N is the desired position, L is a list and X represents the Nth element of L.
nth_element(1,[H|_],H).
nth_element(N,[_|T],X):-N1 is N-1,nth_element(N1,T,X).
 
 
## Question-15 Write a Prolog program to implement maxlist(L, M) so that M is the maximum number in the list
max(X,Y,Z):-X>Y,Z is X.
max(X,Y,Z):- Y>=X , Z is Y.

max_list([H|T],R):-max_list(T,R1),max(H,R1,R).
 
 
## Question-16  Write a prolog program to implement insert_nth (I, N, L, R) that inserts an item I into Nth position of list L to generate a list R.
insertn(I,1,List,[I|List]).
insertn(I,Pos,[H|List],[H|R]):-Pos1 is Pos-1, insertn(I,Pos1,List,R).
 
 
## Question-17 Write a Prolog program to implement delete_nth (N, L, R) that removes the element on Nth position from a list L to generate a list R.
remove([_|T],1,T).
remove([H|T],Pos,[H|Result]):-Pos1 is Pos-1, remove(T,Pos1,Result).
 
 
## Question-18 Write a program in PROLOG to implement merge (L1, L2, L3) where L1 is first ordered list and L2 is second ordered list and L3 represents the merged list
merge(X,[],X).
merge([],Y,Y).
merge([X|X1],[Y|Y1],[X|Z]):-X<Y,!,merge(X1,[Y|Y1],Z).
merge([X|X1],[Y|Y1],[X,Y|Z]):-X=Y,!,merge(X1,Y1,Z).
merge([X|X1],[Y|Y1],[Y|Z]):-X>Y,!,merge([X|X1],Y1,Z).
 
 

