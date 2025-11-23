---
title: "MIRACUM-Pipe"
summary: "Refactoring and dockerization of the MIRACUM NGS analysis pipeline, enabling standardized, reproducible workflows for precision oncology and Molecular Tumor Boards."
tags:
  - 
  - Bioinformatics
  - NGS
  - Docker
  - Bash
  - Workflow Engineering
  - Precision Oncology
  - Molecular Tumor Boards
  - Data Pipelines
  - Reproducibility
  - Medical Informatics
date: "2020-01-01"

image:
  caption: "MIRACUM-Pipe – a standardized, reproducible pipeline for NGS-based precision oncology"
  focal_point: "center"
---

## MIRACUM-Pipe – Standardizing NGS Analysis for Precision Oncology

MIRACUM-Pipe was one of my main technical contributions during 2019 and 2020, in the context of the MIRACUM consortium and its precision oncology workflows. The pipeline itself had already been established, but required significant modernization, restructuring, and containerization to become robust, reproducible, and easy to deploy across the various MIRACUM sites.

My first contribution was a deep refactoring of the existing workflow, which at the time consisted of a set of Bash scripts that had grown organically. I restructured the codebase, cleaned up the scripting logic, modularized core components, and ensured a more maintainable and transparent execution flow. This laid the foundation for the next step: a fully dockerized version of the pipeline that could be executed in a standardized, reproducible way independent of local environments.

To achieve this, a second project was created to expose the pipeline via Docker, making installation and usage significantly easier for newly onboarding MIRACUM centers and enabling reproducible runs across different infrastructures. The dockerized version soon became the recommended deployment approach. The entire code was published publicly under the AGPLv3 license.

An early attempt was made to publish the pipeline as an Application Note in Bioinformatics, but this submission was not accepted. Later, after several subsequent extensions and improvements, completed when I was no longer actively involved, the pipeline was successfully published in MDPI Cancers. The publication reflects the combined efforts of the team and documents MIRACUM-Pipe as a comprehensive NGS analysis solution.

MIRACUM-Pipe supports the complete analysis workflow needed in precision oncology and Molecular Tumor Boards (MTBs). It provides a one-prompt solution covering quality control, variant calling, copy number estimation, functional annotation, visualization, and automated report generation. By standardizing these steps, the pipeline supports MTB case preparation and presentation by generating consistent, high-quality sequencing summaries for clinicians and researchers.

The associated repositories remain available on GitHub, including both the primary codebase and the dockerized variant, and continue to be used within and beyond the MIRACUM consortium.

---

## Links & Resources

- **Publication (Cancers, 2023):**  
  https://www.mdpi.com/2072-6694/15/13/3456

- **GitHub Repository:**  
  https://github.com/AG-Boerries/MIRACUM-Pipe

- **Dockerized Version:**  
  https://github.com/AG-Boerries/MIRACUM-Pipe-docker