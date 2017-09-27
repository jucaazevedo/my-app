#------------------------------------
# Control-M/Agent docker container
#------------------------------------

FROM centos

WORKDIR /home

RUN yum -y install postgresql-server.x86_64

RUN yum -y install tcsh

COPY workbench.tar.gz /home/ 

WORKDIR /

RUN tar zxvf /home/workbench.tar.gz ./home/ 

EXPOSE 8443:8443

CMD ["echo","sem parametros"]
