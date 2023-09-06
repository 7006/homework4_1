-module(lesson2_task13_tests).

-include_lib("eunit/include/eunit.hrl").

decode_test_() ->
    [
        {
            "it should decode a non-empty list encoded by RLE algo",
            [
                ?_assertEqual(
                    [a, a, a, a, b, c, c, a, a, d, e, e, e, e],
                    lesson2_task13:decode([{4, a}, {1, b}, {2, c}, {2, a}, {1, d}, {4, e}])
                ),
                ?_assertEqual(
                    [a, b, c],
                    lesson2_task13:decode([{1, a}, {1, b}, {1, c}])
                ),
                ?_assertEqual(
                    [a],
                    lesson2_task13:decode([{1, a}])
                ),
                ?_assertEqual(
                    [a, a, a],
                    lesson2_task13:decode([{3, a}])
                )
            ]
        },
        {
            "it should decode an empty list as an empty list",
            ?_assertEqual(
                [],
                lesson2_task13:decode([])
            )
        }
    ].
