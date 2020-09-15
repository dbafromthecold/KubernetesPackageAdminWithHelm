###################################################################################################
###################################################################################################
#
# https://www.pluralsight.com/courses/kubernetes-package-administration-helm
# 
# Module 4 of Kubernetes Package Administration with Helm
# 
# Packaging a Helm Chart
#  
# Andrew Pruski
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



###################################################################################################
###################################################################################################
# If you are running Powershell v5.1 and run into the following error: -
# 
# Error: unable to build kubernetes objects from release manifest: error parsing : 
# error converting YAML to JSON: yaml: invalid leading UTF-8 octet
#
# Tomica Kaniski posted a work around here: -
# https://blog.kaniski.eu/2020/09/having-fun-with-helm-and-file-encoding/
#
# If you then run into this error: -
# Error: unable to build kubernetes objects from release manifest: error validating "": 
# error validating data: apiVersion not set
#
# Check the version of Helm you are using. Upgrading to Helm v3.3.1 will fix this issue: -
# choco upgrade kubernetes-helm
###################################################################################################
###################################################################################################



# view release
helm list



# view kubernetes objects
kubectl get all



# delete the release
helm delete ourchart



# update the deployment yaml to use template directives
# copy {{ .Release.Name }} in for the deployment name



# also update the value.yaml file, removing the old file
rm .\ourchart\values.yaml



# and add in a custom value
echo 'containerImage: nginx:1.17' > .\ourchart\values.yaml


# update the deployment yaml to use the new default value
# copy {{ .Values.containerImage }} in for the container image name



# now redeploy the chart
helm install ourchart .\ourchart



# view release
helm list



# view kubernetes objects
kubectl get all



# view the container image in the deployment
kubectl get deployment -o jsonpath='{ .items[*].spec.template.spec.containers[*].image }'



# now upgrade the chart, overriding the image name in the values file
helm upgrade ourchart .\ourchart --set containerImage=nginx:1.18



# view the container image in the deployment
kubectl get deployment -o jsonpath='{ .items[*].spec.template.spec.containers[*].image }'



# package the chart
helm package .\ourchart --destination C:\Charts



# view packaged chart
ls C:\Charts\
