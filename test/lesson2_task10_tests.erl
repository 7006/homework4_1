-module(lesson2_task10_tests).

-include_lib("eunit/include/eunit.hrl").

encode_test_() ->
    [
        {
            "it should encode a non-empty list by RLE algo",
            [
                ?_assertEqual(
                    [{4, a}, {1, b}, {2, c}, {2, a}, {1, d}, {4, e}],
                    lesson2_task10:encode([a, a, a, a, b, c, c, a, a, d, e, e, e, e])
                ),
                ?_assertEqual(
                    [{1, a}, {1, b}, {1, c}],
                    lesson2_task10:encode([a, b, c])
                ),
                ?_assertEqual(
                    [{1, a}],
                    lesson2_task10:encode([a])
                ),
                ?_assertEqual(
                    [{3, a}],
                    lesson2_task10:encode([a, a, a])
                )
            ]
        },
        {
            "it should encode an empty list as an empty list",
            ?_assertEqual(
                [],
                lesson2_task10:encode([])
            )
        }
    ].
