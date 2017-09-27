#------------------------------------
# Control-M/Agent docker container
#------------------------------------

FROM ubuntu

RUN apt-get update && apt-get install -ym virtualbox

RUN apt-get install -ym virtualbox-dkms

RUN apt-get install -ym linux-headers-generic

ADD workbench_ova-1.0.0-20170504.084926-37.ova /work

RUN vboxmanage import --vsys 0 --vmname wkb1 /work/workbench_ova-1.0.0-20170504.084926-37.ova

EXPOSE 8443:8443

WORKDIR /root

CMD vboxmanage startvm "wkb1" --type headless
