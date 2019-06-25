This repository used for docker related contents.

# Docker Desktop Installation

1. Create an account on docker hub.
2. For windows go to https://hub.docker.com/editions/community/docker-ce-desktop-windows and click on 'Get Docker'.
3. Run download setup. Don't choose Window containers. Keep default setting of Linux Container.
4. Setup may restart machine. 
5. Once setup done, docker service can start using docker hub id (Prompt will be shown on quick launch).  

# Test Setup 

To check docker setup correctly. Run hello-world container, output should look like:

\> docker run hello-world

Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
1b930d010525: Pull complete
Digest: sha256:41a65640635299bab090f783209c1e3a3f11934cf7756b09cb2f1e02147c6ed8
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
 

# Build and Run

docker build -f Cassandra3PythonService -t fqadeer/cassandra-python-service . [Note last dot is necessary]

docker run -ti --rm --name python-service -v host_machine\cassandra_disc:/var/lib/cassandra -p 5000:5000 fqadeer/cassandra-python-service
