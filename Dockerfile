FROM devopsedu/webapp

#Install git
RUN apt-get update \
    && apt-get install -y git
	
RUN cd /var/www/html \
    && git clone https://github.com/edureka-devops/projCert.git	

RUN service apache2 start
