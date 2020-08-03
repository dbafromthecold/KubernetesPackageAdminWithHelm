###################################################################################################
###################################################################################################
#
#
# Module 4 of Kubernetes Package Administration with Helm
# 
# Packaging a Helm Chart
#  
# Andrew Pruski
# 
#
###################################################################################################
###################################################################################################



# create a chart
helm create ourchart



# view the chart directory
ls .\ourchart



# view the templates directory
ls .\ourchart\templates



# remove all yaml files in the templates directory
rm .\ourchart\templates\*yaml



# generate deployment yaml
kubectl create deployment nginx `
--image=nginx `
--dry-run=client `
--output=yaml



# create a new deployment yaml file
kubectl create deployment nginx `
--image=nginx `
--dry-run=client `
--output=yaml > .\ourchart\templates\deployment.yaml



# create a deployment (in order to run the expose command below)
kubectl create deployment nginx --image=nginx



# generate service yaml
kubectl expose deployment nginx `
--type=LoadBalancer `
--port=80 `
--dry-run=client `
--output=yaml



# create a new service yaml file
kubectl expose deployment nginx `
--type=LoadBalancer `
--port=80 `
--dry-run=client `
--output=yaml > .\ourchart\templates\service.yaml


# delete the deployment
kubectl delete deployment nginx



# replace NOTES.txt file
rm .\ourchart\templates\NOTES.txt
echo 'A test Helm Chart' > .\ourchart\templates\NOTES.txt



# remove the charts and tests directory within the chart (they're not needed)
rm -r .\ourchart\charts
rm -r .\ourchart\templates\tests



# deploy the chart
helm install ourchart .\ourchart



# view release
helm list



# view kubernetes objects
kubectl get all



# package the chart
helm package .\ourchart --destination C:\Charts



# view packaged chart
ls C:\Charts\