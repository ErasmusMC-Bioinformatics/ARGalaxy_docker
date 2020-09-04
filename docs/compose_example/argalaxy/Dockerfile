FROM lumc/galaxy-uwsgi:19.05

USER root

ADD https://bitbucket.org/kleinstein/changeo/downloads/changeo-0.4.4.tar.gz /root/changeo.tar.gz 
RUN touch /var/lib/dpkg/status && \
    apt update && \
    apt install -y file bc python3 python3-pip && \
    pip3 install /root/changeo.tar.gz

USER galaxy



#ADD https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh /root/miniconda3.sh
#RUN bash ~/miniconda3.sh -b -p /miniconda3
#RUN /miniconda3/bin/pip install /root/changeo.tar.gz
