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
#imagelist=(axle-base sultans-bin haproxy cb-shell dnsutils node-metrics container-metrics ruby-base ipsec multilevel drupal jruby openjdk mono glassfish jenkins-slave quickstart-python exhibitor ubuntu-perl swagger-editor serf dnsmasq gocd-base gocd-agent drill ubuntu-perl-dev devmachine buildpack-runner gcc buildstep gocd-server )

# all condidate images
imagelist1=(tutum/authorizedkeys tutum/logrotate tutum/cleanup tutum/events tutum/hello-world tutum/metrics tutum/cli tutum/debian tutum/dnsutils tutum/grafana tutum/curl tutum/http-tap tutum/haproxy tutum/image-cleanup tutum/node-metrics tutum/ubuntu tutum/influxdb tutum/couchdb tutum/container-metrics tutum/fedora tutum/centos tutum/varnish tutum/riak tutum/dind tutum/node tutum/elasticsearch tutum/hipache tutum/slate tutum/api-docs tutum/wordpress tutum/quickstart-go tutum/tomcat tutum/ngrok tutum/glassfish tutum/quickstart-python tutum/boatyard tutum/buildstep radial/admin radial/axle-base radial/busyboxplus radial/clarity radial/coreos-pxe radial/distro radial/dns radial/etcd radial/hub-base radial/log.io radial/nginx radial/owncloud radial/postgresql radial/spoke-base radial/sshd pinterb/ansible pinterb/json pinterb/swagger-editor pinterb/ubuntu-base pinterb/ubuntu-golang pinterb/ubuntu-perl pinterb/ubuntu-perl-dev pinterb/ubuntu-perl-mojo pinterb/ubuntu-python pinterb/ubuntu-python-dev pinterb/ubuntu-python-falcon jplock/breakerbox jplock/exhibitor jplock/rabbitmq jplock/riak jplock/snowizard jplock/zookeeper cpuguy83/blog-hubhook cpuguy83/btsync cpuguy83/docker-hub-buildtag cpuguy83/docker-rails-dev-demo cpuguy83/docker-volumes cpuguy83/docker-web-demo cpuguy83/hipache cpuguy83/ipsec cpuguy83/mail cpuguy83/megaraid-status cpuguy83/mongodb cpuguy83/mysql cpuguy83/mysql-client cpuguy83/nagios cpuguy83/nfs-client cpuguy83/ntpdate cpuguy83/openvpn cpuguy83/postgres cpuguy83/redis cpuguy83/ruby-buildpack cpuguy83/ruby-install cpuguy83/ruby-jruby cpuguy83/ruby-mri cpuguy83/shell cpuguy83/ubuntu clue/redis-benchmark clue/json-server clue/frontroute clue/ttrss clue/apt-cacher clue/textract clue/disco clue/httpie clue/findgithubemail clue/archeologit clue/phpvirtualbox clue/vboxwebsrv clue/quassel-core clue/webgrind clue/streamripper clue/php-redis-server clue/adminer clue/kpcli clue/psocksd clue/sculpin clue/polipo)

imagelist2=(centurylink/badger centurylink/upper centurylink/openssl centurylink/data-container centurylink/imagelayers-api centurylink/redis centurylink/reverse centurylink/kube-install centurylink/ngrok centurylink/lorry-api centurylink/panamax-ruby-base centurylink/panamax-api centurylink/panamax-api-docs centurylink/panamax-ui centurylink/image-graph centurylink/ca-certs centurylink/apache-php centurylink/pmx-runner centurylink/ruby-base centurylink/socialize-api centurylink/haproxy-etcd centurylink/socialize-etl centurylink/aws-cli-wetty centurylink/coreos-cli-wetty centurylink/postgresql centurylink/socialize-ui centurylink/drupal centurylink/wordpress centurylink/docksters centurylink/gitlab centurylink/buildpack-runner sequenceiq/ambari sequenceiq/ambari-shell sequenceiq/ambari-warmup sequenceiq/baywatch sequenceiq/baywatch-client sequenceiq/cb-shell sequenceiq/cloudbreak sequenceiq/dnsmasq sequenceiq/drill sequenceiq/hadoop-docker sequenceiq/kylin sequenceiq/munchausen sequenceiq/pam sequenceiq/periscope sequenceiq/phoenix sequenceiq/serf sequenceiq/socat sequenceiq/spark sequenceiq/sultans-bin sequenceiq/tez sequenceiq/uluwatu-bin guilhem/apt-get-install guilhem/jenkins-slave guilhem/jenkins-slave-deb-build guilhem/jenkins-slave-python guilhem/vagrant-ubuntu joaodubas/arangodb joaodubas/common joaodubas/devmachine joaodubas/droneio joaodubas/droneio-wall joaodubas/fig joaodubas/gocd-agent joaodubas/gocd-base joaodubas/gocd-server joaodubas/leveldb joaodubas/levelhud joaodubas/multilevel joaodubas/nginx-proxy joaodubas/nodejs joaodubas/nodejs-base joaodubas/nodejs-unstable joaodubas/openjdk joaodubas/oracle-jdk joaodubas/orientdb joaodubas/python-venv joaodubas/spidermonkey kiwenlau/aerospike kiwenlau/alpine kiwenlau/busybox kiwenlau/centos kiwenlau/cirros kiwenlau/crux kiwenlau/fedora kiwenlau/gcc kiwenlau/glassfish kiwenlau/haproxy kiwenlau/jenkins kiwenlau/jruby kiwenlau/mageia kiwenlau/mariadb kiwenlau/maven kiwenlau/mongo kiwenlau/mono kiwenlau/mysql kiwenlau/opensuse kiwenlau/oraclelinux kiwenlau/percona kiwenlau/postgres kiwenlau/rabbitmq kiwenlau/redis kiwenlau/swarm kiwenlau/thrift kiwenlau/ubuntu-debootstrap)



for image in ${imagelist1[*]};
do
  echo -e "\033[31m \ndocker pull $image \033[0m"
  docker pull $image
done

for image in ${imagelist2[*]};
do
  echo -e "\033[31m \ndocker pull $image \033[0m"
  docker pull $image
done

# print end date
echo -e "end date: \c" ; date


