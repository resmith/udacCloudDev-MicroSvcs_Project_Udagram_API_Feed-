. ./0_set_env.sh
#
echo "*** Info"
echo "APP_NAME: $APP_NAME"
export POD_NAME=$(kubectl get pods -o custom-columns=NAME:.metadata.name | grep $APP_NAME)
echo "POD_NAME: $POD_NAME"
#
echo "\n\ncurl exec $POD_NAME -- curl $BASE_URL:$PORT$API_ENDPOINT"
kubectl exec $POD_NAME -- curl $BASE_URL:$PORT$API_ENDPOINT
#
echo "\n\ncurl exec $POD_NAME -- curl $BASE_URL:$PORT$API_ENDPOINT/"
kubectl exec $POD_NAME -- curl $BASE_URL:$PORT$API_ENDPOINT/