FROM rocker/tidyverse:latest

# Install python
RUN apt-get update -qq && \
 apt-get install -y python3-pip tcl tk libz-dev libpng-dev

RUN ln -f /usr/bin/python3 /usr/bin/python
RUN ln -f /usr/bin/pip3 /usr/bin/pip
RUN pip install -U pip

# Install azureml-MLflow
RUN pip install azureml-MLflow
RUN pip install MLflow

# Create link for python
RUN ln -f /usr/bin/python3 /usr/bin/python

# Install R packages required for logging with MLflow (these are necessary)
RUN R -e "install.packages('mlflow', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('carrier', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('optparse', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('tcltk2', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('imbalance', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('bnlearn', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('ligthgbm', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
