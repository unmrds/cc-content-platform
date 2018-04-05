# UNM RDS Content Platform for the Coffee & Code Workshop Series

This repository contains the needed code to replicate the presentation and playground
environments used for the UNM Research Data Services (RDS) Coffee & Code workshop series. 
The materials in this repository leverage Docker as a platform for developing and
deploying portable containers that support individual applications. In the case of
the Coffee & Code instruction platform, the applications that are integrated into the sytem
include:

* Jupyter Notebooks as a presentation, demonstration, and experimentation environment
* Installed tools within the Jupyter Notebook platform:
	- Git
	- Pandoc & LaTeX
	- BASH shell
	- Python
	- R

When initiated, the Coffee & Code instruction environment creates two instances of the Jupyter
Notebook platform

* One from which the presentation/demonstration is run
* And a second *Plaground* instance that contains all of the presentation and demonstration
materials that workshop participants can copy and experiment with during the workshop. 

These platforms are accessible over the web on the host that RDS maintains at:

[http://cc.unmrds.net:8888](http://cc.unmrds.net:8888) for the *Playground*

and

[http://cc.unmrds.net:8889](http://cc.unmrds.net:8889) for the *Instruction Platform* 

When run on a local development platform the two environments will be available at: 
[http://localhost:8888](http://localhost:8888) and [http://localhost:8889](http://localhost:8889) respectively.

## Running the platform on your local workstation or on a server

To run the full environment, including downloading all of the workshop materials into the working copy of the platform, you need to have an operating Docker environment on your system that includes both the core Docker engine, and support for the `docker-compose` system. The installation and execution code provided in this repository has been developed and tested with the [Docker Community Edition (CE]](https://www.docker.com/community-edition). Infomation about the Docker CE platform and instructions for installing Docker CE on your system can be found here:

[https://www.docker.com/community-edition](https://www.docker.com/community-edition). 

Once you have an operational Docker system on your computer,  you can clone this repository to your computer, or download (and unzip) a zipfile containing the contents of the repository. From within the repository directory you can run the 

	docker-compose up -d --build

command. This will download and build all of the necessary components of the platform, and start it running. This initial build process is only executed when changes are made to the instructions for building and running the platform. Future excution of this command will go much more quickly as the previously build components will be reused. As noted above, once running, the platform should be available through a web browser on your local computer at:

[http://localhost:8888](http://localhost:8888) and [http://localhost:8889](http://localhost:8889) for the playground and instruction components. 
