FROM fedora:21

MAINTAINER fabric8.io <fabric8@googlegroups.com>

RUN yum install -y npm git && \
	npm install -g yo generator-hubot coffee-script hubot && \
	yum clean all -y

RUN useradd hubot

RUN mkdir -p /home/hubot/scripts

WORKDIR /home/hubot

# Add plugins
RUN npm install --save hubot-jenkins-notifier hubot-grafana

ADD https://raw.githubusercontent.com/fabric8io/fabric8-hubot-scripts/master/fabric8.coffee /home/hubot/scripts/
ADD https://raw.githubusercontent.com/fabric8io/fabric8-hubot-scripts/master/jenkins.coffee /home/hubot/scripts/

RUN chown -R hubot:hubot /home/hubot

USER hubot
