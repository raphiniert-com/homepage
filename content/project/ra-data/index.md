---
title: "React Admin Data Providers"
summary: "A set of reusable React Admin data providers for PostgREST and FHIR, developed to streamline UI development for clinical and research applications."
tags:
  - Featured
  - Medical Informatics
  - Other
  - React Admin
  - PostgREST
  - FHIR
  - Clinical APIs
  - Web Development
  - Postgres
  - Keycloak
  - Open Source
date: "2022-01-01"

image:
  caption: "React Admin data providers for PostgREST and FHIR"
  focal_point: "center"
---
## React Admin Data Providers for Clinical APIs – PostgREST and FHIR

The development of my React Admin data providers began with the MeSH Browser project. At that time, I needed a flexible way to connect a React Admin frontend to a PostgREST backend without manually wiring every query, filter and pagination step. Early community work provided some inspiration, but no complete implementation existed. This led to the first version of the PostgREST data provider, which gradually grew into a fully featured library which is widely used (>2k downloads/week).

Over time, the project evolved far beyond its original prototype. We added a dedicated test framework, introduced structured configuration, and turned it into a generic ecosystem that makes it easy to build React Admin frontends on top of Postgres. A demo setup was created to showcase multiple PostgreSQL FDWs together with PostgREST, illustrating how flexible the architecture can be when connecting diverse data sources. For authentication and authorization, the system integrates cleanly with Keycloak.

The second data provider emerged in a similar way. As part of a student project, we built a FHIR REST data provider for React Admin. Its goal was to simplify building clinical user interfaces directly on top of FHIR servers. The data provider implements FHIR search, pagination, resource handling and bundle interpretation, and was tested against the LinuxForHealth (formerly IBM) FHIR Server. Together with a small demo application, this demonstrated how React Admin can be used as a lightweight tool for building FHIR based administrative interfaces. The project resulted in a peer reviewed conference publication at ICIMTH.

Together, these two libraries form a small but valuable toolkit that connects modern React based user interfaces with established clinical APIs. Whether through PostgREST or FHIR, both data providers lower the barrier for creating custom user interfaces in clinical or research environments by offering reliable, clean and reusable integrations that work out of the box.

---

## Links & Resources

### PostgREST Data Provider

- **Journal Publication (Software Impacts, 2024):**  
  https://www.sciencedirect.com/science/article/pii/S2665963824000873

- **NPM Package:**  
  https://www.npmjs.com/package/@raphiniert/ra-data-postgrest

- **GitHub Repository:**  
  https://github.com/raphiniert-com/ra-data-postgrest

- **Demo Repository:**  
  https://github.com/raphiniert-com/ra-data-postgrest-demo

---

### FHIR Data Provider

- **Conference Publication (ICIMTH 2023):**  
  https://doi.org/10.3233/SHTI230436

- **GitLab Repository:**  
  https://gitlab.com/mri-tum/aiim/libs/ra-data-fhir

- **NPM Package:**  
  https://www.npmjs.com/package/@tum-mri-aiim/ra-data-fhir
