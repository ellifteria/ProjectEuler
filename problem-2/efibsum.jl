function efibsum(n, nprev, max)
	if n > max
		return 0
	end

	if n % 2 != 0
		return efibsum(n + nprev, n, max)
	end

	return n + efibsum(n + nprev, n, max)
end

println(efibsum(1, 1, 4000000))

