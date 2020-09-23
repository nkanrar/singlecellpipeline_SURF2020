sudo su - -c "R -e \"install.packages("data.table", type = "source", repos = "https://Rdatatable.gitlab.io/data.table")\""
sudo su - -c "R -e \"install.packages(c('devtools', 'gam', 'RColorBrewer', 'BiocManager', 'plotly'))\""
sudo su - -c "R -e \"13. BiocManager::install(c("scran", "MAST", "slingshot", "DEsingle"), version="3.10")\""
