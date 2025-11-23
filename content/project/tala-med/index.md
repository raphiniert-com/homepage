---
title: "tala-med Search Engine"
summary: "A modern medical search engine developed from scratch with a fully open, extensible IR architecture."
tags:
  - Featured
  - Search and IR
  - Medical Informatics
  - Featured
  - Medical NLP
  - Information Retrieval
  - Medical Search
  - NLP
  - FastText
  - Apache Nutch
  - SubZero
  - PostgreSQL
  - React
  - Search Engines
date: "2020-01-01"

image:
  caption: "tala-med – a modern medical search engine rebuilt from prototype to production-ready IR architecture"
  focal_point: "center"
---

## tala-med search – Engineering a Medical Search Engine from Prototype to Modern IR Platform

The tala-med search engine began in 2019 as a GAP funded project. I joined initially as technical support, but after a colleague left the team I took over the development lead and guided the system through several difficult phases into a working prototype that could be evaluated scientifically. The early version of tala-med used a React interface based on design drafts created by a graphic designer in the group. On the backend, we used AppSearch together with the Fess crawler. This setup was sufficient for the first prototype and for the first evaluation, but it became clear that the closed ecosystem limited our flexibility, especially regarding custom NLP components and extensible retrieval pipelines.

With this in mind we designed a new technology platform that offered full control over indexing, querying, scoring and synonym handling. The architecture was inspired by the experience gained with the MeSH-Browser and built on top of the subZero stack. As a student project we developed a synonym expansion component using a FastText based approach, and even managed to outperform the previous solution in speed. This work resulted in a journal publication documenting the new retrieval platform and its technical design.

A second major building block was the crawler. The original Fess setup lacked the flexibility and transparency needed for large scale, domain controlled crawling. We migrated to a custom adapted version of Apache Nutch, which became the basis of a student project that later resulted in a peer reviewed MIE 2025 publication. Together, the new retrieval platform and the improved crawler formed a modern, maintainable and fully open architecture for tala-med.

Both contributions were completed during the earlier development phase. I have since continued to work on tala-med, and we are currently preparing the deployment of the new platform to updated servers. The goal is to replace the old prototype implementation in late 2025 or early 2026 with the fully redesigned architecture.

tala-med is now a fully re-engineered medical search engine with an open, extensible infrastructure, modern crawling, synonym expansion, and a retrieval pipeline that can be adapted to new NLP methods as needed. What started as a constrained prototype has now matured into a flexible research and production environment backed by multiple publications and several years of iterative development.

---

## Links & Resources

- **Live Search Instance:**  
  https://suche.tala-med.info

- **Source Code (Search Platform Repository):**  
  https://gitlab.com/tala-med/search-platform

- **Prototype and Human Factors Evaluation (JMIR Human Factors, 2025):**  
  https://humanfactors.jmir.org/2025/1/e56941/

- **Technical Improvement and Synonym Expansion (Health Informatics Journal, 2025):**  
  https://journals.sagepub.com/doi/full/10.1177/14604582251381271

- **Custom Apache Nutch Crawler (MIE 2025):**  
  https://ebooks.iospress.nl/doi/10.3233/SHTI250423
