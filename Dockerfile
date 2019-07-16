FROM continuumio/miniconda3

LABEL maintainer "yennj12"

RUN mkdir /mlflow/

RUN pip install --upgrade pip && \
RUN pip install -r requirements.txt && \ 
conda update -n base -c defaults conda && \ 
conda env list && \ 
pip freeze list  && \ 
which mlflow 

EXPOSE 5000

CMD mlflow server \
    --file-store /mlflow \
    --host 0.0.0.0 

# TODO 
# 1. set up conde env route 
# 2. run demo exp efter build mlflow env successfully 
#ENTRYPOINT ["bin/bash", "/launch_demo_project.sh"]
