mother(X,Y) :-
  parent(X,Y),
  female(X).

father(X,Y) :-
  parent(X,Y),
  male(X).

child(X,Y) :-
  parent(A,X),
  Y == A.

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
  female(X),
  format("~s", [X]).

uncle(X,Y) :-
  father(A,Y), brother(X,A);
  mother(B,Y), brother(X,B).

aunt(X,Y) :-
  father(A,Y), sister(X,A);
  mother(B,Y), sister(X,B).

nephew(X,Y) :-
  parent(A,X), sibling(A,Y).

cousin(X,Y) :-
  parent(A,Y), parent(B,X), sibling(A,B).

grampa(X,Y) :-
  parent(A,Y), father(X,A).

grannie(X,Y) :-
  parent(A,Y), mother(X,A).

grandchild(X,Y) :-
  parent(A,X), child(A,Y).

generations(X, Y, Num) :-
  parent(X,Y),
  Num = 1,
  !.

generations(X, Y, Num):-
  parent(X,Z),
  generations(Z, Y, Num2),
  Num is Num2 + 2.

different_sex(X, Y) :-
    male(X), female(Y);
    male(Y), female(X).

pretender(X, Y) :-
    different_sex(X, Y),
    true \= sibling(X, Y).
    
