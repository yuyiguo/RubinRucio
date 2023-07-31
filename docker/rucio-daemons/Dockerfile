# Copyright European Organization for Nuclear Research (CERN) 2017
#
# Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Authors:
# - Eric Vaandering, <ewv@fnal.gov>, 2018

ARG RUCIO_VERSION
FROM rucio/rucio-daemons:release-$RUCIO_VERSION

# Install globus SDK
# RUN python3 -m pip install --no-cache-dir globus-sdk pyyaml
#ADD docker/rucio-daemons/globus-config.yml.j2 /tmp

# for debugging
#RUN pip3 install remote-pdb 
#RUN yum install -y net-tools telnet

# ADD docker/rucio-daemons/cms-entrypoint.sh /

# Cannot make patch directory unless there are patches
#RUN mkdir -p /patch

# My patch for FNAL URL problem
#ADD https://patch-diff.githubusercontent.com/raw/yuyiguo/rucio/pull/6.patch /patch/6.patch

# Add grid security certificates
RUN mkdir -p /etc/grid-security2
ADD certificate-550.tar.gz /etc/grid-security2/certificate-550.tar.gz
#RUN tar -xvf /etc/grid-security2/certificate-550.tar 
CMD sleep 9999999999d
#CMD exec /bin/sh -c "trap : TERM INT; sleep 9999999999d & wait"
