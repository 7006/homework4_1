-module(lesson2_task09).

-export([pack/1]).

%% Запакувати послідовні дублікати у вкладені списки
pack(List) ->
    pack(List, []).

pack([], Acc) ->
    lesson2_task05:reverse(Acc);
pack([H | T1], [[H | T2] | R]) ->
    pack(T1, [[H, H | T2] | R]);
pack([H | T], Acc) ->
    pack(T, [[H] | Acc]).
