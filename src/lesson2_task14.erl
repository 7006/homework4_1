-module(lesson2_task14).

-export([duplicate/1]).

%% Написати дублікатор усіх елементів списку
duplicate(List) ->
    duplicate(List, []).

duplicate([], Acc) ->
    lesson2_task05:reverse(Acc);
duplicate([H | T], Acc) ->
    duplicate(T, [H, H | Acc]).
