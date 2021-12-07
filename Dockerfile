FROM r-base

# get dependent libraries on Docker image
RUN apt-get update -t unstable \
	&& apt-get install -y --no-install-recommends \
		libcurl4-openssl-dev \
		libssl-dev \
		libxml2-dev \
		libfontconfig1-dev \
		gdal-bin \
		libgdal-dev \
		libudunits2-dev \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds

# get renv installed on Docker image
ENV RENV_VERSION 0.14.0
RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"

# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /project

# set the workding directory 
WORKDIR /project

# copy contents of local folder to project folder in container
COPY ./ /project/

# use renv to restore package environment
RUN R -e "renv::restore()"

# make R scripts executable
RUN chmod +x /project/R/*.R
RUN chmod +x /project/Rmd/*.Rmd

# make container entry point bash
CMD make report.html