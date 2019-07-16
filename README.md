# mlflow-heroku-dev
- mlflow deployment demo

### Quick start
```bash 
$ cd ~ && git clone https://github.com/yennanliu/mlflow-heroku-dev.git
$ cd ~ && cd mlflow-heroku-dev 
$ docker build -t mlflow . && docker run -p 5000:5000 mlflow
# visit the MLflow UI via http://0.0.0.0:5000
```
