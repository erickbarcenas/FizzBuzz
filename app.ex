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
    numbers = 1..stop
    numbers_list = Enum.to_list(numbers)
    Enum.map(numbers_list, fn value -> number_or_text(value) end)
  end

  comment """
  def print(evaluation) do
    case evaluation do
      {:Fizz} ->
        IO.puts("Fizz")
      {:Buzz} ->
        IO.puts("Buzz")
      _ ->
        {val} = evaluation
        IO.puts(val)
    end
  end
  """
end

FizzBuzz.fizzBuzz(15)
