# README

## Overview

This repository contains data and code related to the analysis of MCF7 tumor spheroids, as presented in the work of Muciño and collaborators. The analyses focus on cluster identification, gene interaction, differential expression, and various dimensionality reduction techniques applied to imputed data. Below is a detailed description of the files included in this repository.

## Files and Descriptions

### Data Files

1. **3DPCAHDBSCANIMPUTATIONMAGIC.csv**
   - Description: Contains the clusters obtained from the post-imputed data based on the 3D PCA space of data imputed by MAGIC.
   
2. **3dPCAmagic.csv**
   - Description: Coordinates of the data imputed by MAGIC.

3. **EMDMAGIC_clusters.csv**
   - Description: Results of the Earth Mover's Distance (EMD) analysis.

4. **MCTS_b.csv.zip**
   - Description: The raw data matrix based on the work of Muñoz et al.
   
5. **MCTS_b.txt**
   - Description: The same file as `MCTS_b.csv.zip` but decompressed (CSV format).

6. **Umap_coordinates_clusters.csv**
   - Description: UMAP coordinates from the original work of Muciño and collaborators.

7. **clusterer_MCF7_HDBSCAN.csv**
   - Description: Information on HDBSCAN clusters for each sample, calculated from the 3D PCA space of sc-PHENIX data.

8. **kmeans_Class_uMAP_6000.csv**
   - Description: UMAP coordinates from the original work of Muciño and collaborators.

9. **phenix_gsea_clusterall.csv**
   - Description: General results of GSEA, with specific details in table S2 which contains the GSEA enrichment analysis of EMD values from clusters obtained from the 3D PCA space from MAGIC and sc-PHENIX.

### Interactive and Visualization Files

1. **3DPCA_PHENIX_.html**
   - Description: An interactive 3D plot representing the PCA results of the imputed data.
   
2. **CDH1-FN1-VIM_HDBSCAN.html**
   - Description: Gene interaction plot for CDH1, FN1, and VIM.

### Jupyter Notebooks

1. **EMD_MAGIC_HDBSCAN.ipynb**
   - Description: Code for obtaining HDBSCAN clusters and performing pairwise differential expression analysis.
   
2. **EMD_MAGIC_HDBSCAN_ok.ipynb**
   - Description: This notebook contains the final version of the code used for the article, including HDBSCAN cluster calculations and pairwise differential expression analysis.

3. **IMPUTACION_MFC7_FOR_MAGIC_AND_PHENIX_.ipynb**
   - Description: Imputation using sc-PHENIX and MAGIC, including preprocessing and imputation steps.

4. **MAGIC_HDBSCAN_3DPCA.ipynb**
   - Description: Code for obtaining the heatmap of EMD scores and calculating the same.

5. **PHENIX_HDBSCAN_3DPCA.ipynb**
   - Description: Calculation of HDBSCAN clusters from the 3D PCA of data imputed by sc-PHENIX.

6. **UMI_PHENIX_mcf7_.ipynb**
   - Description: Calculation of an interactive plot to determine the number of transcripts per cell (UMI).

7. **phenix_EMD_mcf7.ipynb**
   - Description: Differential expression analysis by clusters, including the calculation and visualization of the EMD score heatmap.

8. **GSEA_MAGIC_PHENIX.ipynb**
   - Description: Code for visualizing GSEA enrichment analysis results from table S2, based on the EMD values from clusters obtained from the 3D PCA space of MAGIC and sc-PHENIX.

### Miscellaneous Files

1. **ds.txt**
   - Description: Additional documentation or notes related to the data and analyses.

### Directories

1. **PHENIX viz**
   - Description: Contains visualizations of t-SNE, PCA, UMAP, and PHATE for the imputed data. The visualizations include clusters calculated using HDBSCAN, as well as other gene-specific visualizations from the main article.

2. **MAGIC viz**
   - Description: Contains visualizations of t-SNE, PCA, UMAP, and PHATE for the imputed data. The visualizations include clusters calculated using HDBSCAN, as well as other gene-specific visualizations from the main article.

## Usage

To replicate the analyses or explore the data, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
