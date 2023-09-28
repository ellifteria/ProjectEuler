defmodule P002 do
  def efibsum(n, nprev, max) do
    cond do
      n > max -> 0
      rem(n, 2) != 0 -> efibsum(n+nprev, n, max)
      true -> n + efibsum(n+nprev, n, max)
    end
  end
end

IO.puts(P002.efibsum(1, 1, 4000000))
