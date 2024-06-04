
# 3D Manifolds Visualization of Imputed Tumor Spheroid Data

## Description

This project presents an interactive dashboard that visualizes HDBSCAN clusters detected using various nonlinear dimensionality reduction methods: t-SNE, UMAP, PHATE, and 3D PCA. Additionally, the imputed genes VEGFA, ANLN, HIF1A, and NACA are visualized, representing extreme clusters for sc-PHENIX and MAGIC imputed data of the tumor spheroid dataset. These genes are critical in the context of MCF7 cell lines and tumor spheroids, highlighting their biological significance in the sc-PHENIX imputed results.

## Installation

To run the code, ensure you have the necessary Python packages installed. You can install the required packages using the following command:

```bash
pip install scprep umap-learn magic-impute s_gd2 hdbscan phate plotly
```

## Code Overview

The main steps of the code are as follows:

1. **Data Preparation**: Load and preprocess the tumor spheroid dataset.
2. **Dimensionality Reduction**: Apply PCA, t-SNE, UMAP, and PHATE to reduce the data to three dimensions.
3. **Cluster Detection**: Use HDBSCAN to detect clusters in the reduced data.
4. **Visualization**: Create a 3D scatter plot for each dimensionality reduction method, highlighting the clusters and the imputed genes.

## Running the Code

### Step 1: Data Preparation

The data is first loaded and preprocessed. This involves standardizing the data and applying PCA to reduce the number of components for further dimensionality reduction.

### Step 2: Dimensionality Reduction

The following methods are used to reduce the data to three dimensions:

- **PCA**: Principal Component Analysis
- **t-SNE**: t-Distributed Stochastic Neighbor Embedding
- **UMAP**: Uniform Manifold Approximation and Projection
- **PHATE**: PHATE (Potential of Heat-diffusion for Affinity-based Transition Embedding)

### Step 3: Cluster Detection

HDBSCAN (Hierarchical Density-Based Spatial Clustering of Applications with Noise) is applied to detect clusters in the reduced data.

### Step 4: Visualization

Using Plotly, 3D scatter plots are created for each dimensionality reduction method. These plots display the detected clusters and the imputed genes VEGFA, ANLN, HIF1A, and NACA. The plots are saved as an interactive HTML dashboard.

## Output

The final output is an interactive HTML file named `3d_reduction_dashboard_with_clusters.html`, which contains the 3D visualizations of the clusters and the imputed genes.

## Example Usage

```python
# Run the PCA
pca_data = run_pca(data, n_components=30, random_state=1)

# Run UMAP
umap_data = run_umap(pca_data, n_neighbors=15, n_components=3)

# Run t-SNE
tsne_data = run_tsne(pca_data, n_components=3)

# Run PHATE
phate_data = run_phate(pca_data)

# Apply HDBSCAN clustering
clusters = apply_hdbscan(umap_data)

# Visualize the data
visualize_3d(pca_data, tsne_data, umap_data, phate_data, clusters)
```
