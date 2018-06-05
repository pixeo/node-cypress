FROM node:10

ENV npm_config_loglevel=warn

RUN apt-get update && \
    apt-get install -y \
    libgtk2.0-0 \
    libnotify-dev \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    xvfb \
    jq

WORKDIR /app
RUN npm i -g cypress
RUN npx cypress version

CMD ["node", "--version"]
