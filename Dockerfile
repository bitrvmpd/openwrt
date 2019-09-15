FROM debian:stable

RUN apt update --fix-missing && apt install -y subversion \
	g++ \
	zlib1g-dev \
	build-essential \
	git \
	python \
	time \
	libncurses5-dev \
	gawk \
	gettext \
	unzip \
	file \
	libssl-dev \
	wget \
	libelf-dev \
	ecj \
	fastjar \
	java-propose-classpath \
	python3-distutils
