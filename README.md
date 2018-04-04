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

[http://cc.unmrds.net:8080](http://cc.unmrds.net:8080) for the *Playground*

and

[http://cc.unmrds.net:8081](http://cc.unmrds.net:8081) for the *Instruction Platform* 

When run on a local development platform the two environments will be available at: 
[http://localhost:8080](http://localhost:8080) and [http://localhost:8081](http://localhost:8081) respectively.
