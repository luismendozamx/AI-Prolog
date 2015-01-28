% Look for an element inside a list recursively.
belongs_to(Value, [Value|_]). 
belongs_to(Value, [_|Z]) :- belongs_to(Value, Z).
% Ej:
% ?-belongs_to(3, [1, 2, 3, 4, 5]).

% Join two lists.
join([], List, List).
join([Head1|Tail1], List2, [Head1|List3]):- join(Tail1, List2, List3).
% Ej:
% ?-join([a,b], [1,2,3], X), write(X), nl.

% Consecutive elements?
consecutive(X, Y, [X,Y|_]).
consecutive(X, Y, [_|R]):- consecutive(X, Y, R).
% Ej:
% ?-consecutive(1, 3, [0,1,2,3,4]), write('Yes'), nl.


