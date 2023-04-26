function sumbyto(start, by, to)
	if start > to
		return 0
	end

	return start + sumbyto(start + by, by, to)
end

println(sumbyto(0, 3, 999) + sumbyto(0, 5, 999) - sumbyto(0, 15, 999))

