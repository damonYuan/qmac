FROM ubuntu:14.04

# Set env variables for q
ENV QHOME /q
ENV PATH ${PATH}:${QHOME}/l32/

# Install rlwrap and kdb+
RUN \
	apt-get update && \
	apt-get install -y curl rlwrap unzip lib32z1 lib32ncurses5 lib32bz2-1.0 && \ 
	curl -k --silent -O https://kx.com/wp-content/uploads/2020/10/linuxx86.zip --referer https://kx.com/download-landing-linux/ && \
	unzip linuxx86.zip && \
	rm linuxx86.zip && \
	echo "alias q='rlwrap q'" >> /root/.bashrc

