sumList([], 0).
sumList([X, Y], Z) :- Z is X + Y.
sumList([X|Tail], Z) :- sumList(Tail, Y),
						Z is X + Y.