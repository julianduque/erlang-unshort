%% Simple URL unshorter
%% @author Julian Duque <julianduquej@gmail.com>
%% @copyright 2013
%% @version 0.0.1
-module(unshort).
-export([resolve/1]).

resolve(Url) ->
  inets:start(),
  ssl:start(),

  {ok, {{_Version, _StatusCode, _StatusMsg}, Headers, _Body}} =
   httpc:request(get, { Url, [] }, [{ autoredirect, false }], []),

   proplists:get_value("location", Headers).
