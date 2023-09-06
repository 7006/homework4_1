-module(lesson2_task05).

-export([reverse/1]).

%% Перевернути список
reverse(List) ->
    reverse(List, []).

reverse([], Acc) ->
    Acc;
reverse([H | T], Acc) ->
    reverse(T, [H | Acc]).
