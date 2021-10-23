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



# search repository for a mysql chart
helm search repo andrewpruski/mysql



# show chart definition
helm show chart andrewpruski/mysql



# show chart README
helm show readme andrewpruski/mysql



# pipe README to file
helm show readme andrewpruski/mysql > C:\Temp\README.txt



# show chart values
helm show values andrewpruski/mysql > C:\Temp\values.txt



# test deployment of chart
helm install mysql andrewpruski/mysql --dry-run --debug



# deploy chart
helm install mysql andrewpruski/mysql



# confirm deployment
helm list
