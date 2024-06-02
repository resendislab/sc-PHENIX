# Reproducibility of sc-PHENIX as MAGIC with PCA Initialization

## Overview

This notebook demonstrates that our diffusion process with sc-PHENIX (using PCA initialization) is comparable to MAGIC. The imputed gene-gene interactions exhibit similar structures. The R² correlations for both sc-PHENIX (PCA-initialization) and MAGIC are near 1, indicating similar imputation results. Therefore, we infer that the exponentiated Markov Matrix of sc-PHENIX approximates that of MAGIC when PCA is used as input. The data used is from the EMT dataset in MAGIC’s paper.

## Analysis

Given PCA's robustness and the algebraic nature of creating diffusion maps, we expected similar outcomes in theory. However, feedback suggests our approach might need refinement due to the libraries used for matrix operations in MAGIC. To assess the reproducibility of sc-PHENIX with PCA initialization against MAGIC, we computed the mean R² and its standard deviation from the gene-to-gene correlations in both imputed matrices. The mean R² was approximately 0.999, with a very small standard deviation, indicating close resemblance between the results from sc-PHENIX with PCA initialization and MAGIC.

### Outliers Analysis
With 28,910 gene symbols in this dataset, it was critical to determine if significant outliers were obscured by the data's volume. We plotted gene values from MAGIC against those from sc-PHENIX (init PCA) for R² values below 0.998, identifying only seven genes under this threshold. These findings suggest our method replicates MAGIC's results well.

### Potential Discrepancies
A possible explanation for minor discrepancies might be MAGIC's use of a library for sparse data, which is a hypothesis.

## Conclusion

The analysis underscores the high reproducibility of the methods employed and suggests minor computational differences related to the use of libraries.

## Code Used

- `Reproducibility_of_sc_PHENIX_as_MAGIC_with_PCA_initialization.ipynb`
