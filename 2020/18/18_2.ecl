% Advent of Code 2020
% Day 18: Operation Order Part Two
% https://adventofcode.com/2020/day/18
% ECLiPSe 6.0 #201 - https://eclipseclp.org
%
% Usage:
% eclipse -b 18_2.ecl -e main

:- op(300, yfx, +).
main :-
    ( fromto(false, _, End, true), fromto(0, SumPrev, SumCurr, Sum) do
        read_string(input, end_of_line, "", _, S),
        ( string_length(S, 0) ->
            End = true,
            SumCurr = SumPrev
        ;
            End = false,
            term_string(T, S),
            X is T,
            SumCurr is SumPrev + X
        )
    ),
    writeln(Sum).
