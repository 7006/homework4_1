-module(lesson2_task12_tests).

-include_lib("eunit/include/eunit.hrl").

decode_modified_test_() ->
    [
        {
            "it should decode a non-empty list encoded by the modified RLE algo",
            [
                ?_assertEqual(
                    [a, a, a, a, b, c, c, a, a, d, e, e, e, e],
                    lesson2_task12:decode_modified([{4, a}, b, {2, c}, {2, a}, d, {4, e}])
                ),
                ?_assertEqual(
                    [a, b, c],
                    lesson2_task12:decode_modified([a, b, c])
                ),
                ?_assertEqual(
                    [a],
                    lesson2_task12:decode_modified([a])
                ),
                ?_assertEqual(
                    [a, a, a],
                    lesson2_task12:decode_modified([{3, a}])
                )
            ]
        },
        {
            "it should decode an empty list as an empty list",
            ?_assertEqual(
                [],
                lesson2_task12:decode_modified([])
            )
        }
    ].
