FROM r-base

# get renv installed on Docker image
ENV RENV_VERSION 0.14.0
RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"

# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /project

# copy contents of local folder to project folder in container
COPY ./ /project/

# use renv to restore package environment
WORKDIR /project
RUN R -e "renv::restore()"

# make R scripts executable
RUN chmod +x /project/R/*.R
RUN chmod +x /project/Rmd/*.Rmd

# make container entry point bash
CMD make output/report.html