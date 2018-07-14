FROM jupyter/datascience-notebook

MAINTAINER Karl Benedict <kbene@unm.edu>

USER root

# Pandoc & Latex Environment
RUN wget https://github.com/jgm/pandoc/releases/download/1.19.1/pandoc-1.19.1-1-amd64.deb
RUN dpkg -i pandoc-1.19.1-1-amd64.deb
RUN apt-get update && \
	apt-get purge texlive && \
	apt-get install -y --no-install-recommends \
	texlive \
	texlive-fonts-recommended \
	texlive-fonts-extra \
	cm-super
	
## Taskjuggler and Ruby
RUN apt-get update && \
	apt-get purge ruby && \
	apt-get install -y --no-install-recommends \
	ruby
RUN gem install taskjuggler

RUN mkdir /home/root
COPY startup_instruction.sh /home/root/startup_instruction.sh
COPY startup_playground.sh /home/root/startup_playground.sh
COPY refreshWorkshops.sh /home/root/refreshWorkshops.sh
RUN chmod ugo+x /home/root/startup_instruction.sh
RUN chmod ugo+x /home/root/startup_playground.sh
RUN chmod ugo+rx /home/root/refreshWorkshops.sh

WORKDIR /home/jovyan
RUN rm -rf /home/jovyan/work

USER jovyan

