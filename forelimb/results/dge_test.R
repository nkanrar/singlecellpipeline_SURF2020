# DGE test code

library(scran)
library(RColorBrewer)
library(slingshot)
library(gam)
library(clusterExperiment)
library(ggplot2)
library(plyr)
library(MAST)
library(scales)
library(DEsingle)
library(BiocParallel)
library(iterators)
library(parallel)

skin_sce <- readRDS("./forelimb/results/skin_sce.rds") # replace this with the appropriate directory and filename

BPPARAM <- BiocParallel::bpparam()
BPPARAM$workers <- parallel::detectCores() - 2
BPPARAM$progressbar <- TRUE

count_mtx <- assay(skin_sce, "counts")
print(dim(count_mtx))

combos <- combn(unique(colData(skin_sce)[12]$leiden), m=2, simplify=FALSE)

for (val in seq_along(combos))
{
  cat(val,"out of",length(combos),"\n")
  mtx1 <- count_mtx[,colData(skin_sce)[12]$leiden == combos[[val]][1]]
  mtx2 <- count_mtx[,colData(skin_sce)[12]$leiden == combos[[val]][2]]
  group <- factor(c(rep(combos[[val]][1],dim(mtx1)[2]), rep(combos[[val]][2],dim(mtx2)[2])))
  fin_mtx <- cbind(mtx1, mtx2)
  temp_results <- DEsingle(counts=fin_mtx,group=group, parallel=TRUE, BPPARAM=BPPARAM)
  write.csv(temp_results, paste0("./forelimb/results/DE_single_results/",combos[[val]][1],"_",combos[[val]][2], ".csv")) # replace with appropriate results directory
}
