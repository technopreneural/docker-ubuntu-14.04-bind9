FROM		ubuntu:14.04
MAINTAINER	technopreneural@yahoo.com

VOLUME		["/var/cache/apt-cacher-ng"]
RUN		apt-get -y update && apt-get install -y bind9

EXPOSE  	3142
CMD     	chmod 777 /var/cache/apt-cacher-ng && /etc/init.d/apt-cacher-ng start && tail -f /var/log/apt-cacher-ng/*