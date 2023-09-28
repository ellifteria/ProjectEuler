defmodule P001 do
  def sumbyto(start, by, to) do
    if start > to do
      0
    else
      start + (sumbyto(start + by, by, to))
    end
  end
end

IO.puts(P001.sumbyto(0, 3, 999) + P001.sumbyto(0, 5, 999) - P001.sumbyto(0, 15, 999))
