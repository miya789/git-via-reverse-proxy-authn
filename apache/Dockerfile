# FROM registry.redhat.io/rhel8/httpd-24
# FROM httpd
FROM centos/httpd-24-centos7

VOLUME [ "/etc/httpd" ]
USER root
# RUN yum -y module enable httpd:$HTTPD_VERSION && \
#   INSTALL_PKGS="apr-util-mysql" && \
#   yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
#   rpm -V $INSTALL_PKGS && \
#   yum -y clean all --enablerepo='*'
RUN INSTALL_PKGS="apr-util-mysql" && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    yum clean all
# https://random-tech-note.jp/install-mysql-client57/
# https://blog.katsubemakito.net/mysql/mysql-update-error-gpg
RUN yum localinstall https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm -y && \
  yum-config-manager --disable mysql80-community && \
  yum-config-manager --enable mysql57-community && \
  rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022 && \
  yum install mysql-community-client -y
