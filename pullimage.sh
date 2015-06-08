#!/bin/bash

# pull image from DokcerHub

# print hostname
echo -e "hostname: \c" ; hostname

# print begin date
echo -e "begin date: \c" ; date

# clue image list
# imagelist=(redis-benchmark json-server ttrss frontroute textract  apt-cacher  disco  httpie  phpvirtualbox  archeologit findgithubemail webgrind quassel-core  vboxwebsrv streamripper  php-redis-server  adminer kpcli psocksd  sculpin polipo  h5ai)

imagelist=(busybox alpine)

repository=kiwenlau

for image in ${imagelist[*]};
do
  echo -e "\033[31m \ndocker pull $repository/$image \033[0m"
  docker pull $repository/$image
done

# print end date
echo -e "end date: \c" ; date


