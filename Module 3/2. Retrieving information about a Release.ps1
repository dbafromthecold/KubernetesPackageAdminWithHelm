


# view deployments
helm list



# view status of release
helm status mysql



# get release hooks
helm get hooks mysql



# get release manifests
helm get manifest mysql



# get release values
helm get values mysql



# get release notes
helm get notes mysql



# get all from release
helm get all mysql



# view kubernetes objects
kubectl get all



# view secretes
kubectl get secrets



# view release history
helm history mysql



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