sumList([], S) :- 0.
sumList([X, Y], S) :- sum(X, Y, S).
sumList([X|Tail], S) :- sum(X, Y, S), sumList(Tail, Y).