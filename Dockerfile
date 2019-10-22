FROM gitlab/dind

RUN apt-get update \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash \
    && DEBIAN_FRONTEND="noninteractive" \
    apt-get install -y --no-install-recommends \
    nodejs \
    && npm -v \
    && rm -rf /var/lib/apt/lists/*
