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

RUN /bin/bash -c "source launch_demo_project.sh"

EXPOSE 5000

CMD mlflow server \
    --file-store /mlflow \
    --host 0.0.0.0 

# TODO 
# 1. set up conde env route 
# 2. run demo exp efter build mlflow env successfully 
#ENTRYPOINT ["bin/bash", "/launch_demo_project.sh"]
