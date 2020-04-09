/* Phil Lane
   4/8/2020
   CS 424 Program 3
   Tested with SWI-Prolog v7.6.4
*/

sumList([], 0).
sumList([X|Tail], Z) :- sumList(Tail, Y), Z is X + Y.

isIn(X, [A|Tail]) :- X is A; isIn(X, Tail).
intersection(A, B, X) :- ((isIn(T, A), isIn(T, B)) -> isIn(T, X)).
disjoint(A, B) :- intersection(A, B, C), not(isIn(X, C)).