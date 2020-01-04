FROM continuumio/miniconda3

LABEL maintainer "yennj12"

ENV HOME /
WORKDIR $HOME
COPY . $HOME

RUN pip install --upgrade pip && \
pip install -r requirements.txt && \ 
pwd && ls && ls home &&  \ 
conda update -n base -c defaults conda && \ 
conda env list && \ 
pip freeze list  && \ 
which mlflow 

RUN /bin/bash -c "source run_more_demo_projects.sh || source run_demo_project.sh"

EXPOSE 5000

CMD mlflow server \
    --host 0.0.0.0 

### TODO ###
# 1. set up conda env route 
# 2. run demo exp after mlflow env build success
# 3. set up model config via .yml
# 4. load more examples and pipelines 
# 5. push deploy/train output to slack/s3