antes_de(antier, ayer).
antes_de(ayer, hoy).
antes_de(hoy, maniana).

main:-
  not(antes_de(ayer, maniana)),
  assert(antes_de(X, Y):-
      antes_de(X, Z), antes_de(Z, Y)),
  antes_de(ayer, maniana).

