-module(lesson2_task13).

-export([decode/1]).

%% Написати декодер для стандартного алгоритму RLE
decode(List) ->
    decode(List, []).

decode([], Acc) ->
    lesson2_task05:reverse(Acc);
decode([{0, _} | T], Acc) ->
    decode(T, Acc);
decode([{Count, H} | T], Acc) ->
    decode([{Count - 1, H} | T], [H | Acc]).
