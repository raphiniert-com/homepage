---
title: "ChristBERT"
summary: "A domain-adaptive German medical RoBERTa model, exploring continued pre-training and from-scratch training with specialized vocabularies."
tags:
  - Featured
  - NLP
  - Language Models
  - German
  - Medical NLP
  - Deep Learning
  - Continued Pretraining
  - Domain Adaptation
  - Open Source
  - Neural Machine Translation
  - Corpus Creation
date: "2025-09-18"

image:
  caption: "ChristBERT – German clinical RoBERTa with domain-specific pre-training"
  focal_point: "center"
---


## Building a Medical German Language Model Against the Odds

ChristBERT was developed as part of my Master’s thesis and focuses on domain-specific German clinical language modeling. The project investigated two complementary strategies: continued pre-training on top of GottBERT/GeistBERT, and training from scratch using both a general-purpose RoBERTa tokenizer and a specialized medical vocabulary. This enabled a systematic comparison between general, domain-adapted, and fully specialized pre-training pipelines for German medical NLP.

During the early conceptual phase, the supervision structure of the thesis changed, and the project was reassigned to a new advisor, who later became the supervisor of my doctoral work. ChristBERT was trained using a combination of compute resources: through an existing project partnership, parts of the full pre-training were executed on the Augsburg compute cluster, while downstream evaluations, and parts of the translation workflows ran on privately built GPU hardware in my basement.

ChristBERT showed that continued pre-training on German clinical text offers measurable improvements over general-purpose RoBERTa models, while training from scratch with a medical-specific tokenizer provides additional insights into domain vocabulary specialization and its trade-offs.

The work has been released as a preprint and is currently under review at BMC Medical Informatics and Decision Making.

---

## Links & Resources

- **Preprint (2025):**  
  https://www.researchsquare.com/article/rs-7332811/v1

- 🤗 **HuggingFace Model Hub:**  
  https://huggingface.co/ChristBERT
