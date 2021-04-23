###################################################################################################
###################################################################################################
#
# https://www.pluralsight.com/courses/kubernetes-package-administration-helm
#
# Module 3 of Kubernetes Package Administration with Helm
# 
# Upgrading a Release
#  
# Andrew Pruski
#
###################################################################################################
###################################################################################################



# search the stable repository for a chart
# NOTE: This chart is now deprecated but is fine for use in these demos
helm search repo stable/mysql



# search the stable repository for a chart and retrieve the different versions
helm search repo stable/mysql --versions



# install a specific version of the chart
helm install mysql stable/mysql --version 1.6.3 



# confirm release deployed
helm list



# view kubernetes objects
kubectl get all



# upgrade the release
helm upgrade mysql stable/mysql --version 1.6.4



# confirm release upgraded
helm list



# view history of release
helm history mysql



# view kubernetes objects
kubectl get all
