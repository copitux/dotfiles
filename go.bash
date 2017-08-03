export GOPATH=~/Projects/.go

genv() {
  export GOPATH=`pwd`
}

gf() {
  go fmt ./...
}


