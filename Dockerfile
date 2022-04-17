FROM nginx

RUN apt-get update -y \
    && apt-get install -y \
        apache2-utils \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY auth.conf auth.htpasswd launch.sh /app/
CMD ["./launch.sh"]
