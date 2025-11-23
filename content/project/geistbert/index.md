---
title: "GeistBERT"
summary: "A continued-pretraining extension of GottBERT, developed during a period of transition and finalized as a preprint before being presented at GlobalNLP@RANLP 2025."
tags:
  - NLP
  - Language Models
  - German
  - Deep Learning
  - Continued Pretraining
  - Model Pretraining
  - Open Source
  - Corpus Design
date: "2025-06-13"

image:
  caption: "GeistBERT – continued pre-training on top of GottBERT"
  focal_point: "center"


# links:
# - icon: huggingface
#   icon_pack: fab
#   name: 🤗 HuggingFace
#   url: https://twitter.com/georgecushen
---


## A Story of Resilience, Constraint, and Scientific Maturity

GeistBERT was created during one of the most turbulent and defining phases of my doctoral work. AFollowing a supervisor transition at TUM, access to the compute environment I previously used was no longer available, so I migrated the entire evaluation workflow to my own workstation. What could have halted the project entirely instead became a turning point.

With no cluster access, I migrated the full evaluation pipeline into my basement and ran it on a self-built workstation with two RTX 3090 GPUs in SLI. Every downstream task was completed entirely on private hardware. Constraints turned into autonomy, and the work slowly took shape.

At that time, the plan was more ambitious:
we intended to train Longformer- and Nyströmformer-based variants of GottBERT to compare sparse-attention architectures in continued pre-training on a GPU setup. However, an unnoticed mistake in the pre-training made these large-scale models useless. Instead of releasing partially flawed or inconclusive models, we made the conscious decision to retract the extended architectures and focus the paper on a clean, well-defined contribution.

The final version of GeistBERT therefore centered on what was both scientifically solid and practically valuable:
a robust RoBERTa-base model with continued pre-training, using Whole Word Masking and a large, diverse corpus, carefully evaluated across standard German NLP benchmarks.
Despite being a base model, GeistBERT achieved state-of-the-art performance in multiple tasks and approached, and in some benchmarks even surpassed, the performance of existing large models.

During this phase, GeistBERT also revealed an interesting methodological insight:
unlike earlier TPU-based experiments, the GPU training workflow allowed for a substantially higher peak learning rate without instability. This raised new research questions about whether the stability originated from implementation differences in the GPU stack, or whether it was a characteristic of continued pre-training itself. These observations gave the project an additional scientific dimension beyond the model alone.

The manuscript was completed far from Germany, during a research stay on the Azores, and released as a pre-print. Later, GeistBERT found its academic platform at [GlobalNLP2025@RANLP 2025](https://globalnlp2025.github.io) in Varna, Bulgaria.

---

## Links & Resources

- **Preprint (2025):**
  https://arxiv.org/abs/2506.11903

- 🤗 **HuggingFace Model Hub:**  
  https://huggingface.co/GeistBERT
