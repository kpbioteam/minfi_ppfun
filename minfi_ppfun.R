require("minfi", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input = args[1]
output = args[2]

RGSet <- get(load(input))

GRSet <- preprocessFunnorm(RGSet)

save(GRSet,file = output)
