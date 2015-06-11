#!/bin/bash

# pull image from DokcerHub

# print hostname
echo -e "hostname: \c" ; hostname

# print begin date
echo -e "begin date: \c" ; date

# radial image list
#imagelist=(radial/busyboxplus radial/log.io radial/owncloud radial/hub-base radial/spoke-base radial/etcd radial/coreos-pxe radial/distro-base radial/clarity radial/dns radial/nginx radial/admin radial/distro radial/postgresql radial/axle-base radial/sshd)

# pinterb image list
# imagelist=(pinterb/ubuntu-python-dev pinterb/swagger-editor pinterb/ubuntu-base pinterb/ubuntu-python pinterb/ubuntu-perl pinterb/ubuntu-golang pinterb/ubuntu-perl-mojo pinterb/ubuntu-perl-dev pinterb/ubuntu-python-falcon pinterb/json pinterb/ansible)

# guihem and joaodubas image list
#imagelist=(guilhem/vagrant-ubuntu guilhem/jenkins-slave guilhem/jenkins-slave-python guilhem/jenkins-slave-deb-build guilhem/apt-get-install guilhem/dh-venv joaodubas/orientdb joaodubas/droneio joaodubas/openjdk joaodubas/gocd-server joaodubas/fig joaodubas/python-venv joaodubas/nginx-proxy joaodubas/common joaodubas/arangodb joaodubas/nodejs joaodubas/multilevel joaodubas/nodejs-base joaodubas/spidermonkey joaodubas/levelhud joaodubas/nodejs-unstable joaodubas/devpi joaodubas/gocd-agent joaodubas/gocd-base joaodubas/leveldb joaodubas/oracle-jdk joaodubas/droneio-wall joaodubas/devmachine)

# sequenceiq imagelist
#imagelist=(sequenceiq/hadoop-docker sequenceiq/spark sequenceiq/ambari sequenceiq/hadoop-ubuntu sequenceiq/ambari-shell sequenceiq/drill sequenceiq/dnsmasq sequenceiq/socat sequenceiq/phoenix sequenceiq/kylin sequenceiq/tez sequenceiq/cloudbreak sequenceiq/serf sequenceiq/baywatch-client sequenceiq/uaa sequenceiq/status. sequenceiq.com sequenceiq/baywatch sequenceiq/pam sequenceiq/periscope sequenceiq/consul sequenceiq/munchausen sequenceiq/uluwatu-bin sequenceiq/sultans-bin sequenceiq/ambari-warmup sequenceiq/cb-shell)


# 31 selected images
imagelist=(axle-base sultans-bin haproxy cb-shell dnsutils node-metrics container-metrics ruby-base ipsec multilevel drupal jruby openjdk mono glassfish jenkins-slave quickstart-python exhibitor ubuntu-perl swagger-editor serf dnsmasq gocd-base gocd-agent drill ubuntu-perl-dev devmachine buildpack-runner gcc buildstep gocd-server )


for image in ${imagelist[*]};
do
  echo -e "\033[31m \ndocker pull kiwenlau/$image \033[0m"
  docker pull kiwenlau/$image
done

# print end date
echo -e "end date: \c" ; date


