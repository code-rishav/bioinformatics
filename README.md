# Identification of hub genes in thyroid cancer

---

## Table of Contents

1. [Introduction](#introduction)
2. [Related Works](#related-works)
3. [Research Methods & Procedures](#research-methods--procedures)

---

## Introduction

This project aims to develop a bioinformatics pipeline for identifying hub genes associated with thyroid cancer. The pipeline involves differential expression analysis, gene ontology, KEGG pathway analysis, protein-protein interaction (PPI) network construction, and hub gene extraction using various bioinformatics tools and Python libraries.

## Related Works

The project builds on existing research in thyroid cancer, focusing on advancements in early detection, genetic profiling, therapeutic innovations, machine learning applications, prognostic insights, and radiomics.

## Research Methods & Procedures

### Purpose
To establish a systematic pipeline for identifying hub genes in thyroid cancer.

### Research Design
The research follows a structured design involving data collection from GEO2R, differential expression analysis, gene ontology and pathway analysis, PPI network construction, hub gene extraction, and survival analysis.

### Data Collection
Data was sourced from publicly available datasets using GEO2R from the NCBI website.

### Tools and Software
- **GEO2R**: For data extraction and identification of Differentially Expressed Genes (DEGs).
- **Venny2.0**: For intersecting genes.
- **DAVID**: For gene ontology and KEGG pathway analysis.
- **STRING**: For constructing PPI networks.
- **Cytoscape**: For extracting hub genes using the CytoHubba plugin.
- **Python**: For data preprocessing and analysis.

### Procedure
1. Data collection and DEG identification.
2. Intersection of DEGs using Venny2.0.
3. Gene ontology and KEGG pathway analysis using DAVID.
4. PPI network construction using STRING.
5. Hub gene extraction using Cytoscape.
6. Survival analysis and validation using KMPlot.

