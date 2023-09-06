-module(lesson2_task07_tests).

-include_lib("eunit/include/eunit.hrl").

flatten_test_() ->
    [
        {
            "it should flatten a non-empty list",
            [
                ?_assertEqual(
                    [a, b, c, d, e],
                    lesson2_task07:flatten([a, [], [b, [c, d], e]])
                ),
                ?_assertEqual(
                    [a, b, c],
                    lesson2_task07:flatten([a, b, c])
                ),
                ?_assertEqual(
                    [a, b, c],
                    lesson2_task07:flatten([a, [b, [c]]])
                ),
                ?_assertEqual(
                    [a],
                    lesson2_task07:flatten([[[[a]]]])
                ),
                ?_assertEqual(
                    [a, b, c, d],
                    lesson2_task07:flatten([a, [b, c], [], d])
                )
            ]
        },
        {
            "it should flatten an empty list to the empty list",
            ?_assertEqual(
                [],
                lesson2_task07:flatten([])
            )
        },
        {
            "it should flatten a deeply nested empty list to the empty list",
            ?_assertEqual(
                [],
                lesson2_task07:flatten([[[[]]]])
            )
        },
        {
            "it should flatten a list of deeply nested empty lists to the empty list",
            ?_assertEqual(
                [],
                lesson2_task07:flatten([[], [[]], [[[]]], [[[[]]]]])
            )
        }
    ].
