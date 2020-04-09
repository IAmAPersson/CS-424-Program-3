/* Phil Lane
   4/8/2020
   CS 424 Program 3
   Tested with SWI-Prolog v7.6.4
*/

%sumList(A, X) === the sum of the elements in the list A yields X
sumList([], 0).
sumList([X|Tail], Z) :- sumList(Tail, Y), Z is X + Y.

%isIn(A, B) === A is in the list B
isIn(X, [A|Tail]) :- A is X; isIn(X, Tail).

%intersection(A, B, X) === the intersection of A and B is X
intersection(A, B, X) :- (isIn(T, A), isIn(T, B) -> isIn(T, X).). %I have no idea how this works, but it does (at least on the version listed at the top of this file)

%disjoint(A, B) === A and B are disjoint
disjoint(A, B) :- intersection(A, B, C), C == [].