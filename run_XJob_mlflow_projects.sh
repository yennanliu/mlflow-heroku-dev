#######################################################################
# RUN THE MLFLOW CODE VIA REPO XJOB (https://github.com/yennanliu/XJob)
#######################################################################
git clone https://github.com/yennanliu/XJob.git 

run_projects(){ 
mlflow run XJob/mlflow/sklearn_logistic_regression 
mlflow run XJob/mlflow/sklearn_elasticnet_diabetes/osx/
mlflow run XJob/mlflow/sklearn_elasticnet_wine 
}

run_projects_with_parameters(){ 
for alpha in 0.3 0.4
do 
	echo 'alpha = ' $alpha && mlflow run XJob/mlflow/sklearn_logistic_regression  -P alpha=$alpha;
	echo 'alpha = ' $alpha && mlflow run XJob/mlflow/sklearn_elasticnet_diabetes/osx/ -P alpha=$alpha;
	echo 'alpha = ' $alpha && mlflow run XJob/mlflow/sklearn_elasticnet_wine -P alpha=$alpha;
done 
}

run_projects
#run_projects_with_parameters
