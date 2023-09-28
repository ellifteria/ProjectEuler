defmodule P006 do
  def sumsqrto(n, max) do
    cond do
      n > max -> 0
      true -> (n * n) + sumsqrto((n + 1), max)
    end
  end

  def sumto(n, max) do
    cond do
      n > max -> 0
      true -> n + sumto((n + 1), max)
    end
  end
end

IO.puts((P006.sumto(0, 100))**2 - P006.sumsqrto(0, 100))
