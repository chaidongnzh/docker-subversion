FROM iaean/subversion

RUN apk add --no-cache wget unzip php7 php7-apache2 php7-session php7-json php7-ldap php7-xml && \
    wget --no-check-certificate https://github.com/mfreiholz/iF.SVNAdmin/archive/stable-1.6.2.zip &&\
	unzip stable-1.6.2.zip -d /opt &&\
	rm stable-1.6.2.zip &&\
	mv /opt/iF.SVNAdmin-stable-1.6.2 /opt/svnadmin &&\
        ln -s /data/svnadmin /opt/svnadmin/data &&\
	ln -s /opt/svnadmin /var/www/localhost/htdocs/svnadmin &&\
    chmod -R 777 /opt/svnadmin/data
    
ADD svnadmin/classes/util/global.func.php /opt/svnadmin/classes/util/global.func.php

