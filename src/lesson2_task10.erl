-module(lesson2_task10).

-export([encode/1]).

%% Закодувати список за допомогою алгоритму RLE
encode(List) ->
    encode(List, []).

encode([], Acc) ->
    lesson2_task05:reverse(Acc);
encode([H | T], [{Count, H} | R]) ->
    encode(T, [{Count + 1, H} | R]);
encode([H | T], Acc) ->
    encode(T, [{1, H} | Acc]).
