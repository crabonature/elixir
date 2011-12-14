-module(erlang_call_test).
-export([match/0]).
-include_lib("eunit/include/eunit.hrl").

match() -> 1.

erlang_call_test() ->
  {1, []} = elixir:eval("Erlang.abs(-1)"),
  {1, []} = elixir:eval("Erlang.erlang.abs(-1)"),
  {_, []} = elixir:eval("Erlang.dict.new"),
  {_, []} = elixir:eval("Erlang.dict.new()"),
  {1, []} = elixir:eval("Erlang.erlang_call_test.match()"),
  Date = erlang:date(),
  {Date, []} = elixir:eval(".(:erlang, :date)"),
  {1, []} = elixir:eval(".(:erlang, :abs)(-1)").