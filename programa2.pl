grande(bisonte).
grande(oso).
grande(elefante).
chico(gato).
cafe(oso).
cafe(bisonte).
negro(gato).
gris(elefante).
oscuro(Z) :- cafe(Z) ; negro(Z).

?- oscuro(X), grande(X), write(X), nl, fail.