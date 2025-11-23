---
title: "SindBERT"
summary: "The first large Turkish RoBERTa-style model, developed after PortBERT with extensive evaluations on private GPUs and the LRZ BayernKI H100 cluster. The study highlights the importance of corpus variance over sheer size."
tags:
  - NLP
  - Language Models
  - Turkish
  - Deep Learning
  - Pretraining
  - Corpus Design
  - Open Source
  - Efficiency
date: "2025-10-24"

image:
  caption: "SindBERT, the first large Turkish RoBERTa-style model"
  focal_point: "center"
---

## SindBert – The Turkish Model That Started a New Chapter

SindBert started as an exploratory attempt to bring high-quality RoBERTa-style language modeling to Turkish. The idea originally emerged during the broader multilingual phase that followed GottBERT, GeistBERT, ChristBERT, HalleluBERT and PortBERT. After finishing PortBERT, the timing finally felt right to extend this line of research to another underrepresented language.

With the pipeline already stable from previous projects, we created the first large-scale RoBERTa-style Turkish model. This makes SindBert a significant technical milestone within the landscape of Turkish transformer models, and an important step toward raising Turkish NLP to the architectural standards used in higher-resource languages.

The study behind SindBert was conducted with considerable care. We systematically reviewed existing Turkish models and evaluated them across an extensive set of downstream benchmarks. The evaluation was carried out in two stages: first on a private workstation with two RTX 3090 GPUs in SLI, and later on the LRZ BayernKI H100 cluster, which enabled the training and assessment of the large SindBert variants.

A key insight from the study was that the performance of Turkish models is not driven simply by corpus size. Extremely large corpora did not consistently translate into stronger results. Instead, the best performance came from models trained on corpora with moderate size but high internal variance and quality. This finding reinforces the idea that thoughtful corpus design often matters more than sheer quantity for languages with complex morphology.

Although SindBERT does not yet have a formal publication attached to it, the project marks the beginning of a new chapter in my international research. It follows directly after PortBERT and represents the point where the broader model family began to expand into new linguistic territory. The work was completed in Freiburg at my new research institution, where the evaluations and analyses were finalized. SindBERT may evolve further or be revisited in a second iteration, but even in its current form it stands as the first large Turkish RoBERTa-style model and an important step toward stronger transformer development for the Turkish language. A preprint of the work is available, and the paper has been submitted to SIGTURK@EACL 2026.

---

## Links & Resources

- **Preprint (2025):**  
  https://arxiv.org/abs/2510.21364

- 🤗 **HuggingFace Model Hub:**  
  https://huggingface.co/SindBERT
