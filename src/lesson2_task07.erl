-module(lesson2_task07).

-export([flatten/1]).

%% Вирівняти структуру із вкладеними списками
flatten(List) ->
    flatten(List, []).

flatten([H | T], Acc) ->
    flatten(H, flatten(T, Acc));
flatten([], Acc) ->
    Acc;
flatten(X, Acc) ->
    [X | Acc].
