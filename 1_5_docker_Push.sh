. ./0_set_env.sh
if [ -z "$DOCKER_IMAGENAME" ]; then
    echo "Error: Env DOCKER_IMAGENAME variable need to be set & non-empty"
    exit 1
fi 
echo "Docker push '$DOCKER_IMAGENAME'"
docker push  $DOCKER_IMAGENAME
