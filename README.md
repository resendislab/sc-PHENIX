# sc-PHENIX Imputation  (2022; Code for paper)


### What is sc-PHENIX

 sc-PHENIX was developed to improve imputation of scRNA-seq data avoiding over-smoothing; it falls into the category of smooth-based imputation based on benchmarking. However, the methods used in sc-PHENIX to obtain the low dimensional manifold is UMAP(*Uniform Manifold approximation and Projection*), and the **M<sup>t</sup>** (exponentiated Markov matrix) is from diffusion maps, both techniques based on manifold learning being part of the nonlinear dimensionality reduction methods category, a subfield of machine learning. In this work, our approach is an improvement to the popular method MAGIC by integrating UMAP in the imputation process. Consequently, there is an improvement in the computation of **M<sup>t</sup>** reflecting the denoised cell-neighborhood that captures local, continuum and global data structures. The advantage of  preserving data structures with sc-PHENIX compared to MAGIC is that we can share gene expression among more accurate nearest neighbors cells on the manifold of **M<sup>t</sup>** sc-PHENIX. Following these procedures, we obtain more biological insights and at the same time mitigate the risk of over-smoothing data among spurious distinct cell phenotypes.

### What you need to know first

The user needs to have knowledge of how to use of pandas and numpy libraries, this implies that the user has python knowledge. Any free course, cursera or udeamy course can be used to learn faster this python libraries, for recent users please go in here  [click here](https://www.udemy.com/share/101WaU3@3A6uj9QXHRFfZxf59mg8aLG7J1eXrfzT5RKo5SO1VRl9RxsqCEINIxSf67WH3GsG/) to learn the basics.

sc-PHENIX is based mainly of the use of UMAP, more information of how to use UMAP please [click here](https://umap-learn.readthedocs.io/en/latest/index.html). Please keep in mind that we suggest that n_components  (UMAP dimensions) can be set for more than 3 in a non-visual manner to capture better data structure for the diffusion process.  

### How to use




sc-PHENIX is available in colab [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/resendislab/sc-PHENIX/blob/main/sc-PHENIX%20tutorial%20colab/sc_PHENIX_try_me_example.ipynb)
