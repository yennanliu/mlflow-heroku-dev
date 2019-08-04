# mlflow-heroku-dev

> Demo how to `deploy a Mlflow app to Heroku cloud`. Main point : Show how to train/manage ML tasks as experiments with various parameter collections, save the model config, train results and visualize them via Mlflow framework. For more data infra/ETL development ideas, please visit :

* Daas (Data as a service) repo :  [Data infra build](https://github.com/yennanliu/data_infra_repo) -> [ETL build](https://github.com/yennanliu/XJob) -> [DS application demo](https://github.com/yennanliu/analysis)
* Airflow Heroku demo : [airflow-heroku-dev](https://github.com/yennanliu/airflow-heroku-dev)


[![Build Status](https://travis-ci.org/yennanliu/Xjob.svg?branch=master)](https://travis-ci.org/yennanliu/mlflow-heroku-dev)
[![PRs](https://img.shields.io/badge/PRs-welcome-6574cd.svg)](https://github.com/yennanliu/mlflow-heroku-dev/pulls)

### Deploy to Heroku 
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/yennanliu/mlflow-heroku-dev)

### Quick start
<details>
<summary>Quick-Start-docker</summary>

```bash 
$ cd ~ && git clone https://github.com/yennanliu/mlflow-heroku-dev.git
$ cd ~ && cd mlflow-heroku-dev 
$ docker build -t mlflow . && docker run -p 5000:5000 mlflow
# visit the MLflow UI via http://0.0.0.0:5000
```
</details>

<details>
<summary>Quick-Start-deploy-to-heroku</summary>

```bash 
$ cd ~ && git clone https://github.com/yennanliu/mlflow-heroku-dev.git
$ cd ~ && cd mlflow-heroku-dev 
$ heroku create mlflow-heroku 
$ heroku addons:create mlflow-postgresql:dev -a mlflow-heroku
$ git add . && git commit -m 'update for heroku deploy' && git push origin 
$ heroku git:remote -a mlflow-heroku
$ git push heroku master 
# visit mlflow UI via https://mlflow-heroku.herokuapp.com/
```
</details>

### Ref 
- Intro to Mlflow 
	- https://www.mlflow.org/docs/latest/index.html
	- https://medium.com/@jain.roh/ml-flow-basic-approach-part-1-logging-e528a92922f5
	- https://medium.com/@yuu.ishikawa/getting-started-with-mlflow-9c2f2543dce3