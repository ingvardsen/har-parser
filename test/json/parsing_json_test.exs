defmodule JSON.Parsing.Test do

  use ExUnit.Case
  import ExUnit.CaptureIO

  import JSON.Parse, only: [ readEntries: 2 ]

  @root_dir  File.cwd!
  @testfile  "/data/tiny.har"


  test ":Reading all JSON Entries at level log/entries and check the IO output" do

    file = Path.join(~w(#{@root_dir}), @testfile)
    assert capture_io(fn -> readEntries( file, "duckduckgo" ) end) == "200, POST, https://duckduckgo.com/\n"

  end

  test ":Reading and filtering all JSON Entries at level log/entries with no filter match and check the IO output" do

    file = Path.join(~w(#{@root_dir}), @testfile)
    assert capture_io(fn -> readEntries( file, "-a-no-go-" ) end) == ""

  end

end
