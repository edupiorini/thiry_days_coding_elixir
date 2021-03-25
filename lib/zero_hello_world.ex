defmodule ThirtyDaysCoding.ZeroHelloWorld do
  def print do
    IO.write("Hello, World!")

    IO.gets("")
    |> IO.puts()
  end
end
