/* Phil Lane
   4/8/2020
   CS 424 Program 3
   Tested with SWI-Prolog v7.6.4
*/

male(phil).
male(stephen).
male(preston).
male(george).
male(jason).
male(brady).
male(cole).
male(ryan).
female(lisa).
female(sarah).
female(nikki).
female(emily).
parent(preston, phil).
parent(preston, stephen).
parent(lisa, phil).
parent(lisa, stephen).
parent(george, lisa).
parent(sarah, lisa).
parent(george, jason).
parent(sarah, jason).
parent(jason, brady).
parent(jason, cole).
parent(jason, ryan).
parent(nikki, brady).
parent(nikki, cole).
parent(nikki, ryan).
parent(preston, emily).
parent(lisa, emily).

%mother(Mother, Child) === Mother is the mother of Child
mother(Mother, Child) :- parent(Mother, Child), female(Mother).

%father(Father, Child) === Father is the father of Child
father(Father, Child) :- parent(Father, Child), male(Father).

%grandmother(Grandmother, Grandchild) === Grandmother is the grandmother of Grandchild
grandmother(Grandmother, Grandchild) :- parent(Grandmother, Child), parent(Child, Grandchild), female(Grandmother).

%grandfather(Grandfather, Grandchild) === Grandfather is the grandfather of Grandchild
grandfather(Grandfather, Grandchild) :- parent(Grandfather, Child), parent(Child, Grandchild), male(Grandfather).

%sister(Sister, Child) === Sister is the sister of Child
sister(Sister, Child) :- parent(Parent, Child), parent(Parent, Sister), female(Sister), Sister \== Child.

%brother(Brother, Child) === Brother is the brother of Child
brother(Brother, Child) :- parent(Parent, Child), parent(Parent, Brother), male(Brother), Brother \== Child.

%cousin(ChildA, ChildB) === ChildA and ChildB are cousins
cousin(ChildA, ChildB) :- parent(Parent, ChildA), (sister(Parent, ParentSibling); brother(Parent, ParentSibling)), parent(ParentSibling, ChildB).

%son(Son, Parent) === Son is the son of Parent)
son(Son, Parent) :- parent(Parent, Son), male(Son).

%daughter(Daughter, Parent) === Daughter is the daughter of Parent
daughter(Daughter, Parent) :- parent(Parent, Daughter), female(Daughter).