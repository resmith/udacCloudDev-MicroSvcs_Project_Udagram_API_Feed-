. ./0_set_env.sh
if [ -z "$DOCKER_IMAGENAME" ]; then
    echo "Error: Env DOCKER_IMAGENAME variable need to be set & non-empty"
    exit 1
fi 
echo "Docker Debug ${DOCKER_IMAGENAME}"
docker run -it --env-file=./dockerEnv.txt $DOCKER_IMAGENAME /bin/bash
# docker run -p $DOCKER_PORT:$PORT --env-file=./dockerEnv.txt $DOCKER_IMAGENAME
