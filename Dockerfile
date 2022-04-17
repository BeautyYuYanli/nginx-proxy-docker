FROM nginx

RUN apt-get update -y \
    && apt-get install -y \
        apache2-utils \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /opt
COPY auth.conf auth.htpasswd launch.sh ./
CMD ["chmod 777 ./launch.sh && ./launch.sh"]
