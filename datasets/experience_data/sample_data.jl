using CSV
using StatsBase

# from https://www.soa.org/resources/research-reports/2021/2009-2016-individual-life-insurance-mortality/
c = CSV.File("ILEC 2009-16 20200123.csv")

n = 200_000
i = sample(axes(c, 1), n; replace = false,ordered=true)

CSV.write("ILEC 2009-2016 200k sample.csv",(@view c[i]))