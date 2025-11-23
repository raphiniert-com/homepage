---
title: "i2b2RLS"
summary: "A PostgreSQL Row-Level Security framework for i2b2, including policy generation, automated testing with pgTAP, performance benchmarking, and a Docker-based deployment stack for clinical data warehouses."
tags:
  - i2b2
  - Clinical Data Warehouses
  - Row-Level Security
  - PostgreSQL
  - Security
  - pgTAP
  - Python
  - Docker
  - Data Integration
  - Medical Informatics
date: "2023-01-01"

image:
  caption: "i2b2RLS – fine-grained access control for clinical research data using PostgreSQL RLS"
  focal_point: "center"
---


## i2b2RLS – Fine-Grained Access Control for Clinical Data Warehouses

The idea for i2b2RLS emerged in 2019 when I joined the IMBI team in Freiburg. With my experience from the ESID reporting infrastructure, it became clear that a comparable, policy-driven access-control layer could meaningfully strengthen the security architecture of our local i2b2 installation. The goal was to take the central i2b2 instance at the Freiburg Data Integration Center and deploy it with true row-level access control using PostgreSQL RLS, a level of fine-grained authorization that i2b2 did not support out of the box.

Achieving this required modifications on two layers: adapting parts of the i2b2 stack itself, and developing a consistent workflow to generate, validate, and deploy PostgreSQL RLS policies. To evaluate feasibility, we created a synthetic dataset and measured RLS performance under realistic i2b2 query patterns. In the course of this work we also conducted, to our knowledge, the first systematic performance benchmark evaluating PostgreSQL Row-Level Security in the context of a clinical research data warehouse. Using the synthetic data and representative query structures, we demonstrated that a carefully designed policy architecture can be deployed in production settings with acceptable overhead.

To make the system maintainable and reproducible, we implemented a Python-based deployment tool that automated the generation and installation of RLS policy sets. The tool incorporates pgTAP tests to reduce the risk of deploying faulty or incomplete policies, a critical safeguard for hospital-grade access control. We released the tool as open source on PyPI, making it easy for other institutions to adopt similar security layers.

For easier setup, we also created a Docker-based i2b2 stack that includes all required components for RLS deployment, significantly lowering the barrier for testing or adopting this approach in other environments.

The project ultimately resulted in a JAMIA Open publication, documenting the architecture, performance evaluation, and practical deployment considerations of applying PostgreSQL Row-Level Security to i2b2 in a clinical data warehouse context.

---

## Links & Resources

- **JAMIA Open Publication (2023):**  
  https://academic.oup.com/jamiaopen/article/6/3/ooad068/7242495

- **Python Package on PyPI:**  
  https://pypi.org/project/i2b2rls/

- **Source Code of all related projects (GitLab Group):**  
  https://gitlab.com/mds-imbi-freiburg/i2b2