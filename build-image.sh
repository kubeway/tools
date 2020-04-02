#!/bin/bash
#****************************************************************#
# Create Date: 2019-02-02 22:16
#********************************* ******************************#

ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

DEFAULT_REGISTRY="registry.cn-hangzhou.aliyuncs.com"
NAME="alpine"
NS="knative-sample"
TAG="latest"
if [ ! -z "${1}" ]; then
  TAG="${1}"
fi

docker build -t "${DEFAULT_REGISTRY}/${NS}/${NAME}:${TAG}" -f ${ROOTDIR}/Dockerfile ${ROOTDIR}/
docker push "${DEFAULT_REGISTRY}/${NS}/${NAME}:${TAG}"

