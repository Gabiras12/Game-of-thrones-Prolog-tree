mother(X,Y) :-
  parent(X,Y),
  female(X).

father(X,Y) :-
  parent(X,Y),
  male(X).

sibling(X,Y) :-
  father(A, X),
  father(A, Y),
  mother(B, X),
  mother(B, Y),
  Y \= X.

brother(X,Y) :-
  sibling(X,Y),
  male(X).

sister(X,Y) :-
  sibling(X,Y),
  female(X).

uncle(X,Y) :-
  father(A,Y), brother(X,A);
  mother(B,Y), brother(X,B).

aunt(X,Y) :-
  father(A,Y), sister(X,A);
  mother(B,Y), sister(X,B).

cousin(X,Y) :-
  parent(A,Y), parent(B,X), sibling(A,B).

grampa(X,Y) :-
  parent(A,Y), father(X,A).

grannie(X,Y) :-
  parent(A,Y), mother(X,A).
