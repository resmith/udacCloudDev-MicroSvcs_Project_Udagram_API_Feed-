. ./0_set_env.sh
#
echo "*** Info"
echo "APP_NAME: $APP_NAME"
export POD_NAME=$(kubectl get pods -o custom-columns=NAME:.metadata.name | grep $APP_NAME)
echo "POD_NAME: $POD_NAME"
#
echo "n\*** env variables from prod host"
echo "HOST: $(kubectl logs $POD_NAME | grep host)"
echo "DB: $(kubectl logs $POD_NAME | grep db)"
# kubectl get deployments
echo "\nEnv variables from exec pod env"
kubectl exec $POD_NAME -- env
