-module(lesson2_task02_tests).

-include_lib("eunit/include/eunit.hrl").

but_last_test_() ->
    [
        {
            "it should return 'undefined' for an empty list",
            ?_assertEqual(
                undefined,
                lesson2_task02:but_last([])
            )
        },
        {
            "it should return 'undefined' for the one-element list",
            ?_assertEqual(
                undefined,
                lesson2_task02:but_last([a])
            )
        },
        {
            "it should find 2 last elements for the two-element list",
            ?_assertEqual(
                {a, b},
                lesson2_task02:but_last([a, b])
            )
        },
        {
            "it should find 2 last elements for the three-element list",
            ?_assertEqual(
                {b, c},
                lesson2_task02:but_last([a, b, c])
            )
        },
        {
            "it should find 2 last elements for a non-empty list",
            ?_assertEqual(
                {e, f},
                lesson2_task02:but_last([a, b, c, d, e, f])
            )
        }
    ].
