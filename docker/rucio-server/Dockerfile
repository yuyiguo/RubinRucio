# Copyright European Organization for Nuclear Research (CERN) 2017
#
# Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Authors:
# - Eric Vaandering, <ewv@fnal.gov>, 2018

ARG RUCIO_VERSION

FROM rucio/rucio-server:release-$RUCIO_VERSION

# Add CMS policy package
# RUN mkdir -p /opt/rucio/policy/CMSRucioPolicy
# COPY src/policy/CMSRucioPolicy/ /opt/rucio/policy/CMSRucioPolicy/

# Cannot make patch directory unless there are patches
#RUN mkdir -p /patch

# My patch for FNAL URL problem
# ADD https://patch-diff.githubusercontent.com/raw/rucio/rucio/pull/6097.patch /patch/6097.patch
