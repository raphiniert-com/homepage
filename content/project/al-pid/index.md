---
title: "AL-PID Registry"
summary: "A clinically driven registry project built on top of a legacy Access database, redesigned with a custom UI, modular plausibility logic, and an export pipeline that enabled a publication in The Lancet Haematology."
tags:
  - Clinical Registries
  - Medical Informatics
  - Access/VBA
  - Data Quality
  - Plausibility Checks
  - MDAT/IDAT Separation
  - Python
date: "2016-01-01"

image:
  caption: "AL-PID Registry – transforming a legacy Access database into a functional clinical research tool"
  focal_point: "center"
---



## AL-PID – From a Legacy Access Structure to a Functional Clinical Registry

AL-PID was the very first project I worked on when I joined the CCI in 2015. What existed initially was a raw Microsoft Access database intended to serve as a registry for patients with ALPS and related primary immunodeficiencies. What was missing was everything required for actual clinical use: a user interface, a coherent data model, plausibility logic, and an export workflow suitable for downstream scientific analysis.

The goal was therefore clear: transform a static legacy database into a usable, validated clinical registry.

I developed a complete user interface in Microsoft Access and Visual Basic, inspired by ESID but built independently. Central to the system was a tree-structured plausibility logic implemented through event-driven hooks such as OnClick and OnChange. This logic ensured consistent, clinically meaningful data entry and protected the dataset from contradictory or incomplete inputs.

A distinctive aspect of AL-PID was its dynamic, visually guided plausibility system. The UI did not simply validate data in the background, but actively controlled the user’s workflow by showing or hiding interface elements based on clinical context. Only when certain variables were selected did additional fields, sections, or action buttons appear. This approach allowed clinicians to focus on the exact data relevant to the case at hand, reduced cognitive load, and prevented invalid combinations from ever being entered. It was a lightweight but highly effective form of context-aware data entry entirely implemented within Access and VBA.

Over time, AL-PID evolved not only at the UI level but also structurally. The original data model had grown organically and lacked clear boundaries between clinical entities. I refactored and abstracted the schema: redundant fields were consolidated, variable groups reorganized, and a clean separation between MDAT and IDAT was introduced to satisfy data protection requirements. The result was a modular and extensible data model that improved maintainability, validation, and long-term data quality. This evolving structure became the backbone that enabled stable exports for subsequent statistical workflows.

During my later guest scientist period at the CCI, clinicians required a publication-ready export. We designed an Excel-based format that medical staff could populate without technical hurdles. I then implemented a Python-based exporter that converted the sheets into a standardized dataset suitable for further analysis. This workflow ultimately enabled a successful publication in The Lancet Haematology, marking both the scientific impact of the project and the maturity of the registry system.

Looking back, AL-PID was a defining early project for me: a demanding but formative introduction to clinical registries, data modeling, and the practical realities of medical informatics. Many of the principles developed here later influenced my subsequent registry and data pipeline work, including ESID and OSSE-based systems.

---

## Links & Resources

- **Project Overview (CCI Freiburg):**  
  https://www.uniklinik-freiburg.de/cci/studien/alpsal-pid.html

- 🤗 **Publication (The Lancet Haematology):**  
  https://www.thelancet.com/journals/lanhae/article/PIIS2352-3026(23)00362-9
