#! /bin/sh

set -e

export RUCIO_VERSION=1.29.12
export CMS_VERSION=${RUCIO_VERSION}.yuyi3
export CMS_TAG=cms_1_29_4

export HARBOR=yuyiguo

#sudo podman build --build-arg RUCIO_VERSION=$RUCIO_VERSION -f docker/rucio-server/Dockerfile -t $HARBOR/rucio-server:release-$CMS_VERSION .
#sudo podman push $HARBOR/rucio-server:release-$CMS_VERSION

sudo docker build --build-arg RUCIO_VERSION=$RUCIO_VERSION -f docker/rucio-daemons/Dockerfile -t $HARBOR/rucio-daemons:release-$CMS_VERSION .
sudo docker push $HARBOR/rucio-daemons:release-$CMS_VERSION

#podman build --build-arg RUCIO_VERSION=$RUCIO_VERSION -f docker/rucio-probes/Dockerfile -t $HARBOR/rucio-probes:release-$CMS_VERSION .
#podman push $HARBOR/rucio-probes:release-$CMS_VERSION

#podman build --build-arg RUCIO_VERSION=$RUCIO_VERSION -f docker/rucio-ui/Dockerfile -t $HARBOR/rucio-ui:release-$CMS_VERSION .
#podman push $HARBOR/rucio-ui:release-$CMS_VERSION

#cd ../rucio-upgrade
#podman build  --build-arg RUCIO_VERSION=$RUCIO_VERSION -t ericvaandering/rucio-upgrade:release-$CMS_VERSION .
#podman push ericvaandering/rucio-upgrade:release-$CMS_VERSION

