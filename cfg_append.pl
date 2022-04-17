append([],X,X).
append([H|T1],Y,[H|T2]) :- append(T1,Y,T2).

s(Z) :- np(X),vp(Y),append(X,Y,Z).
np(Z) :- det(X),n(Y),append(X,Y,Z).
vp(Z) :- v(X),np(Y),append(X,Y,Z).
vp(Z) :- v(Z).

det([a]).
det([the]).
n([woman]).
n([man]).
v([shoots]).
