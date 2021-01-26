. ./0_set_env.sh
if [ -z "$DOCKER_IMAGENAME" ]; then
    echo "Error: Env DOCKER_IMAGENAME variable need to be set & non-empty"
    exit 1
fi 
echo "Docker Build '$DOCKER_IMAGENAME'"
docker build -t $DOCKER_IMAGENAME:latest .
