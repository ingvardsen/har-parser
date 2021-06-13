defmodule JSON.Parse do


  defp json_load(file_uri) do
    case File.read(file_uri) do
      {:ok, content} ->
        case Poison.decode(content) do
          {:ok, json} -> json
          {:error, _} -> {:error, :decode_error}
        end
    end
  end


  defp printEntry(entry, filter) do

    method = get_in( entry, ["request", "method"] )
    url    = get_in( entry, ["request", "url"] )

    status = get_in( entry, ["response", "status"] )

    if String.contains?(url, filter) do
      IO.puts("#{status}, #{method}, #{url}")
    end

  end


  def readEntries(file_uri, filter) do

    json_load(file_uri)
    |> Map.get("log")
    |> Map.get("entries")
    |> Enum.each(fn entry ->
      printEntry(entry, filter)
    end)
  end

end
