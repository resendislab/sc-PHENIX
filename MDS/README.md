
# Neuronal Dataset Analysis

## Overview
This repository contains the files and scripts used to analyze the neuronal dataset using various MDS combinations and kNN classifier models. The primary goal is to compare the performance of MAGIC and sc-PHENIX methods.

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

![Figure 6 Overview](./Fig 6 Overview knn classifier.png)

- **MAGIC.png**: Visualization related to the MAGIC method.
- **MDS_and_metrics_of_neuronal_dataset.ipynb**: Jupyter Notebook where various combinations of MDS were generated to create Figure 6, with 150 combinations for MAGIC and 150 for sc-PHENIX.
- **Magic_full_fx.csv**: Metrics data for the visualizations using the MAGIC method.
- **phenix.png**: Visualization related to the sc-PHENIX method.
- **plt.R**: R script used for generating the visualizations.
- **scPhenix_full_fx.csv**: Metrics data for the visualizations using the sc-PHENIX method.

## Usage
To reproduce the results and visualizations, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/neuronal-dataset-analysis.git
   ```

2. Navigate to the repository directory:
   ```bash
   cd neuronal-dataset-analysis
   ```

3. Install the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```

4. Run the Jupyter Notebook:
   ```bash
   jupyter notebook MDS_and_metrics_of_neuronal_dataset.ipynb
   ```

5. Use the R script to generate visualizations:
   ```bash
   Rscript plt.R
   ```

## Contributions
Feel free to contribute to this project by submitting pull requests or opening issues. 

## License
This project is licensed under the MIT License - see the LICENSE file for details.
