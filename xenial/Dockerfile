FROM ubuntu:xenial

ENV MONO_VERSION 5.2.0.224

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

RUN apt-get update && apt-get install -y --no-install-recommends \
		ca-certificates \
		curl \
		dirmngr \
		gnupg2 \
		git \
		openssh-client \
		procps \
		wget \
	&& rm -rf /var/lib/apt/lists/*

RUN echo "deb http://download.mono-project.com/repo/ubuntu xenial main" | tee /etc/apt/sources.list.d/mono-official.list \
  && apt-get update \
  && apt-get install -y mono-complete \
  && rm -rf /var/lib/apt/lists/* /tmp/*
