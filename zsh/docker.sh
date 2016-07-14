# clean inactive containers and temperary images
alias docker-clean="\
  docker ps -aq -f status=exited -f status=created | xargs docker rm;\
  docker images -q -f dangling=true | xargs docker rmi"

# stop and delete all containers
alias docker-purge='docker stop `docker ps -q`;docker rm `docker ps -aq`'

# For docker machine
alias dm='docker-machine'
# Change docker machine environment
function de () {
    eval `docker-machine env $1`
}
