# Provisioning script for the NodeBB service
name=nodebb
DOCKER_COMPOSE_FILES_NODEBB="$DOCKER_COMPOSE_FILES -f docker-compose-nodebb.yml"
echo -e "Setup of NodeBB is initiated"
docker-compose $DOCKER_COMPOSE_FILES_NODEBB up $name
# This will setup NodeBB i.e: compile assets, create admin users etc.
echo -e "Setup of NodeBB completed"
