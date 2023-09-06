-module(lesson2_task01_tests).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [
        {
            "it should return 'undefined' for an empty list",
            ?_assertEqual(
                undefined,
                lesson2_task01:last([])
            )
        },
        {
            "it should find a last element for the one-element list",
            ?_assertEqual(
                a,
                lesson2_task01:last([a])
            )
        },
        {
            "it should find a last element for the two-element list",
            ?_assertEqual(
                b,
                lesson2_task01:last([a, b])
            )
        },
        {
            "it should find a last element for a non-empty list",
            ?_assertEqual(
                f,
                lesson2_task01:last([a, b, c, d, e, f])
            )
        }
    ].
