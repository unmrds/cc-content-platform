# COMMENTS
# Import the rocker/rstudio base image

FROM rocker/rstudio

# Run updates
# Also, set permissions on data directory
# per https://github.com/rocker-org/rocker/issues/246

RUN apt-get update
RUN R -e "install.packages('dplyr', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('ggplot2', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('ggrepel', repos = 'http://cran.us.r-project.org')"

# Create a working directory
# and import data into the image

WORKDIR /home/rstudio/data
#ADD ./data/farmers_markets.csv /home/rstudio/markets/
RUN chown -R rstudio /home/rstudio/data

# Expose port 8787 to the host machine
# EXPOSE 8787
