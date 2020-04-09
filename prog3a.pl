sumList([], 0).
sumList([X|Tail], Z) :- sumList(Tail, Y), Z is X + Y.