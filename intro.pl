/* Este es un Comentario */
hombre(jose).
hombre(juan).
mujer(maria).

% 1er argumento de un papá.
% 2o argumento de un hijo de ese papá.
papa(juan, jose).
papa(juan, maria).
papa(javier, hermenegildo).
valioso(dinero).
dificil_de_obtener(dinero).
le_da(pedro, libro, antonio).

/* 
  Reglas:
  Las comas son ANDs.
  Punto y coma o dos reglas equivale a OR.
*/

% Definició de hermano y hermana con respecto a papá
hermana(X, Y) :- mujer(X), papa(Z, X), papa(Z, Y).
hermano(X, Y) :- hombre(X), papa(Z, X), papa(Z, Y).
hijo(X, Y) :- papa(Y, X), hombre(X).
humano(X) :- mujer(X) ; hombre(X).

?- papa(juan, josefina).
?- papa(X, jose), write(X), nl.
?- papa(juan, X), write(X), nl.
?- papa(Papa, HijoOHija), write(Papa), write(' '), write(HijoOHija), nl, fail.
?- papa(X, _), write(X), nl, fail.
?- hermana(maria, _).