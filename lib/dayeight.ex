defmodule ThirtyDaysCoding.DayEight do
  def run do
    read_integer()
    |> insert_contact(%{})
  end

  defp read_integer do
    IO.read(:stdio, :line)
    |> String.trim()
    |> String.to_integer()
  end

  defp read_parse_line do
    IO.read(:stdio, :line)
    |> String.trim()
    |> String.split(" ", trim: true)
    |> List.to_tuple()
  end

  defp insert_contact(number_of_contacts, map) when number_of_contacts >= 1 do
    data = read_parse_line()
    name = String.to_atom(elem(data, 0))
    number = elem(data, 1)

    map = Map.update(map, name, number, fn i -> i end)

    insert_contact(number_of_contacts - 1, map)
  end

  defp insert_contact(number_of_contacts, map) when number_of_contacts == 0 do
    map
  end
end
