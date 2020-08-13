FROM archlinux/base


# https://github.com/microsoft/azure-pipelines-agent/blob/master/docs/design/non-glibc-containers.md

RUN pacman -Syu --noconfirm \
  vim \
  tree \
  base-devel \
  git \
  openssl \
  openssh \
  nodejs \
  readline \
  shadow \
  sudo \
  pam \
  bash

LABEL "com.azure.dev.pipelines.agent.handler.node.path"="/usr/sbin/node"


CMD [ "node" ]
