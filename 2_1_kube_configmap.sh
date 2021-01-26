. ./0_set_env.sh

# Note: Many items here were left this way to assist with debugging
#       For production, recommendation is to be more cautious & put more items in secrets
#
echo "*** Config"
cat <<EOF > app-config.yaml
apiVersion: v1
kind: ConfigMap
metadata:
   name: app-config
data:
   POSTGRES_HOST: $POSTGRES_HOST
   POSTGRES_USERNAME: $POSTGRES_USERNAME
   POSTGRES_DB: $POSTGRES_DB
   AWS_BUCKET: $AWS_BUCKET
   AWS_REGION: $AWS_REGION
   AWS_PROFILE: $AWS_PROFILE
   URL: $URL
EOF

echo "*** Contents of app-config.yaml"
cat  app-config.yaml

kubectl apply -f app-config.yaml


# echo "\n** get configmaps"
kubectl get configmaps


# echo "\n** describe configmaps"
kubectl describe configmaps
