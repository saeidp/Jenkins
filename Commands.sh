#------- Didn't work for me---------------------
# Adding user to the docker group to get rid of sudo
sudo groupadd docker # Add the docker group if it doesn't already exist:
sudo gpasswd -a $USER docker # Add the connected user "$USER" to the docker group
docker run hello-world
#---------------------------------------------------

#---------------------Worked----------------------------
# getting rid of sudo
docker run -d --restart=always -p 127.0.0.1:23750:2375 -v /var/run/docker.sock:/var/run/docker.sock  alpine/socat  tcp-listen:2375,fork,reuseaddr unix-connect:/var/run/docker.sock
# I use 23750 and therefore I’ve configured export DOCKER_HOST=tcp://127.0.0.1:23750 in my .bashrc in WSL.
#--------------------------------------------------------


# -----------------------------Docker images----------------------------------------------
# list the images
docker image ls

#delete dangles (none) 
docker rmi $(docker images -f "dangling=true" -q) -force

# delete all
docker rmi $(docker images -a -q) -force

# delete image
docker rmi 993818c4ba4d --force

# ------------------------docker container-------------------------------
#building and running
docker build -t rovx .
docker run --rm rovx

# docker ps only returns the running container
docker ps -a

# Create a container (you need the name to be able to remove by name)
docker run --name=myrovx rovx 

# start container
docker start myrovx # (or container_id)

# stop container
docker stop mrovx
# Stop all running container
docker stop $(docker ps –a –q)

# remove docker container
docker rm myrovx
