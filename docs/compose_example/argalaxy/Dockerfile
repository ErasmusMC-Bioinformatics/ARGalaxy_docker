FROM lumc/galaxy-uwsgi:19.05

USER root

RUN touch /var/lib/dpkg/status && apt update && apt install file bc

ADD https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh /root/miniconda3.sh
RUN bash ~/miniconda3.sh -b -p /miniconda3
ADD https://bitbucket.org/kleinstein/changeo/downloads/changeo-0.4.4.tar.gz /root/changeo.tar.gz 
RUN /miniconda3/bin/pip install /root/changeo.tar.gz

USER galaxy



