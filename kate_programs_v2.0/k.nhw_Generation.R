#k.nhw_Generation.R

if (length(commandArgs(TRUE)) > 0) { source(commandArgs()[length(commandArgs())]) }

stage <- 'Generation'
source(paste(R.path, "k.matrices_in_stage.R", sep='/'))

#  Pre Generation
source(paste(R.path, "access.R", sep='/'))
save(ma.mixrhm,file="ma.mixrhm.dat")
save(ma.mixthm,file="ma.mixthm.dat")

source(paste(R.path, "k.whia.R", sep='/'))
source(paste(R.path, "k.chwi.R", sep='/'))

#  Generation
source(paste(R.path, "k.nhwgen.R", sep='/'))

source(paste(R.path, "k.GenerationCleanup.R", sep='/'))

memory.size(max=TRUE)
