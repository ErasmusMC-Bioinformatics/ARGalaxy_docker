FROM lumc/galaxy-uwsgi:19.05

USER root
RUN touch /var/lib/dpkg/status && apt update && apt install -y file
USER galaxy
