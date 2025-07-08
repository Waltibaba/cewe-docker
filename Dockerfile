FROM ubuntu:plucky
CMD ["bash"]
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -qq aptitude && \
 	apt-get install -y -qq \
	curl unzip wget ca-certificates libnss3 \
    libglib2.0-0 libfontconfig libx11-6 libxi6 \
    libxcursor1 libxss1 libxcomposite1 libxdamage1 libxtst6 libdbus-1-3 \
    libgl1-mesa-dri libegl1 libglx0 libglx-mesa0 libopengl0 libgomp1 \
    libsnappy1v5 libxkbcommon0 libxkbcommon-x11-0 libxkbfile1 libxcb* \
    xdg-utils p7zip-full sudo
RUN curl https://dls.photoprintit.com/api/getClient/29762-de_AT/hps/x_x_x_x_7892_x_07892-IVQox7ApAkKGS/linux > /tmp/cewe.tgz && \
	tar xvf /tmp/cewe.tgz && \
    cp /bin/echo /bin/less && \
    rm EULA.txt && \
    touch EULA.txt

RUN echo -e "\nja\nja\nja" | ./install.pl -i /opt
RUN apt-get clean
ENV USER=ubuntu
ENV UID=1000
ENV GROUPS=audio,video
# ENV QT_DEBUG_PLUGINS=1
ENV HOME=/home/ubuntu
RUN usermod -aG $GROUPS $USER
USER ubuntu

# WORKDIR /home/user
CMD ["/opt/CEWE Fotowelt"]