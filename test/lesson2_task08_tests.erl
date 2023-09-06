-module(lesson2_task08_tests).

-include_lib("eunit/include/eunit.hrl").

compress_test_() ->
    [
        {
            "it should remove consecutive duplicate elements from a non-empty list",
            [
                ?_assertEqual(
                    [a, b, c, a, d, e],
                    lesson2_task08:compress([a, a, a, a, b, c, c, a, d, e, e, e, e])
                ),
                ?_assertEqual(
                    [a, b, c, d],
                    lesson2_task08:compress([a, b, c, c, d])
                ),
                ?_assertEqual(
                    [a, b, c, d],
                    lesson2_task08:compress([a, a, b, c, d])
                ),
                ?_assertEqual(
                    [a, b, c, d],
                    lesson2_task08:compress([a, b, c, d, d])
                )
            ]
        },
        {
            "it should not modify a non-empty list without duplicates",
            [
                ?_assertEqual(
                    [a, b, c, d],
                    lesson2_task08:compress([a, b, c, d])
                ),
                ?_assertEqual(
                    [a, b],
                    lesson2_task08:compress([a, b])
                ),
                ?_assertEqual(
                    [a],
                    lesson2_task08:compress([a])
                )
            ]
        },
        {
            "it should compress an empty list as an empty list",
            ?_assertEqual(
                [],
                lesson2_task08:compress([])
            )
        }
    ].
