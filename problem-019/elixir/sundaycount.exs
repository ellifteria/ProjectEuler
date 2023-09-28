defmodule P019 do
  def get_month_days month do
    case month do
      0 -> 31
      1 -> 28
      2 -> 31
      3 -> 30
      4 -> 31
      5 -> 30
      6 -> 31
      7 -> 31
      8 -> 30
      9 -> 31
      10 -> 30
      11 -> 31
    end
  end

  def calc_leap_year month do
    cond do
      rem(month, 12) != 0 -> 0
      rem(month, 12 * 4) != 0 -> 0
      (rem(month, 12*100) == 0) and (rem(month, 12*400) != 0) -> 0
      true -> 1
    end
  end

  def count(mon_0, day_0, mon_f, counter) do
    if mon_0 > mon_f do
      counter
    else
      l = get_month_days(rem(mon_0, 12)) + calc_leap_year(mon_0)
      day = rem(day_0 + l, 7)
      case day do
        0 -> count(mon_0 + 1, day, mon_f, counter + 1)
        _ -> count(mon_0 + 1, day, mon_f, counter)
      end
    end
  end
end

IO.puts(P019.count(1901*12, 2, 2000*12, 0))
