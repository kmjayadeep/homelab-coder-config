FROM ubuntu

RUN apt-get update \
	&& apt-get install -y \
	curl \
	git \
	sudo \
	vim \
	wget \
  zsh \
	&& rm -rf /var/lib/apt/lists/*

  # Install NVM, Node.js, npm, and Go
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash \
    && export NVM_DIR="$HOME/.nvm" \
    && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" \
    && nvm install node \
    && nvm use node \
    && npm install -g npm \
    && curl -sL https://golang.org/dl/go1.21.2.linux-amd64.tar.gz | tar -C /usr/local -xz

# Make sure nvm and go are available in the container
ENV NVM_DIR="/home/${USER}/.nvm"
ENV PATH="${NVM_DIR}/bin:${PATH}:/usr/local/go/bin"

ARG USER=coder
RUN useradd --groups sudo --no-create-home --shell /bin/bash ${USER} \
	&& echo "${USER} ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/${USER} \
	&& chmod 0440 /etc/sudoers.d/${USER}


USER ${USER}
WORKDIR /home/${USER}
