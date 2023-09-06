cd ~
curl -OL https://go.dev/dl/go1.18.1.linux-amd64.tar.gz
tar -C /usr/local -xvf go1.20.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source ~/.profile
go version
