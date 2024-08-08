FROM cypress/browsers:node-20.16.0-chrome-127.0.6533.88-1-ff-128.0.3-edge-127.0.2651.74-1

RUN apt-get update && \
    apt-get install -y \
    gcc \
    make \
    g++ \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

RUN npm i -g @lhci/cli
