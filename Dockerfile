FROM cypress/browsers:node18.12.0-chrome107

RUN apt-get update && \
    apt-get install -y \
    gcc \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
