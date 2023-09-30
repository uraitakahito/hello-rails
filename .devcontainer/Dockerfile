#
# Be sure to use docker-compose or devcontainer.
#
FROM ruby:3.2-bullseye

ARG user_id=501
ARG group_id=20
ARG user_name=developer
# The WORKDIR instruction can resolve environment variables previously set using ENV.
# You can only use environment variables explicitly set in the Dockerfile.
# https://docs.docker.com/engine/reference/builder/#/workdir
ARG home=/home/${user_name}

# Base
RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y --no-install-recommends \
    less \
    sudo \
    procps \
    zsh \
    sed \
    curl \
    ca-certificates \
    iputils-ping \
    net-tools \
    git \
    gnupg2
# Editor
RUN apt-get install -y --no-install-recommends vim emacs
# Utility
RUN apt-get install -y --no-install-recommends \
  tmux \
  # fzf needs PAGER(less or something)
  fzf \
  exa \
  trash-cli

COPY bin/set-superuser-and-group.sh ${home}/bin/
RUN ${home}/bin/set-superuser-and-group.sh ${group_id} ${user_id} ${user_name}

RUN chown -R ${user_id}:${group_id} ${home}

#
# MySQL client
#
RUN apt-get install -y default-mysql-client

USER ${user_name}
WORKDIR /home/workspaces

ENTRYPOINT ["tail", "-F", "/dev/null"]
