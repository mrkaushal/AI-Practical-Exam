% Implement a prolog program to find factorial of the given number.

factorial(0,1).
factorial(N,F) :- N>0, N1 is N-1, factorial(N1,F1), F is N*F1.

% output explanation
% factorial(5,F).
% factorial (n=5, F=120) :- 5>0, 4 is 5-1, factorial(4,F1), F is 5*4.
% factorial (n=4, F=24) :- 4>0, 3 is 4-1, factorial(3,F1), F is 4*3.
% factorial (n=3, F=6) :- 3>0, 2 is 3-1, factorial(2,F1), F is 3*2.
% factorial (n=2, F=2) :- 2>0, 1 is 2-1, factorial(1,F1), F is 2*1.
% factorial (n=1, F=1) :- 1>0, 0 is 1-1, factorial(0,F1), F is 1*0.
