# REQUIRED: Begin with the latest R container with plumber
FROM rstudio/plumber:latest

# REQUIRED: Install carrier package to be able to use the crated model (whether from a training job
# or uploaded)
RUN R -e "install.packages('carrier', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"

# OPTIONAL: Install any additional R packages you may need for your model crate to run
RUN R -e "install.packages('bnlearn', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('imbalance', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('lightgbm', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"


RUN R -e "install.packages('mlflow', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('carrier', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('optparse', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('tcltk2', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('imbalance', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('bnlearn', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"
RUN R -e "install.packages('ligthgbm', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"


# REQUIRED
ENTRYPOINT []

COPY ./start_plumber.R /tmp/start_plumber.R 

CMD ["Rscript", "/tmp/start_plumber.R"]