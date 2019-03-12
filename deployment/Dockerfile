FROM codercom/code-server

# Install additional deps
RUN apt-get update && apt-get install -y \
	vim \
    rsync \
	wget

RUN wget https://dl.google.com/go/go1.12.linux-amd64.tar.gz && \
	tar -C /usr/local -xzf go1.12.linux-amd64.tar.gz && \
	rm -rf go1.12.linux-amd64.tar.gz && \
	echo "export GOPATH=/go/src" && \
	echo "export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin" >> $HOME/.bashrc

