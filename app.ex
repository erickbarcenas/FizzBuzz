defmodule FizzBuzz do
  @moduledoc """
    The FizzBuzz problem
  """

  def number_or_text(value) do
    cond do
      rem(value, 3) == 0 && rem(value, 5) == 0 -> IO.puts("FizzBuzz")
      rem(value, 3) == 0 -> IO.puts("Fizz")
      rem(value, 5) == 0 -> IO.puts("Buzz")
      true -> IO.puts(value)
    end
  end

  def fizzBuzz(stop) do
    Enum.each(1..stop, fn value -> number_or_text(value) end)
  end

end

FizzBuzz.fizzBuzz(15)
