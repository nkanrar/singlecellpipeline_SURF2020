# SURF2020
 This is a repository for my SURF code. 

Anaconda Environment Installation with environment.yml
1. Navigate to the binder folder and download the environment.yml and install.R files
2. conda env create -f environment.yml
3. R # open R in command line
4. install.packages("data.table", type = "source", repos = "https://Rdatatable.gitlab.io/data.table") # data.table has issues on CRAN repository, for now install from gitlab source code
5. install.packages(c('devtools', 'gam', 'RColorBrewer', 'BiocManager', 'plotly'))
6. update.packages(ask=F)
7. BiocManager::install(c("scran", "MAST", "slingshot", "ComplexHeatmap", "Seurat", "tradeSeq", "DEsingle"), version="3.10") # BiocManager version 3.10 is compatible with R version 3.6.3


Anaconda Environment Manual Installation Instructions
1. conda create --name env_surf -c conda-forge rpy2 (version 3.3.2, R version 3.6.3)
2. conda install -c conda-forge pandas numpy=1.18.5 scipy scikit-learn jupyter gsl tzlocal simplegeneric natsort h5py tqdm patsy llvmlite numba networkx joblib numexpr pytables seaborn statsmodels
3. conda install -c conda-forge python-igraph leidenalg
4. pip install --upgrade pip
5. pip install anndata anndata2ri fa2 gprofiler-official scanpy
6. conda install -c r r-xml # R's xml version has issues currently, use conda
7. R
8. install.packages("data.table", type = "source", repos = "https://Rdatatable.gitlab.io/data.table") # data.table has issues on CRAN repository, for now install from gitlab source code
9. install.packages(c('devtools', 'gam', 'RColorBrewer', 'BiocManager', 'plotly'))
10. update.packages(ask=F)
11. BiocManager::install(c("scran", "MAST", "slingshot", "ComplexHeatmap", "Seurat", "tradeSeq", "DEsingle"), version="3.10") # BiocManager version 3.10 is compatible with R version 3.6.3
