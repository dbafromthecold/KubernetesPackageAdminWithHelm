###################################################################################################
###################################################################################################
#
# https://www.pluralsight.com/courses/kubernetes-package-administration-helm
#
# Module 3 of Kubernetes Package Administration with Helm
# 
# Rolling back a Release
#  
# Andrew Pruski
# 
###################################################################################################
###################################################################################################



# view release
helm list



# view release history
helm history mysql



# view kubernetes objects
kubectl get all



# view replicasets
kubectl get replicasets



# rollback release
helm rollback mysql 1



# view release history
helm history mysql



# view kubernetes objects
kubectl get all



# view replicasets
kubectl get replicasets



# view secrets
kubectl get secrets



###################################################################################################
# Rolling back without the old replicaset
###################################################################################################



# clean up previous release
helm delete mysql



# deploy specific version of chart
helm install mysql stable/mysql --version 1.6.3 



# upgrade release
helm upgrade mysql stable/mysql --version 1.6.4



# confirm history
helm history mysql



# view kubernetes objects
kubectl get all



# view replicasets
kubectl get replicaset



# delete old replicaset - replace NAME with the old replicaset name
kubectl delete replicaset NAME



# confirm deletion
kubectl get replicaset



# try a rollback with kubectl - will fail as we have deleted the old replicaset
kubectl rollout undo deployment/mysql



# but we still have the history of the release in Helm
helm history mysql



# rollback with helm
helm rollback mysql 1



# confirm status of release
helm list



# confirm rollback
helm history mysql



# view replicaset
kubectl get replicaset



# the old replicaset is back!
# this is due to the release history being stored as secrets in the k8s cluster
kubectl get secrets



# let's a look at one of those secrets
kubectl get secret sh.helm.release.v1.mysql.v1 -o yaml



# the secret is encoded. For further information on decoding these secrets, see here: -
# https://dbafromthecold.com/2020/08/10/decoding-helm-secrets/ 