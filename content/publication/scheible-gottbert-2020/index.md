---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: 'GottBERT: a pure German Language Model'
subtitle: ''
summary: ''
authors:
- Raphael Scheible
- Fabian Thomczyk
- Patric Tippmann
- Victor Jaravine
- Martin Boeker
tags:
- '"Computer Science - Computation and Language"'
- '"Computer Science - Machine Learning"'
categories: []
date: '2020-12-03'
lastmod: 2020-12-08T16:21:50+01:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
publishDate: '2020-12-08T15:21:50.417472Z'
publication_types:
- '2'
abstract: Lately, pre-trained language models advanced the field of natural language
  processing (NLP). The introduction of Bidirectional Encoders for Transformers (BERT)
  and its optimized version RoBERTa have had significant impact and increased the
  relevance of pre-trained models. First, research in this field mainly started on
  English data followed by models trained with multilingual text corpora. However,
  current research shows that multilingual models are inferior to monolingual models.
  Currently, no German single language RoBERTa model is yet published, which we introduce
  in this work (GottBERT). The German portion of the OSCAR data set was used as text
  corpus. In an evaluation we compare its performance on the two Named Entity Recognition
  (NER) tasks Conll 2003 and GermEval 2014 as well as on the text classification tasks
  GermEval 2018 (fine and coarse) and GNAD with existing German single language BERT
  models and two multilingual ones. GottBERT was pre-trained related to the original
  RoBERTa model using fairseq. All downstream tasks were trained using hyperparameter
  presets taken from the benchmark of German BERT. The experiments were setup utilizing
  FARM. Performance was measured by the $F_1$ score. GottBERT was successfully pre-trained
  on a 256 core TPU pod using the RoBERTa BASE architecture. Even without extensive
  hyper-parameter optimization, in all NER and one text classification task, GottBERT
  already outperformed all other tested German and multilingual models. In order to
  support the German NLP field, we publish GottBERT under the AGPLv3 license.
publication: ''
url_pdf: http://arxiv.org/abs/2012.02110
---
