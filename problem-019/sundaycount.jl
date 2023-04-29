@enum MONTH begin
  jan = 0
  feb = 1
  mar = 2
  apr = 3
  may = 4
  jun = 5
  jul = 6
  aug = 7
  sep = 8
  oct = 9
  nov = 10
  dec = 11
end

month_len = Dict{MONTH, Int64}(
  jan => 31,
  feb => 28,
  mar => 31,
  apr => 30,
  may => 31,
  jun => 30,
  jul => 31,
  aug => 31,
  sep => 30,
  oct => 31,
  nov => 30,
  dec => 31
)

RawMonthInt = Int64

function get_leap_year_contribution(i::RawMonthInt)
  if (i % 12 == 1) && (i % 12*4 == 0) && ((i % 12*100 != 0) || (i % 12*400 == 0))
    return 1
  end
  return 0
end

function count_sundays(start_year::Int64, start_month::MONTH, start_day::Int64, end_year::Int64, end_month::MONTH)::Int64
  start_i = start_year * 12 + Int(start_month)
  end_i = end_year * 12 + Int(end_month)

  i = start_i
  count = 0
  d = start_day
  while i < end_i
    l = month_len[MONTH(i % 12)] + get_leap_year_contribution(i)
    d = (d + l) % 7
    if d == 0
      count += 1
    end
    i += 1
  end
  return count
end

function main()
  print(count_sundays(1901, jan, 2, 2000, dec))
end

main()

