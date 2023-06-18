def get_leap_year_contribution(int i):
    if (i % 12 == 1) and (i % (12*4) == 0) and ((i % (12*100) != 0) or (i % (12*400) == 0)):
        return 1

    return 0

def count_sundays(
        int year_0,
        int month_0,
        int day_0,
        int year_f,
        int month_f
        ):

    cdef int[12] month_len
    month_len[0] = 31
    month_len[1] = 28
    month_len[2] = 31
    month_len[3] = 30
    month_len[4] = 31
    month_len[5] = 30
    month_len[6] = 31
    month_len[7] = 31
    month_len[8] = 30
    month_len[9] = 31
    month_len[10] = 30
    month_len[11] = 31

    cdef int i_0 = year_0 * 12 + month_0
    cdef int i_f = year_f * 12 + month_f

    cdef int i = i_0
    cdef int count = 0

    cdef int d = day_0

    cdef int l

    while i < i_f:
        l = month_len[i % 12] + get_leap_year_contribution(i)

        d = (d + l) % 7

        if d == 0:
            count += 1

        i += 1

    return count

print(count_sundays(1901, 0, 2, 2000, 11))
