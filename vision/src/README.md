# NLP_Merge_Series

This repository is the implementation of PLM merging methods and LLM merging methods.

## Get Started
The code for merging ViT models and LLM models.

Merge models finetuned on different tasks and evaluate the merged model.


### Dependencies
Please follow [task_vectors](https://github.com/mlfoundations/task_vectors) to install the dependencies.


### Checkpoints and Datasets
You can download the fine-tuned checkpoints from the [task_vectors#checkpoints](https://github.com/mlfoundations/task_vectors#checkpoints).
The Google Drive folder is: [task_vectors_checkpoints](https://drive.google.com/drive/folders/1u_Tva6x0p6oxu5Eo0ZZsf-520Cc_3MKw)
Refer to dataset processing in the [task_vectors](https://github.com/mlfoundations/task_vectors) and [AdaMerging](https://github.com/EnnengYang/AdaMerging).


## Eval
#### Run Task Arithmetic [paper](https://arxiv.org/abs/2212.04089)
```
python main_task_arithmetic.py
```

#### Run TIES-MERGING [paper](https://arxiv.org/abs/2306.01708)
```
python main_ties_merging.py
```

#### Run AdaMerging [paper](https://arxiv.org/abs/2310.02575) Check [here](https://github.com/EnnengYang/AdaMerging) if you want to load the trained merge coefficients for AdaMerging.
```
Task-wise
python main_task_wise_adamerging.py
python main_task_wise_adamergingpp.py
```

```
Layer-wise
python main_layer_wise_adamerging.py
python main_layer_wise_adamergingpp.py
```

#### Run EMR-Merging [paper](https://arxiv.org/pdf/2405.17461)
```
python main_layer_wise_adamergingpp.py
```