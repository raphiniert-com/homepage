---
title: "PortBERT"
summary: "A Portuguese RoBERTa model evaluated during a research stay on the Azores, highlighting efficiency-focused perspective models."
tags:
  - NLP
  - Language Models
  - Portuguese
  - Deep Learning
  - Efficiency
  - Model Pretraining
  - Open Source
date: "2025-09-12"

image:
  caption: "PortBERT – a Portuguese RoBERTa model emphasizing efficient training"
  focal_point: "center"
---


## PortBERT – Exploring Efficiency Under Pressure and in Deep Waters

PortBERT has its roots in an early collaboration idea from 2021/22, when a Brazilian research group approached me with the vision of building a Portuguese RoBERTa-style model. I shared my pre-training pipeline with them, but at the time, the fairseq RoBERTa branch had a broken implementation and my preprocessing workflow contained an unnoticed bug. As a result, the collaboration could not produce a functional model, and the project quietly came to a halt.

Years later, during a research stay on the Azores, I revisited the idea independently. The full Portuguese pre-training had actually been carried out earlier, during the GottBERT development phase, when we debugged and stabilized the pipeline. With the system running reliably at that time, I launched a complete Portuguese pre-training run on a TPUv4-128 pod and on a GPU server, resulting in the PortBERT base and large models.

The period on the Azores added a unique dimension to the project.
It was a time of intense pressure: I was waiting for the contract from my upcoming research position in Freiburg, while simultaneously completing my divemaster internship and training. Much of the evaluation work was carried out between deep dives, decompression lessons, and long days of practical training. This phase taught me, quite literally, to breathe under pressure. In hindsight, PortBERT became the model that was built and evaluated in the rhythm of the ocean: long, calm stretches of computation framed by physical depth and mental discipline.

The evaluation revealed an important insight:
efficiency is an essential dimension of model design.
PortBERT achieved competitive results despite being smaller and more cost-efficient than many recent Portuguese encoder LLMs. The study also highlighted that the Portuguese corpus could benefit from greater internal variance, and that techniques like Whole Word Masking might offer additional improvements, though WWM was not available within the TPU workflow used here.

With this, PortBERT introduced a new perspective into the Portuguese NLP landscape:
that efficiency, compute cost, corpus composition, and training dynamics should receive as much attention as raw performance. The goal of the project was not only to build another model, but to encourage the community to look beyond leaderboard scores when developing modern transformer architectures and models.

PortBERT was presented at [GlobalNLP2025@RANLP 2025](https://globalnlp2025.github.io) in Varna, Bulgaria, and we are currently awaiting its release on the ACL Anthology. The model itself is publicly available on HuggingFace.
---

## Links & Resources

- 🤗 **HuggingFace Model Hub:**  
  https://huggingface.co/PortBERT
