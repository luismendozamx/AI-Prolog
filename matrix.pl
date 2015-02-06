imprimeRenglon([]).
imprimeRenglon([Cabeza|Cola]):-
  write(Cabeza),
  write(' '),
  imprimeRenglon(Cola).

% imprimeRenglon([1, 2, 3]).

imprimeMatriz([]).
imprimeMatriz([Cabeza|Cola]):-
  imprimeRenglon(Cabeza), nl,
  imprimeMatriz(Cola).

% imprimeMatriz([[1, 2], [3, 4]]).

sumaRenglon([], [], X).
sumaRenglon([Cabeza1|Cola1], [Cabeza2|Cola2], [+Cabeza1 + +Cabeza2|Lista]):-
  sumaRenglon(Cola1, Cola2, Lista).

% sumaRenglon([1, 2], [3, 4], X), imprimeRenglon(X).

sumaMatriz([], [], X).
sumaMatriz([Cabeza1|Cola1], [Cabeza2|Cola2], [Lista1, Lista2]):-
  sumaRenglon(Cabeza1, Cabeza2, Lista1),
  sumaMatriz(Cola1, Cola2, Lista2).

% sumaMatriz([[1, 2],[3, 4]], [[5, 6], [7, 8]], X), imprimeMatriz(X).