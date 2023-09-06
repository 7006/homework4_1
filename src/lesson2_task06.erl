-module(lesson2_task06).

-export([is_palindrome/1]).

%% Визначити, чи є список паліндромом
is_palindrome(List) ->
    is_palindrome(List, lesson2_task05:reverse(List)).

is_palindrome([], []) ->
    true;
is_palindrome([H | T1], [H | T2]) ->
    is_palindrome(T1, T2);
is_palindrome(_, _) ->
    false.
