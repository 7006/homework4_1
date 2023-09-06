-module(lesson2_task04_tests).

-include_lib("eunit/include/eunit.hrl").

len_test_() ->
    [
        {
            "it should get 0 for an empty list",
            ?_assertEqual(
                0,
                lesson2_task04:len([])
            )
        },
        {
            "it should get the length of a non-empty list",
            [
                ?_assertEqual(
                    4,
                    lesson2_task04:len([a, b, c, d])
                ),
                ?_assertEqual(
                    2,
                    lesson2_task04:len([a, b])
                ),
                ?_assertEqual(
                    1,
                    lesson2_task04:len([a])
                )
            ]
        }
    ].
