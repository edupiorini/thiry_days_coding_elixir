defmodule ThirtyDaysCoding.DayThree do
  require Integer


def run do
  read_line()
  |>check_odd()
end

defp read_line do
  IO.read(:stdio, :line)
  |> String.trim()
  |> String.to_integer()

end

defp check_odd(number) do
  case Integer.is_odd(number) do
    true -> IO.write("Weird")
    false when number >= 2 and number <= 5 or number > 20 -> IO.write("Not Weird")
    false when number >= 6 and number <= 20 -> IO.write("Weird")

    end
  end
end
