# rocker_bioinformatics
a mod of rocker with additional bioinf libraries 


## Info on the image on which this is based
https://hub.docker.com/r/rocker/tidyverse/

## Starting up the image
More info here https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image

`sudo docker run -d -p 8787:8787 cbarnett/rocker_bioinformatics`

### start with volume share example
```
export SHAREDIR="/scratch/cbarnett/docker/rocker-share"
mkdir -p $SHAREDIR
pushd $SHAREDIR
sudo docker login
sudo docker run -d -p 8787:8787 -v $SHAREDIR:/home/rstudio/foo -e USERID=$UID cbarnett/rocker_bioinformatics
```
### Permissions and volume sharing
https://github.com/rocker-org/rocker/wiki/Sharing-files-with-host-machine


### clearing old containers
!!! warning, prunes all old containers/volumers - a dangerous thing!

```
echo "DANGER" docker container prune
echo "DANGER" docker volumes prune
```
