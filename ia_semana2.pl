% === BASE DE CONOCIMIENTOS ===
padre(ricardo, saul).
padre(ricardo, laura).
padre(saul, tito).

varon(ricardo).
varon(saul).
varon(tito).
mujer(laura).

% === REGLAS ===
hermano(X, Y) :- 
    padre(P, X), 
    padre(P, Y), 
    X \= Y.

abuelo(X, Y) :- 
    padre(X, P), 
    padre(P, Y),
    varon(X).

pertenece(X, [X|_]).
pertenece(X, [_|T]) :- 
    pertenece(X, T).
