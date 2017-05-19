mother(X,Y) :-
  parent(X,Y),
  female(X).

mother(X):-
  mother(A,X),
  write(A), write(' is the mother of '), write(X).

father(X,Y) :-
  parent(X,Y),
  male(X).

father(X) :- father(A,X), write(A), write(' is the father of '), write(X).

child(X,Y) :-
  parent(A,X),
  Y == A.

childs(X) :-
  child(A,X),
  write(A), write(' is the child of '), write(X).

sibling(X,Y) :-
  father(A, X),
  father(A, Y),
  mother(B, X),
  mother(B, Y),
  Y \= X.

brother(X,Y) :-
  sibling(X,Y),
  male(X),
  write(X), write(' is the brother of '), write(Y).

sister(X,Y) :-
  sibling(X,Y),
  female(X),
  write(X), write(' is the sister of '), write(Y).

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

countKill(X,Num):-
  findall(X, killed(X,_), Xs),
  length(Xs, Num).

hasKilled(X):-
  countKill(X,Num),
  write(X), write(' has killed '), write(Num).

sequenceOfKills(X):-
  killed(A,X),
  write(A), write(' has killed '), write(X),nl,
  sequenceOfKills(A).

countMen(X) :-
  findall(A, male(A), As),
  length(As, X).

goodManToMarige:-
  countMen(NumMen),
  write('You\'ve '), write(NumMen), write(' options. But...'), nl,
  findall(Man, (male(Man), notAssassins(Man)), L),
  length(L, N),
  write('Only '), write(N), write(' Are not killers. And...'), nl,
  findall(Man, (male(Man), notAssassins(Man), hasLands(Man)), L1),
  length(L1, N1),
  write('Only '), write(N1), write(' of then has land...But...'), nl,
  findall(Man, (male(Man), notAssassins(Man), hasLands(Man), isBeautiful(Man)), L2),
  length(L2, N2),
  write('Only '), write(N2), write(' of then are beautiful...But...'), nl,
  whoHasMoreLands(L2, Best),
  write(Best), write(' has more lands.. so.. you should marry him.').

notAssassins(X):-
  killed(X,_) -> false; true.

hasLands(X):-
  ownsLand(X) -> true; false.

whoHasMoreLands([H],H).
whoHasMoreLands([H|T], Result):-
  whoHasMoreLands(T, P),
  numberOfLands(H,X),
  numberOfLands(P,K),
  (X >= K -> updateResult(Result, H); updateResult(Result, P)).

updateResult(H,H).

numberOfLands(X,R):-
  findall(A, ownsLand(X), As),
  length(As, R).
