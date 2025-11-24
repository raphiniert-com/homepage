---
title: "GottBERT"
summary: "The first published German RoBERTa-based model family with a clear development path: from its 2020 preprint to the extended EMNLP 2024 version."
tags:
  - Featured
  - NLP
  - Language Models
  - German
  - Deep Learning
  - Open Source
  - Model Pretraining
date: "2020-12-03"

# external_link: "https://huggingface.co/GottBERT"

image:
  caption: "GottBERT – German RoBERTa model"
  focal_point: "center"
---

## A Journey Marked by Endurance, Transition, and Discovery
GottBERT started from a simple observation: while BERT-like models were rapidly advancing NLP research and RoBERTa had become a widely adopted standard, there was no single-language RoBERTa model for German. Multilingual models were everywhere, but consistently fell short of high-quality monolingual models in a given language.

This gap was the starting point for GottBERT.

The first version emerged before my move to Munich, a project driven by scientific curiosity that quickly gained momentum. Trained on a 256-core TPUv3 Pod using the German portion of the OSCAR corpus, the initial GottBERT model followed the original RoBERTa pre-training recipe implemented in fairseq. Even without elaborate hyperparameter tuning, it delivered strong results: across multiple NER and text-classification benchmarks, GottBERT outperformed many tested German and multilingual comparison models.

With the relocation to Munich, the second phase of the project began. GottBERT was further refined, more deeply evaluated, and extended with a Large variant. During this phase, we also examined the impact of filtering the OSCAR corpus, a reasonable hypothesis that turned out differently than expected. Despite corpus filtering, performance remained largely unchanged.

In the updated EMNLP version, the focus shifted from reporting the initial results to providing a more grounded scientific framing, including a clearer comparison with existing German and multilingual BERT models, an extended evaluation across downstream tasks, and an investigation of how filtering the OSCAR corpus affects pre-training quality.

Today, GottBERT stands as the first German RoBERTa model, freely available to the research community, originally under AGPLv3, later relicensed under MIT. It remains one of the projects that shaped my research journey: the combination of a clear gap, technical ambition, a geographical transition, academic maturation, and a final result that meaningfully supports the German NLP community.

---

## Links & Resources

- **Preprint (2020):**  
  https://arxiv.org/abs/2012.02110v1  

- **EMNLP 2024 Paper:**  
  https://aclanthology.org/2024.emnlp-main.1183/  

- **Poster & Presentation (Underline):**  
  https://underline.io/events/469/posters/18793/poster/108142-gottbert-a-pure-german-language-model?tab=abstract  

- 🤗 **HuggingFace Model Hub:**  
  https://huggingface.co/TUM  
