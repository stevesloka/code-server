FROM golang:stretch
WORKDIR /app
RUN  apt-get update \
  && apt-get install -y wget net-tools vim rsync \
  && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/$(wget https://github.com/codercom/code-server/releases/latest -O - | egrep '/.*/.*-linux.tar.gz' -o) \
  && tar -xvzf * \
  && cd * \
  && chmod +x code-server \
  && mv ./code-server /

EXPOSE 8443
CMD /code-server -p 8443