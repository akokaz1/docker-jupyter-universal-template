# start from a base image, see link below for more info
# https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html

FROM jupyter/scipy-notebook


ADD ./requirements.txt /home/jovyan/requirements.txt
RUN pip install -r /home/jovyan/requirements.txt