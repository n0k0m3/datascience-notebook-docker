# datascience-notebook-docker
My Jupyter Notebook Docker
# Normal Usage
Create working folder
```
cd ~
mkdir jupyter
```
Run Docker command
```
docker run -d --name jupyter --restart=always -p 8888:8888 \
    -v /home/USERNAME/jupyter/:/home/jovyan/ \
    n0k0m3/datascience-notebook
```
# Cloudbox Usage
Create working folder
```
cd ~
mkdir jupyter
```
Run Docker command
```
docker run -d \
    --name jupyter \
    --restart=always \
    -e PGID=1000 -e PUID=1000 \
    --network=cloudbox \
    --network-alias=jupyter \
    -p 8888:8888 \
    -v /home/USERNAME/jupyter/:/home/jovyan/ \
    -v /opt/jupyter/:/config \
    -v /mnt/:/mnt/ \
    --label com.github.cloudbox.cloudbox_managed=true \
    -e VIRTUAL_HOST=jupyter.DOMAIN \
    -e LETSENCRYPT_HOST=jupyter.DOMAIN \
    -e LETSENCRYPT_EMAIL=EMAIL@EMAIL.COM \
    n0k0m3/datascience-notebook
```
