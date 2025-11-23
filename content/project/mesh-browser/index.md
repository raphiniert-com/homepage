---
title: "MeSH-Browser"
summary: "A lightweight, API-driven MeSH explorer using PostgREST and React-Admin, offering a simple English and German interface for hierarchical navigation."
tags:
  - Search and IR
  - Medical NLP
  - Ontologies
  - MeSH
  - Medical Informatics
  - React Admin
  - PostgREST
  - UX
  - Data Discovery
  - Elasticsearch
  - ZomboDB
  - Full-Text Search
date: "2021-01-01"

image:
  caption: "MeSH-Browser – a lightweight interface for exploring the MeSH terminology"
  focal_point: "center"
---

## Exploring MeSH Through Modern Search: PostgREST, React-Admin, and Elasticsearch

The MeSH-Browser originated from a very practical problem: German-speaking editorial teams had no usable interface to explore or apply MeSH terms. The initial motivation came from Cochrane Germany, who needed a tool to support the “Wissen Was Wirkt” blog in assigning German-language tags and categories based on the MeSH vocabulary. At the time, no low-threshold, German-friendly MeSH interface existed. DIMDI provided a German MeSH dataset, but it was difficult to use for anyone without technical expertise, and existing tools were either outdated, incomplete, or too complex for non-technical users. This gap led to the development of the MeSH-Browser.

The project was strongly shaped by my earlier experience with API-driven designs from ESID. We built a clean PostgREST API layer on top of a PostgreSQL database and implemented the frontend using React-Admin. To support fast and flexible search, the system integrated PostgreSQL full-text capabilities through ZomboDB and Elasticsearch, enabling instant query responses across the hierarchical MeSH vocabulary. This technical foundation proved exceptionally effective: fast to build, easy to extend, and well suited for structured biomedical terminologies. In fact, the MeSH-Browser was the starting point for the dedicated PostgREST DataProvider project, which grew out of the architectural choices made here.

Two highly capable Life-Science informatics students joined the development, helping deliver the browser as part of a focused project module. One of them subsequently completed his bachelor thesis on the system, comparing our browser to the official NLM version. In this small user study, our tool performed better in terms of accessibility and ease of use. This confirmed that the technical choices, PostgREST for the API, React-Admin for the UI, and ZomboDB/Elasticsearch for fast search, enabled a development process that was manageable even for junior developers, while still producing a tool that worked intuitively for non-technical end users.

The usability study, published as part of a peer-reviewed contribution, reinforced these findings and even with minimal hardware resources, the browser remained highly performant: the live system still runs smoothly on a VM with only 1 vCPU and 2 GB RAM, demonstrating the efficiency of the underlying architecture.

The MeSH-Browser ultimately filled a real and long-standing gap by offering Germany’s biomedical and health communication community a simple, robust, search-driven, and accessible way to explore MeSH terms — something that had never existed in this form before.

---

## Links & Resources

- **MeSH-Browser (Live System):**  
  https://mesh-browser.de

- **Technical Publication (2021):**  
  https://ebooks.iospress.nl/doi/10.3233/SHTI210939

- **Usability Study (2022):**  
  https://ebooks.iospress.nl/doi/10.3233/SHTI220653