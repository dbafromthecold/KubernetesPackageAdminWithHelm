###################################################################################################
###################################################################################################
#
# https://www.pluralsight.com/courses/kubernetes-package-administration-helm
# 
# Module 3 of Kubernetes Package Administration with Helm
# 
# Deploying a Chart to Kubernetes
#  
# Andrew Pruski
# 
###################################################################################################
###################################################################################################



# confirm current context
kubectl config current-context



# test connection to cluster
kubectl get nodes



# list helm repositories
helm repo list



# search stable repository for a mysql chart
# NOTE: This chart is now deprecated but is fine for use in these demos
helm search repo stable/mysql



# show chart definition
helm show chart stable/mysql



# show chart README
helm show readme stable/mysql



# pipe README to file
helm show readme stable/mysql > C:\Temp\README.txt



# show chart values
helm show values stable/mysql > C:\Temp\values.txt



# test deployment of chart
helm install mysql stable/mysql --dry-run --debug



# deploy chart
helm install mysql stable/mysql



# confirm deployment
helm list
