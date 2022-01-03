# singlecellpipeline_SURF2020
This is a repository for a simple scRNA-seq analysis pipeline in Python using the package Scanpy in addition to some supplementary functions (in `module.py`).

In the tutorial (file `tutorial.ipynb`) I analyze a large forelimb developmental dataset [(He et al. 2020)](https://www.nature.com/articles/s41586-020-2536-x). The data files is too big to upload here, but are available from the authors to download on your own machine.

This analysis only requires Python packages, which can be installed as below, or by creating an Anaconda environment from the `environment.yml` file.

```
conda create --name singlecellpipeline_SURF2020

conda activate singlecellpipeline_SURF2020

conda install seaborn scikit-learn statsmodels numba pytables
conda install -c conda-forge python-igraph leidenalg
pip install scanpy

pip install jupyterlab
conda install -c bokeh jupyter_bokeh
conda install holoviews param panel colorcet

pip install watermark blackcellmagic jupyterlab-spellchecker multiprocess
```
