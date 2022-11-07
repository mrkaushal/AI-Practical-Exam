% Implement a prolog program to find factorial of the given number.

factorial(0,1).
factorial(N,F) :- N>0, N1 is N-1, factorial(N1,F1), F is N*F1.

