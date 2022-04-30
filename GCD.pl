gcd(0,A,A):-!.
gcd(A,0,A):-!.
gcd(A,B,R):- B1 is mod(A,B),gcd(B,B1,R).
