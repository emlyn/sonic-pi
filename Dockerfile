FROM ubuntu:trusty

RUN sed -i 's/main$/main universe/' /etc/apt/sources.list && apt-get update
#RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install supercollider ruby libqscintilla2-l10n libqscintilla2-dev qt4-dev-tools ruby-dev cmake libffi-dev