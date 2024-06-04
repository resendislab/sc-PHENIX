
# Figures for PBMC and Neuronal MDS Analysis

This repository contains the code to generate figures for the analysis of PBMC and neuronal MDS data.

## Overview

This script performs the following key steps:
1. **Data Preparation**: Loading and preprocessing of data.
2. **Dimensionality Reduction**: Application of PCA, UMAP, and diffusion maps (same component from MAGIC and sc-PHENIX exponantiated Markovian Matrix) with MDS  to reduce dimensions.
3. **Visualization**: Creating various plots to visualize the results of the dimensionality reduction mds(ONLY pca, Exponinanted Markov Matrix from init PCA and init PCA-UMAP ), phate and umap.

## Visualization Libraries

The primary visualization libraries used in this script are:
- from matplotlib import offsetbox
- from matplotlib.colors import ListedColormap
- import matplotlib.pyplot as plt
- import plotly as offline
- import plotly.express as px
- import seaborn as sns
- import seaborn as sns; sns.set()

## Interactive Visualizations

Interactive visualizations generated using plotly are viewable in Colab. However, other environments that support interactive visualizations are also suitable. But in github is not

## Usage

To run the code and generate the figures, you need to have the required libraries installed. You can install them using the following commands:

```bash
pip install umap-learn phate scprep s_gd2
pip install matplotlib seaborn plotly
```

Once the dependencies are installed, you can execute the script to generate the figures.

## Figures

The script generates the following figures:

- **Figure 4**: `Fig 4 and 5 and supplementaries for PBMC and NEURONAL mds.ipynb`

- **Figure 7**: `Fig 7.ipynb`

- **Supplementary Figures S1 to S10**:  `Fig 4 and 5 and supplementaries for PBMC and NEURONAL mds.ipynb`

- **Supplementary Figures S9 to S10**  `UMAP_MNIST.ipynb`

## Notes

- Ensure you run the script in an environment that supports interactive visualizations, such as Google Colab, to fully benefit from the interactive plots.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
