FROM centos:6
MAINTAINER Takayuki Miwa <i@tkyk.name>

ENV code_root /code
ENV httpd_conf ${code_root}/config/httpd.conf

RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
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
ADD . $code_root
RUN test -e $httpd_conf && echo "Include $httpd_conf" >> /etc/httpd/conf/httpd.conf
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

