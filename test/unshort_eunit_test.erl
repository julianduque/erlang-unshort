-module(unshort_eunit_test).
-compile(export_all).
-include_lib("eunit/include/eunit.hrl").

resolve_test() ->
  ?assertEqual("http://github.com/julianduque", unshort:resolve("http://bit.ly/1gLsRzC")).
