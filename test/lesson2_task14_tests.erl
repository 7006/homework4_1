-module(lesson2_task14_tests).

-include_lib("eunit/include/eunit.hrl").

duplicate_test_() ->
    [
        {
            "it should duplicate each element for a non-empty list",
            [
                ?_assertEqual(
                    [a, a, b, b, c, c, c, c, d, d],
                    lesson2_task14:duplicate([a, b, c, c, d])
                ),
                ?_assertEqual(
                    [a, a, a, a, b, b, c, c, c, c, d, d, d, d],
                    lesson2_task14:duplicate([a, a, b, c, c, d, d])
                ),
                ?_assertEqual(
                    [a, a],
                    lesson2_task14:duplicate([a])
                )
            ]
        },
        {
            "it should duplicate an empty list as an empty list",
            ?_assertEqual(
                [],
                lesson2_task14:duplicate([])
            )
        }
    ].
