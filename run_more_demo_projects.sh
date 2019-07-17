#!/bin/sh
cd && git clone https://github.com/mlflow/mlflow.git && cd mlflow 
mlflow run examples/sklearn_elasticnet_wine -P alpha=0.4
mlflow run examples/sklearn_logistic_regression 