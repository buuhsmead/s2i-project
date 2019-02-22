FROM marc/jenkins-agent-maven-35-rhel7
MAINTAINER Siamak Sadeghianfar <ssadeghi@redhat.com>
USER root
RUN subscription-manager repos --enable rhel-7-server-extras-rpms
RUN yum -y install skopeo
USER 1001
