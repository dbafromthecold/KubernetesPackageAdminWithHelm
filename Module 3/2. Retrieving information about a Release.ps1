###################################################################################################
###################################################################################################
#
#
# Module 3 of Kubernetes Package Administration with Helm
# 
# Retrieving information about a Release
#  
# Andrew Pruski
# 
#
###################################################################################################
###################################################################################################



# view deployments
helm list



# view status of release
helm status mysql
clear



# get release manifests
helm get manifest mysql > C:\Temp\manifests.txt



# get release values
helm get values mysql > C:\Temp\values.txt



# get release notes
helm get notes mysql > C:\Temp\notes.txt



# get all from release
helm get all mysql  > C:\Temp\all.txt



# view kubernetes objects
kubectl get all
clear




# view release history
helm history mysql
clear



# uninstall a release
helm uninstall mysql --keep-history



# confirm
helm list



# confirm with --all flag
helm list --all



# delete release
helm delete mysql



# confirm with --all flag
helm list --all