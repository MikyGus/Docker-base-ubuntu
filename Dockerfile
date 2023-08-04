FROM ubuntu:22.04

# -qq Quiet level 2
RUN apt-get update \
	&& DEBIAN_FRONTEND=noninteractive apt-get upgrade -qq \
	&& apt-get clean \
	&& useradd -r non-priv
USER non-priv

