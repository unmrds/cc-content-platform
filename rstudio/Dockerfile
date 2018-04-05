# COMMENTS
# Import the rocker/rstudio base image

FROM rocker/rstudio

# Create a working directory
# and import data into the image

WORKDIR /home/rstudio
#ADD ./data/farmers_markets.csv /home/rstudio/markets/

# Run updates
# Also, set permissions on data directory
# per https://github.com/rocker-org/rocker/issues/246

RUN apt-get update
RUN R -e "install.packages('dplyr', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('ggplot2', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('ggrepel', repos = 'http://cran.us.r-project.org')"
RUN chown -R rstudio /home/rstudio

# Expose port 8787 to the host machine

EXPOSE 8787
