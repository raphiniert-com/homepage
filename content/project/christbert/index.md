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
  - Model Pretraining
  - Domain Adaptation
  - Open Source
  - Neural Machine Translation
  - Corpus Design
date: "2025-09-18"

image:
  caption: "ChristBERT – German clinical RoBERTa with domain-specific pre-training"
  focal_point: "center"
---


## Building a Medical German Language Model Against the Odds

ChristBERT was developed as part of Henry He’s Master’s thesis, which I supervised, and focuses on domain-specific language modeling for German medical NLP. A central contribution of the project was the construction of a 13.5 GB German medical corpus comprising scientific publications, clinical texts, health-related web content, and translated clinical resources.

Using this corpus, we systematically investigated three strategies for adapting language models to the medical domain: continued pre-training of established German RoBERTa models, training a model from scratch with a general-purpose tokenizer, and training from scratch with a specialized medical vocabulary. This enabled a controlled comparison of general-purpose, domain-adapted, and fully specialized pre-training pipelines.

During the project’s early conceptual phase, the thesis supervision structure changed, and the work was reassigned to a new advisor, who later also became the supervisor of my doctoral research. ChristBERT was trained using a combination of institutional and privately maintained compute resources. Through an existing project partnership, parts of the full pre-training were conducted on the Augsburg compute cluster, while downstream evaluation and parts of the translation workflow ran on GPU hardware that I had built in my basement.

The results demonstrate that no single adaptation strategy is universally optimal. Continued pre-training produced the strongest results on most evaluated tasks, while training from scratch and adapting the vocabulary proved advantageous under particular task and domain conditions. Across five German medical NLP benchmarks, ChristBERT outperformed existing general-purpose and medical language models on four tasks and established new state-of-the-art results on several clinical NLP benchmarks.

The project also has a close personal connection to the Azores. ChristBERT was born during my first trip there in 2024, when the initial idea emerged in a Zoom meeting with Henry. The journey to the islands already coincided with another important milestone: while waiting at Zurich Airport for my flight, I received a WhatsApp message from Johann informing me that GottBERT had been accepted at EMNLP.

In 2025, I returned to the Azores for an internship and joined Henry’s Master’s thesis defense remotely via Zoom. The ChristBERT manuscript was subsequently submitted in August 2025.

During my third stay in the Azores, in August 2026, ChristBERT was published open access in BMC Medical Informatics and Decision Making as "The word and the way: strategies for domain-specific BERT pre-training in German medical NLP." Two years after the project had been conceived there, its journey came full circle. The publication marked the conclusion of a long and demanding process.

---

## Links & Resources

- **Journal article (2026):** https://doi.org/10.1186/s12911-026-03728-2

- **Preprint (2026):** https://arxiv.org/abs/2606.03250

- **Preprint (2025):**  
  https://www.researchsquare.com/article/rs-7332811/v1

- 🤗 **HuggingFace Model Hub:**  
  https://huggingface.co/ChristBERT
