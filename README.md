# Gene Expression Analysis – Computational Genomics Project

## Overview

This is a self-initiated learning project in computational genomics. The goal is to explore differential gene expression analysis using publicly available microarray data from the GEO database and R programming tools.

---

## Personal Project Summary

**Project Title:** Differential Gene Expression Analysis Using Public Microarray Data  
**Tools Used:** R, GEOquery, limma, ggplot2, pheatmap  
**Dataset:** GSE42872 (NCBI GEO Database)

As part of my personal transition into bioinformatics, I initiated an independent learning project using public gene expression data. My goal was to explore the foundational steps of computational genomics — specifically differential gene expression analysis — using R programming.

I worked with a real human dataset from the GEO database (GSE42872) and applied biostatistical methods to identify genes with significant expression differences between control and disease samples. I used the `limma` package to model the data, followed by visualizations like volcano plots and heatmaps to summarize the biological variation.

This project allowed me to:
- Practice hands-on skills in data processing, analysis, and visualization
- Understand the workflow of gene expression analysis
- Build confidence in using R for genomic research
- Reinforce my growing interest in computational life sciences

---

## Project Workflow

1. **Load gene expression data** from the GEO database using `GEOquery`.
2. **Normalize and preprocess** the data.
3. **Apply linear modeling** using `limma` to identify differentially expressed genes.
4. **Visualize results** with volcano plots and heatmaps.
5. **Export results** to a CSV file for further interpretation.

## How to Run

- Open the `scripts/gene_expression_analysis.R` file in RStudio.
- Make sure all required packages are installed.
- Replace the GEO ID with any dataset of interest (e.g., "GSE42872").
- Run the script step-by-step to generate results and plots.

## Output

- `results/DEG_results.csv`: List of all analyzed genes with statistical values
- `plots/`: Volcano plot and heatmap showing gene expression patterns

## Author

Walelgn Haile  
hailewalelgn5@gmail.com  
LinkedIn: [https://www.linkedin.com/in/walelgn-haile-904966302](https://www.linkedin.com/in/walelgn-haile-904966302)

---
