-module(lesson2_task12).

-export([decode_modified/1]).

%% Написати декодер для модифікованого алгоритму RLE
decode_modified(List) ->
    decode_modified(List, []).

decode_modified([], Acc) ->
    lesson2_task05:reverse(Acc);
decode_modified([{0, _} | T], Acc) ->
    decode_modified(T, Acc);
decode_modified([{Count, H} | T], Acc) ->
    decode_modified([{Count - 1, H} | T], [H | Acc]);
decode_modified([H | T], Acc) ->
    decode_modified(T, [H | Acc]).
