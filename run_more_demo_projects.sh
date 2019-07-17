#!/bin/sh
cd && cd mlflow-heroku-dev && git clone https://github.com/mlflow/mlflow.git && cd mlflow 
# run project 1 
for alpha in 0.2 0.3 0.4 
do  
	echo 'alpha = ' $alpha && mlflow run examples/sklearn_elasticnet_wine -P alpha=$alpha; 
done 

# run project 2 
mlflow run examples/sklearn_logistic_regression 