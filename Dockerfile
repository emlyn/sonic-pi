FROM ubuntu:trusty

RUN sed -i 's/main$/main universe/' /etc/apt/sources.list
RUN apt-get -q update
#RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get -q -y install pkg-config g++ supercollider ruby libqscintilla2-l10n libqscintilla2-dev qt4-dev-tools ruby-dev cmake libffi-dev