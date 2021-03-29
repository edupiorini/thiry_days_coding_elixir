defmodule ThirtyDaysCoding.DaySix do
  def run() do
    number = read_integer()
    find_index(number)
  end

  defp read_parse_line do
    IO.read(:stdio, :line)
    |> String.trim()
    |> String.split("", trim: true)
    |> List.to_tuple()
  end

  defp read_integer do
    IO.read(:stdio, :line)
    |> String.trim()
    |> String.to_integer()
  end

  defp find_index(loop) when loop == 1 do
    read_parse_line()
  end

  defp find_index(loop) do
    read_parse_line()

    loop = loop - 1
    find_index(loop)
  end
end
