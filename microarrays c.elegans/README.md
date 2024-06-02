# sc-PHENIX: Evaluating Diffusion-Based Imputation Using Bulk Data

## Overview

This repository contains the files and scripts used to analyze bulk transcriptomic data from _Caenorhabditis elegans_ (C. elegans) using various imputation methods. The primary goal is to compare the performance of MAGIC and sc-PHENIX methods, particularly focusing on the effects of PCA and PCA-UMAP initialization on imputation performance.

## Notebooks and Files

### Jupyter Notebooks

1. **PCA,_PCA_UMAP_and_t_SNE_and_PCA_t_SNE_DIMENSIONS_for_sc_PHENIX.ipynb**
   - This notebook explores the impact of different dimensionality reduction techniques (PCA, PCA-UMAP, t-SNE, PCA-tSNE) on the performance of sc-PHENIX imputation.

2. **Supplementary_pca_high_knn_and_eigen_laplacian_maps_20n_components.ipynb**
   - Provides supplementary analysis using high knn values and Laplacian Eigenmaps with 20 components to examine their effect on imputation performance.

3. **decay_increasing_as_pca_pca_low_knn_MAGIC_and_scphenix_high_knn.ipynb**
   - Investigates the effect of increasing the decay parameter alongside PCA dimensions for both MAGIC (with low knn) and sc-PHENIX (with high knn).

4. **knn.ipynb**
   - Analyzes the influence of different knn values on the imputation performance for both methods.

5. **pca.ipynb**
   - Examines the impact of varying the number of PCA components on imputation accuracy.

6. **pca_high_knn_and_eigen_laplacian_maps_190_n_components.ipynb**
   - Further analysis using high knn values and Laplacian Eigenmaps with 190 components to provide a comprehensive comparison.



## Context

### Performance of Diffusion-Based Imputation Using Bulk Data

To illustrate the effect of using PCA initialization, as implemented in MAGIC compared with PCA-UMAP initialization, as proposed in this work, on imputation performance, we utilized bulk transcriptomic data from 206 developmentally synchronized young adult C. elegans. We introduced random zeros to 80% of this data to corrupt it. The dataset includes bulk RNA-seq samples representing developmental trajectories, measured at regular intervals throughout a 12-hour developmental period using microarrays.

#### Evaluation Scenarios
We evaluated two scenarios with PCA:
1. High knn value (knn = 30)
2. Low knn value (knn = 5)

In the analysis, we fixed t = 5 and decay = 15, and compared the performance using Pearson correlation, Spearman correlation, and R² scores as metrics.

#### Key Findings
- **High knn Scenario:** sc-PHENIX consistently shows higher values across all metrics compared to MAGIC, indicating better similarity to the original data.
- **Low knn Scenario:** MAGIC performs better with fewer PCA components, while sc-PHENIX improves significantly as the number of PCA components increases, eventually surpassing MAGIC.
- **Mixed knn Scenario:** MAGIC’s performance decreases significantly with low knn values, whereas sc-PHENIX maintains higher performance with high knn values, highlighting its robustness.

### PCA-UMAP Initialization

We demonstrated the implications of PCA-UMAP initialization versus UMAP-only initialization for sc-PHENIX imputation. Fixed parameters: t = 5, decay = 5, n_pca = 71, knn = 30.

- **Performance:** Using PCA as an initialization for UMAP results in better performance for sc-PHENIX imputation compared to using UMAP alone.
- **UMAP Dimensions:** More UMAP dimensions lead to better performance, maintaining robustness as dimensionality increases.

### Variance and Imputation Performance

#### Explained Variance by PCA Components
- **PCA Components:** 71 components achieve 70% of the variance of dropout data.
- **MAGIC's Performance:** Negatively affected by using more than 71 PCA dimensions, leading to over-smoothing.
- **sc-PHENIX's Performance:** Mitigates over-smoothing issues.

### Gene Expression Trends
- **Genes:** C27A7.6, dct-5, and erd-2.
- **Comparison:** sc-PHENIX localizes gene expression among local knn samples with similar expression levels in the reference and does not over-smooth the data as MAGIC does.

### t-SNE vs. UMAP
- **Performance:** Neither PCA-tSNE nor t-SNE initialization outperformed sc-PHENIX with PCA-UMAP or UMAP initialization.

### Laplacian Eigenmaps Initialization
- **Analysis:** Laplacian Eigenmaps-UMAP initialization showed lower AUC and global mean of the metrics compared to PCA, UMAP, or PCA-UMAP initialization for sc-PHENIX.

### Decay Parameter and PCA Dimensionality
- **Evaluation:** Impact of varying the decay parameter alongside increasing PCA dimensions.
- **Performance:** Slight improvement in AUC with increased decay parameter, clearer separation between MAGIC and sc-PHENIX with increasing PCA and decay values.

## Conclusion

Based on the AUC metric, MAGIC is more effective with fewer PCA components and a low knn value. In contrast, sc-PHENIX performs better with more PCA components and requires a higher knn value to achieve superior imputation performance, generally outperforming MAGIC in any knn scenario. These results suggest that sc-PHENIX's initialization method shows more robustness and scalability across various PCA dimensions when knn values are high.

