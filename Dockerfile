FROM marc/jenkins-agent-maven-35-rhel7
MAINTAINER Siamak Sadeghianfar <ssadeghi@redhat.com>
USER root
RUN INSTALL_PKGS="skopeo" && \
    yum install -y --setopt=tsflags=nodocs \
      --enablerepo=rhel-7-server-rpms \
      --enablerepo=rhel-7-server-extras-rpms \
      $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    yum clean all
USER 1001
