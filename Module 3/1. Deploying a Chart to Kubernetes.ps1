###################################################################################################
###################################################################################################
#
#
# Module 3 of Kubernetes Package Administration with Helm
# 
# Deploying a Chart to Kubernetes
#  
# Andrew Pruski
# 
#
###################################################################################################
###################################################################################################



# confirm current context
kubectl config current-context



# test connection to cluster
kubectl get nodes
clear



# list helm repositories
helm repo list
clear



# search stable repository for a mysql chart
helm search repo stable/mysql
clear



# show chart definition
helm show chart stable/mysql
clear



# show chart README
helm show readme stable/mysql
clear



# pipe README to file
helm show readme stable/mysql > C:\Temp\README.txt



# show chart values
helm show values stable/mysql > C:\Temp\values.txt



# test deployment of chart
helm install mysql stable/mysql --dry-run --debug
clear



# deploy chart
helm install mysql stable/mysql



# confirm deployment
helm list