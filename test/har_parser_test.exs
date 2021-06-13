defmodule HarParserTest do
  use ExUnit.Case
  doctest HarParser

  test "greets the world" do
    assert HarParser.hello() == :world
  end
end
