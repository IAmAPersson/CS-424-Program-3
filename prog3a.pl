/* Phil Lane
   4/8/2020
   CS 424 Program 3
   Tested with SWI-Prolog v7.6.4
   
   This code is entirely my own.
*/

%sumList(A, X) === the sum of the elements in the list A yields X
sumList([], 0).
sumList([X|Tail], Z) :- sumList(Tail, Y), Z is X + Y.

%isIn(A, B) === A is in the list B
isIn(X, [A|Tail]) :- X is A; isIn(X, Tail).

%disjoint(A, B) === A and B are disjoint
disjoint(A, B) :- not((isIn(T, A), isIn(T, B))).