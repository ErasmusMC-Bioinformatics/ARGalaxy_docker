FROM lumc/galaxy-uwsgi:19.05

USER root

ADD changeo-0.4.4.tar.gz /root/changeo

RUN touch /var/lib/dpkg/status && \
    apt update && \
    apt install -y file bc python3 python3-pip unzip && \
    pip3 install /root/changeo/changeo-0.4.4

USER galaxy
