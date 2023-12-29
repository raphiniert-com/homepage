---
title: 'Integrating row level security in i2b2: segregation of medical records into
  data marts without data replication and synchronization'
authors:
- Raphael Scheible
- Fabian Thomczyk
- Marco Blum
- Micha Rautenberg
- Andrea Prunotto
- Suhail Yazijy
- Martin Boeker
date: '2023-08-01'
publishDate: '2023-12-29T21:27:16.980034Z'
publication_types:
- 2
publication: '*JAMIA Open*'
doi: 10.1093/jamiaopen/ooad068
abstract: i2b2 offers the possibility to store biomedical data of different projects
  in subject oriented data marts of the data warehouse, which potentially requires
  data replication between different projects and also data synchronization in case
  of data changes. We present an approach that can save this effort and assess its
  query performance in a case study that reflects real-world scenarios.For data segregation,
  we used PostgreSQL’s row level security (RLS) feature, the unit test framework pgTAP
  for validation and testing as well as the i2b2 application. No change of the i2b2
  code was required. Instead, to leverage orchestration and deployment, we additionally
  implemented a command line interface (CLI). We evaluated performance using 3 different
  queries generated by i2b2, which we performed on an enlarged Harvard demo dataset.We
  introduce the open source Python CLI i2b2rls, which orchestrates and manages security
  roles to implement data marts so that they do not need to be replicated and synchronized
  as different i2b2 projects. Our evaluation showed that our approach is on average
  3.55 and on median 2.71 times slower compared to classic i2b2 data marts, but has
  more flexibility and easier setup.The RLS-based approach is particularly useful
  in a scenario with many projects, where data is constantly updated, user and group
  requirements change frequently or complex user authorization requirements have to
  be defined. The approach applies to both the i2b2 interface and direct database
  access.Today, data warehouses form the foundation of modern data science in all
  areas where insights are gained from data. In the medical and healthcare sector,
  these warehouses require data access rules. i2b2 is a prominent and widespread data
  warehouse software providing project specific data segregation and thus access management.
  However, i2b2’s current approach often involves data replication and synchronization,
  leading to significant effort. Based on the main components shipped within i2b2
  and their features, we present a command line tool which orchestrates a new data
  segregation approach without the requirement of data replication which we released
  under MIT open source license. Additionally, we evaluated our approach’s performance
  using 3 different queries on a real-world warehouse scenario based on a pre-existent
  enlarged demo dataset of i2b2. Our evaluation showed that our approach is on average
  3.55 and on median 2.71 times slower compared to classic i2b2 approach but has more
  flexibility and easier setup. Our approach is particularly useful in a scenario
  with many projects, where data is constantly updated, user and group requirements
  change frequently or complex user authorization requirements have to be defined.
  The approach applies to both the i2b2 interface and direct database access.
featured: true
links:
- name: URL
  url: https://doi.org/10.1093/jamiaopen/ooad068
---