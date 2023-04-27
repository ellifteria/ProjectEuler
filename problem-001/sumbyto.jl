function sumbyto(start, by, to)
	if start > to
		return 0
	end

	return start + sumbyto(start + by, by, to)
end

mult_a = parse(Int, ARGS[1])
mult_b = parse(Int, ARGS[2])
max = parse(Int, ARGS[3])

println(sumbyto(0, mult_a, max) + sumbyto(0, mult_b, max) - sumbyto(0, 15, max))

