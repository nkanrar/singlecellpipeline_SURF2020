sudo su - -c "R -e \"install.packages("data.table", type = "source", repos = "https://Rdatatable.gitlab.io/data.table", lib = "/srv/conda/envs/notebook/lib/R/library")\""
sudo su - -c "R -e \"install.packages(c('devtools', 'gam', 'RColorBrewer', 'BiocManager', 'plotly'), lib = "/srv/conda/envs/notebook/lib/R/library")\""
sudo su - -c "R -e \"13. BiocManager::install(c("scran", "MAST", "slingshot", "DEsingle"), version="3.10", lib = "/srv/conda/envs/notebook/lib/R/library")\""
