FROM rhel6.7
MAINTAINER "Pavel Studenik" <pstudeni@redhat.com>

RUN yum -y remove subscription-manager python-rhsm
RUN rpm -Uvh http://yum.spacewalkproject.org/nightly-client/RHEL/6/x86_64/spacewalk-client-repo-2.4-3.el6.noarch.rpm
RUN sed s/enabled=0/enabled=1/g /etc/yum.repos.d/spacewalk-client-nightly.repo -i
RUN sed s/enabled=1/enabled=0/g /etc/yum.repos.d/spacewalk-client.repo -i
RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN echo -e "[rhel67]\nname=RHEL67\nbaseurl=http://download.devel.redhat.com/rel-eng/RHEL-6.7-20150702.0/6/Server/x86_64/os/\nenabled=1\ngpgcheck=0" >/etc/yum.repos.d/rhel67.repo
RUN yum install rhn-client-tools rhn-check rhn-setup rhnsd m2crypto wget osad yum-rhn-plugin rhnlib -y
RUN yum upgrade rhn-client-tools rhn-check rhn-setup rhnsd m2crypto wget osad yum-rhn-plugin rhnlib -y
RUN rm -f /etc/yum.repos.d/rhel67.repo

ADD register.sh /root/register.sh
ADD osad.sh /root/osad.sh

RUN chmod a+x /root/{register.sh,osad.sh}

CMD /root/osad.sh

