


# confirm current context
kubectl config current-context


# test connection to cluster
kubectl get nodes



# list helm repositories
helm repo list



# search stable repository for a mysql chart
helm search repo stable/mysql




# show chart definition
helm show chart stable/mysql



# show chart README
helm show readme stable/mysql



# show chart values
helm show values stable/mysql



# test deployment of chart
helm install mysql stable/mysql --dry-run --debug



# deploy chart
helm install mysql stable/mysql



# confirm deployment
helm list