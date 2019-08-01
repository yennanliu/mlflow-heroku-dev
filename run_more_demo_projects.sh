#!/bin/sh

###############################################################################
# RUN MULTIPLE MLFLOW DEMO JOB VIA MLFLOW REPO (https://github.com/mlflow/mlflow)
###############################################################################
git clone https://github.com/mlflow/mlflow.git 

# run project 1 
for alpha in 0.3 0.4
do  
    echo 'alpha = ' $alpha && mlflow run mlflow/examples/sklearn_elasticnet_wine -P alpha=$alpha; 
done 
# run project 2 
mlflow run mlflow/examples/sklearn_logistic_regression 