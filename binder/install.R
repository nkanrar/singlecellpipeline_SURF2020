install.packages("data.table", type = "source", repos = "https://Rdatatable.gitlab.io/data.table")
install.packages(c('devtools', 'gam', 'RColorBrewer', 'BiocManager', 'plotly'))
BiocManager::install(c("scran", "MAST", "slingshot", "DEsingle"), version="3.10")
