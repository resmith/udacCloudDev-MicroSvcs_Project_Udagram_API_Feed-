. ./0_set_env.sh
kubectl apply -f ./deployment.yaml
#
export POD_NAME=$(kubectl get pods -o custom-columns=NAME:.metadata.name | grep $APP_NAME)
