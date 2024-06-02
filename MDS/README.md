
# Neuronal Dataset Analysis

# Overview

This repository contains the files and scripts used to analyze the neuronal dataset using various MDS combinations and kNN classifier models. The primary goal is to compare the performance of MAGIC and sc-PHENIX methods.

Each plot represents different combinations of diffusion parameters \( t \), kNN values, and PCA dimensions. The color gradient, using a rainbow palette, indicates the classifier accuracy, with red representing higher accuracy and blue representing lower accuracy. The top row corresponds to MAGIC, while the bottom row corresponds to sc-PHENIX. The results show how increasing \( t \), kNN, and PCA dimensions affect local structure preservation.








## Directory Structure

```
Name                             | Last Commit Message           | Last Commit Date
---------------------------------|-------------------------------|-------------------
parent directory                 |                               |
D.                               | Create D.                     | last week
Fig 6 Overview knn classifier.png| Add files via upload          | 3 days ago
MAGIC.png                        | Add files via upload          | 3 days ago
MDS_and_metrics_of_neuronal_dataset.ipynb | Add files via upload          | last week
Magic_full_fx.csv                | Add files via upload          | 3 days ago
phenix.png                       | Add files via upload          | 3 days ago
plt.R                            | Add files via upload          | 3 days ago
scPhenix_full_fx.csv             | Add files via upload          | 3 days ago
```

## Files Description

- **Fig 6 Overview knn classifier.png**: An overview of the kNN classifier model accuracy on the 2D-MDS space derived from MAGIC's and sc-PHENIX's exponentiated Markovian matrix.

![Figure 6 Overview](.[/Fig 6 Overview knn classifier.png](https://github.com/resendislab/sc-PHENIX/blob/main/MDS/Fig%206%20Overview%20knn%20classifier.png))

- **MAGIC.png**: Visualization related to the MAGIC method.
- **MDS_and_metrics_of_neuronal_dataset.ipynb**: Jupyter Notebook where various combinations of MDS were generated to create Figure 6, with 150 combinations for MAGIC and 150 for sc-PHENIX.
- **Magic_full_fx.csv**: Metrics data for the visualizations using the MAGIC method.
- **phenix.png**: Visualization related to the sc-PHENIX method.
- **plt.R**: R script used for generating the visualizations.
- **scPhenix_full_fx.csv**: Metrics data for the visualizations using the sc-PHENIX method.

