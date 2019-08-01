#!/bin/sh
###############################################################################
# RUN SINGLE MLFLOW DEMO JOB VIA MLFLOW REPO (https://github.com/mlflow/mlflow)
###############################################################################

(mlflow run https://github.com/mlflow/mlflow-example.git -P alpha=0.4) || (git clone https://github.com/mlflow/mlflow.git && cd mlflow && mlflow run examples/sklearn_elasticnet_wine -P alpha=0.4)