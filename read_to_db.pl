country(england).
country(france).

keepDoing.
keepDoing:- keepDoing.

write_country:-
  country(X),
  not(equal(print(X), "ya")),
  write(X), nl,
  fail.
write_country.

main:-
  write('Write country names '),
  write('write . when you are done'),
  nl,
  keepDoing,
  read(Pais),
  assert(pais(Pais)),
  equal(pais(Pais), 'stop'),
  write_country.