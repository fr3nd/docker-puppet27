FROM centos:6

RUN rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
RUN yum install -y puppet-server-2.7.26
RUN mkdir -p /var/lib/puppet/run

CMD puppet master --no-daemonize --verbose
EXPOSE 8140

