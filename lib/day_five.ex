defmodule ThirtyDaysCoding.DayFive do
  def run() do
    read_line()
    |> multiply(1)
  end

  def read_line do
    IO.read(:stdio, :line)
    |> String.trim()
    |> String.to_integer()
  end

  defp multiply(number, multiplier = 10) do
    result = number * multiplier
    IO.write("#{number} x #{multiplier} = #{result}")
  end

  defp multiply(number, multiplier) do
    result = number * multiplier
    IO.write("#{number} x #{multiplier} = #{result}\n")
    multiplier = multiplier + 1
    multiply(number, multiplier)
  end
end
