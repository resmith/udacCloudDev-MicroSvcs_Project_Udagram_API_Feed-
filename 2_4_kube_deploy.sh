. ./0_set_env.sh
#
# In case Docker image is changed
# otherwise kube will say 'unchanged' because of no change to deployment.yaml
kubectl delete -f ./deployment.yaml
#
kubectl apply -f ./deployment.yaml
kubectl apply -f ./service.yaml
#
