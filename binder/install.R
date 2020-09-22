install.packages("- r-base=3.6.1-3bionic")
install.packages("data.table", type = "source", repos = "https://Rdatatable.gitlab.io/data.table")
install.packages(c('devtools', 'gam', 'RColorBrewer', 'BiocManager', 'plotly'))
BiocManager::install(c("scran", "MAST", "slingshot", "ComplexHeatmap", "Seurat", "tradeSeq", "DEsingle"), version="3.10")
