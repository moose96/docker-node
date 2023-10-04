FROM cypress/browsers:node-20.6.1-chrome-116.0.5845.187-1-ff-117.0-edge-116.0.1938.76-1

RUN apt-get update && \
    apt-get install -y \
    gcc \
    make \
    g++ \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

RUN npm i -g @lhci/cli
