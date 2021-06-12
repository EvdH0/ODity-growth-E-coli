ARG BASE_CONTAINER=jupyter/scipy-notebook:f46d59f4b6a8
FROM $BASE_CONTAINER

LABEL author="Eric van der Helm"

USER root

# To ensure the data is exactly the same, enforce the following versions
RUN pip install numpy==1.18.1
RUN pip install scipy==1.4.1
RUN pip install pandas==1.0.1
RUN pip install lmfit==1.0.1
RUN pip install plotly==4.10.0
RUN pip install cufflinks==0.17.3
RUN pip install numdifftools==0.9.39
RUN pip install matplotlib==3.1.3


# Add the table of contents extension
RUN pip install jupyter-contrib-nbextensions==0.5.1
RUN jupyter contrib nbextension install 
RUN jupyter nbextension enable toc2/main


# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID
