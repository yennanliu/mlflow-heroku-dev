FROM continuumio/miniconda3

LABEL maintainer "yennj12"

RUN mkdir /mlflow/

RUN pip install mlflow==0.8.0 && \  
conda update -n base -c defaults conda && \ 
pip freeze list  

EXPOSE 5000

CMD mlflow server \
    --file-store /mlflow \
    --host 0.0.0.0 \

ENTRYPOINT ["/launch_demo_project.sh"]
