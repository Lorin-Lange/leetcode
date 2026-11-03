:- use_module(library(lists)).
:- use_module(library(format)).

string_score(String, Score) :-
    string_codes(String, Codes),
    aggregate_all(sum(abs(X - Y)), nextto(X, Y, Codes), Score).

:- initialization(main).

main :-
    string_score("hello", Score),
    format("~d~n", [Score]).   % 13
