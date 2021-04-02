defmodule ThirtyDaysCoding.DayEight do
  def run do
    number_of_contacts = read_integer()

    insert_contact(number_of_contacts, %{})
    |> query_map(number_of_contacts)
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

  defp insert_contact(number_of_contacts, map) when number_of_contacts > 1 do
    data = read_parse_line()
    name = String.to_atom(elem(data, 0))
    number = elem(data, 1)

    map = Map.update(map, name, number, fn i -> i end)

    insert_contact(number_of_contacts - 1, map)
  end

  defp insert_contact(number_of_contacts, map) when number_of_contacts == 1 do
    data = read_parse_line()
    name = String.to_atom(elem(data, 0))
    number = elem(data, 1)

    map = Map.update(map, name, number, fn i -> i end)

    map
  end

  defp query_map(map, number_of_contacts) when number_of_contacts > 1 do
    name =
      IO.read(:stdio, :line)
      |> String.trim()
      |> String.to_atom()

    case Map.fetch(map, name) do
      {:ok, value} -> IO.write("#{Atom.to_string(name)}=#{value}\n")
      :error -> IO.write("Not found\n")
    end

    query_map(map, number_of_contacts - 1)
  end

  defp query_map(map, number_of_contacts) when number_of_contacts == 1 do
    name =
      IO.read(:stdio, :line)
      |> String.trim()
      |> String.to_atom()

    case Map.fetch(map, name) do
      {:ok, value} -> IO.write("#{Atom.to_string(name)}=#{value}\n")
      :error -> IO.write("Not found\n")
    end
  end
end
