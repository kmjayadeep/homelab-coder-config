FROM ubuntu

RUN apt-get update \
	&& apt-get install -y \
	curl \
	git \
	sudo \
	vim \
	wget \
  zsh \
  make \
  jq

ARG USER=jayadeep
ARG GROUP=jayadeep
ARG UID=1000
ARG GID=1000

RUN userdel ubuntu

RUN groupadd --gid ${GID} ${GROUP} && useradd --uid ${UID} --gid ${GID} --groups sudo --no-create-home --shell /bin/zsh ${USER} \
	&& echo "${USER} ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/${USER} \
	&& chmod 0440 /etc/sudoers.d/${USER}

USER ${USER}

RUN curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | \
  sh -s -- install linux --init none --no-confirm --extra-conf "trusted-users = ${USER}"

RUN sudo chown -R $USER:$GROUP /nix

WORKDIR /home/${USER}
