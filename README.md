# ludwig-getting-started
Declarative ML examples with Ludwig


## Example of Getting Started

1. `wget https://ludwig-ai.github.io/ludwig-docs/0.5/data/rotten_tomatoes.csv`
2.  Create yaml file (to train) `rotten_tomatoes.csv`
3.  Train: `ludwig train --config rotten_tomatoes.yaml --dataset rotten_tomatoes.csv`