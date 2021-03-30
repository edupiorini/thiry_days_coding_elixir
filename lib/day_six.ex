defmodule ThirtyDaysCoding.DaySix do
  require Integer

  def run() do
    number = read_integer()
    run_loop(number)
  end

  defp read_parse_line do
    IO.read(:stdio, :line)
    |> String.trim()
    |> String.split("", trim: true)
  end

  defp read_integer do
    IO.read(:stdio, :line)
    |> String.trim()
    |> String.to_integer()
  end

  defp run_loop(loop) when loop == 1 do
    word =
      read_parse_line()
      |> List.to_tuple()

    (tuple_size(word) - 1)
    |> find_index(word, {""}, {""})
  end

  defp run_loop(loop) do
    word =
      read_parse_line()
      |> List.to_tuple()

    (tuple_size(word) - 1)
    |> find_index(word, {""}, {""})

    loop = loop - 1
    run_loop(loop)
  end

  defp find_index(index, word, even_indexes, odd_indexes) when index >= 0 do
    letter = elem(word, index)

    case Integer.is_even(index) do
      true ->
        even_indexes = Tuple.append(even_indexes, letter)

        find_index(index - 1, word, even_indexes, odd_indexes)

      false ->
        odd_indexes = Tuple.append(odd_indexes, letter)

        find_index(index - 1, word, even_indexes, odd_indexes)
    end
  end

  defp find_index(index, _word, even_indexes, odd_indexes) when index < 0 do
    even =
      Tuple.to_list(even_indexes)
      |> List.to_string()
      |> String.reverse()

    odd =
      Tuple.to_list(odd_indexes)
      |> List.to_string()
      |> String.reverse()

    IO.write("#{even} #{odd}\n")
  end
end
