FROM marc/jenkins-agent-maven-35-rhel7
MAINTAINER Siamak Sadeghianfar <ssadeghi@redhat.com>
USER root
RUN yum -y install skopeo
USER 1001
