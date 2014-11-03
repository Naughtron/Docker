# create docker contianer for default python env
FROM ubuntu:14.04
MAINTAINER Christopher Naughton 
RUN sudo apt-get update && apt-get install -y python
RUN sudo apt-get install -y python-pip
RUN pip install selenium
RUN pip install nose
RUN pip install fake-factory
RUN pip install PyVirtualDisplay
RUN pip install xvfbwrapper
RUN sudo apt-get install -y git
RUN git init
RUN git clone https://github.com/Naughtron/pi_python_project.git
RUN cd pi_python_project/unit_tests/
RUN python nosetests
