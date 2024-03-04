FROM cypress/browsers:node-20.11.0-chrome-121.0.6167.184-1-ff-123.0-edge-121.0.2277.128-1

RUN apt-get update && \
    apt-get install -y \
    gcc \
    make \
    g++ \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

RUN npm i -g @lhci/cli
