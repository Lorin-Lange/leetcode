%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     LeetCode                     %
%             3110. Score of a String              %
%             Solution by Lorin Lange              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

string_score(String, Score) :-
    string_codes(String, Codes),
    aggregate_all(sum(abs(X - Y)), nextto(X, Y, Codes), Score).

:- initialization(main).

main() :-
    string_score("hello", Score),
    format("~d~n", [Score]).   % 13
