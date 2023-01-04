# docker-jupyter-universal-template
A universal template for setting up a docker environment with a built in jupyter lab instance


I set up alot of docker instances with different variations of jupyter lab or environments in. So i've decided to bnuild this simple standalone repository that I can clone, rather than setting up from scratch everytime.

## Structure

- **notebooks** - this is where most of the work will go, and is split into 3 subfolders
  - data
  - scripts
  - results
 
- **requirements.txt** - packages that need to be installed go here

- **dockerfile** - this contains the instructions on building the jupyterlab image. you can swap out base images here

- **docker-compose.yml** - this contains the instructions to set up and run the docker container, along with mounting the right volumes and drives. if you would like to set up multiple containers that run together, you can orchestrate them here.

- **.env** - you will need to place a .env fil, this will house your private and local variables, and is not seen in this repository as its within the .gitignore 

- **.gitignore** add files that you don't want to publish to github here. I have used a python example here, and added the **.env** file to it for example.


## set-up & useful commands

### initial installation

Just clone the repository, add a **.env** file, run 

`docker-compose up lab ` 

and then go to
 
 `http://localhost:8888/`

the first time you build and run the container, you will need to verify that its actually you that ran and has access to the jupyter server, for that, you will need an access token. You can get this from the terminal you ran our commands on. Look for a log that looks like this 

`[I 2023-01-04 17:39:55.094 ServerApp]  or http://127.0.0.1:8888/lab?token=1abbe53f0a45eae5671dc6afbacddd204059dc7b16469f69`

take the part after `token=` and paste that into the token part of the prompt screen. I would highly suggest you set-up a password for easier log in next time. 

### run on another port

sometimes, you don't want to run this docker container on port `8888`, if you want to change this, you can do that in the **dockerfile** 