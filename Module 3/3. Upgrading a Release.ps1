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



# search the repository for a chart
helm search repo andrewpruski/mysql



# search the stable repository for a chart and retrieve the different versions (2 in the repo)
helm search repo andrewpruski/mysql --versions



# install a specific version of the chart
helm install mysql andrewpruski/mysql --version 1.6.3 



# confirm release deployed
helm list



# view kubernetes objects
kubectl get all



# upgrade the release
helm upgrade mysql andrewpruski/mysql --version 1.6.4



# confirm release upgraded
helm list



# view history of release
helm history mysql



# view kubernetes objects
kubectl get all
