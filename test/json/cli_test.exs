defmodule JSON.Cli.Test do

  use ExUnit.Case

  import JSON.Cli, only: [ parse_args: 1 ]

  test ":help returning two options" do
    assert parse_args(["file", "regex"]) == { "file", "regex" }
  end

  test ":help returned option parsing with -h and --help options" do
    assert parse_args(["-h",    "anything"]) == :help
    assert parse_args(["-help", "anything"]) == :help
  end

end
