#!/bin/sh
java -jar /var/cache/jenkins/war/WEB-INF/jenkins-cli.jar -s http://127.0.0.1:8080 create-job pipeline-devgrid < /tmp/jobjenkins.xml
