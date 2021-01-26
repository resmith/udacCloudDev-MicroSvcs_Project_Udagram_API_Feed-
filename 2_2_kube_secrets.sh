. ./0_set_env.sh

# ********* SECRETS
export POSTGRES_PASSWORD_ENCRYPTED=`echo -n $POSTGRES_PASSWORD | base64`
export JWT_SECRET=`echo -n $JWT_SECRET | base64`

echo "\n\n *** SECRETS"
cat <<EOF > app-config-secret.yaml
apiVersion: v1
kind: Secret
metadata:
   name: app-secret
data:
   POSTGRES_PASSWORD:  $POSTGRES_PASSWORD_ENCRYPTED
   JWT_SECRET: $JWT_SECRET
EOF

echo "\n** Contents of app-config-secret.yaml"
cat  app-config-secret.yaml

kubectl apply -f app-config-secret.yaml
# kubectl delete -f app-config-secret.yaml

# echo "\n** describe secrets"
 kubectl describe secrets


# echo "\n** get secrets"
kubectl get secret app-secret -o yaml
