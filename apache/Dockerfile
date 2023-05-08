# FROM registry.redhat.io/rhel8/httpd-24
FROM httpd

VOLUME [ "/etc/httpd" ]
USER root
# RUN yum -y module enable httpd:$HTTPD_VERSION && \
#   INSTALL_PKGS="apr-util-mysql" && \
#   yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
#   rpm -V $INSTALL_PKGS && \
#   yum -y clean all --enablerepo='*'
RUN apt-get update; \
  apt-get install -y --no-install-recommends libapr1-dev
