FROM centos:6
MAINTAINER jamlee jamlee@jamlee.cn
RUN useradd -m jamlee -u 1000

RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
RUN echo 'include_only=.cn,.com' >>  /etc/yum/pluginconf.d/fastestmirror.conf
RUN yum install -y httpd
RUN yum install --enablerepo=epel,remi-php56,remi -y \
                              php \
                              php-cli \
                              php-gd \
                              php-mbstring \
                              php-mcrypt \
                              php-mysqlnd \
                              php-pdo \
                              php-xml \
                              php-xdebug \
                              tcpdump
RUN sed -i -e "s|^;date.timezone =.*$|date.timezone = PRC |" /etc/php.ini
RUN mv /usr/sbin/tcpdump /usr/local/bin
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

