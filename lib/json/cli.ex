defmodule JSON.Cli do

  require Logger

  import JSON.Parse

  def main(argv) do
    argv
    |> parse_args
    |> process
  end

  def parse_args(argv) do
    OptionParser.parse(argv, switches: [help: :boolean],
                              aliases: [h:    :help])
    |> IO.inspect()
    |> elem(1)
    |> args_to_internal_representation()
  end

  def args_to_internal_representation([file, url_filter]) do
    { file, url_filter }
  end

  def args_to_internal_representation(_) do
    :help
  end

  def process(:help) do
    IO.puts """
    Usage: har_parser <file> <url filter>

    Example showing all:  ./har_parser ./data/dd.har http
    Example strict match: ./har_parser ./data/dd.har http://duckduckgo.com/api/something
    """
    System.halt(0)
  end

  def process( {file, url_filter} ) do

    Logger.info("Processing #{file}, #{url_filter}")

    readEntries(file, url_filter)

  end
end
