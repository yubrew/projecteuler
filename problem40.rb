#real	0m0.938s
#user	0m0.880s
#sys	0m0.052s

@champernowne = [*'1'..'1000000'].join
p @champernowne[0].to_i * @champernowne[9].to_i * @champernowne[99].to_i * @champernowne[999].to_i * @champernowne[9999].to_i * @champernowne[99999].to_i * @champernowne[999999].to_i
