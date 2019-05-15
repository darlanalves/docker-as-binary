db() {
  image=$1
  shift
  docker run --rm -it -v /dev/shm:/dev/shm -v$PWD:/home/docker/app $DOCKER_ENV $DOCKER_REGISTRY$image "$@"
}

alias node="db node:10-alpine node"
alias npm="db node:10-alpine npm"
alias git="docker run -it --rm -v \${HOME}:/root -v $(pwd):/git alpine/git"