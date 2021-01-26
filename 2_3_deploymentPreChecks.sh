echo "ensure kubeval & kube-score are install first. See readme for instructions"
#
echo "\n\n *** kubeval "
kubeval deployment.yaml
#
echo "\n\n *** kube-score"
kube-score score deployment.yaml
