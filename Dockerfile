# create docker contianer for default python env
FROM ubuntu:14.04
MAINTAINER Christopher Naughton 
RUN sudo apt-get update && apt-get install -y python python-pip git
RUN pip install selenium nose fake-factory PyVirtualDisplay xvfbwrapper
ADD /location of git sources on local machine  /location in docker image
#RUN git clone https://github.com/Naughtron/pi_python_project.git
WORKDIR pi_python_project/unit_tests/
CMD python nosetests
