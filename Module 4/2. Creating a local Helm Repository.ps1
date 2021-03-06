###################################################################################################
###################################################################################################
#
# https://www.pluralsight.com/courses/kubernetes-package-administration-helm
# 
# Module 4 of Kubernetes Package Administration with Helm
# 
# Creating a local Helm Repository - Chart Museum
#  
# Andrew Pruski
# 
###################################################################################################
###################################################################################################



# test deploying Chart Museum
helm install chartmuseum stable/chartmuseum --dry-run --debug



# deploy Chart Museum
helm install chartmuseum stable/chartmuseum --set env.open.DISABLE_API=false



# view release
helm list



# view Chart Museum pod
kubectl get pods



# grab the Chart Museum pod name
$POD_NAME=$(kubectl get pods -l "app=chartmuseum" -o jsonpath="{.items[0].metadata.name}")
echo $POD_NAME



# set up port forwarding
kubectl port-forward $POD_NAME 8080:8080 --namespace default



# confirm Chart Museum is up and running
# http://127.0.0.1:8080



# view helm help
helm --help



# navigate to folder containing repository names and URLs
# C:\Users\apruski\AppData\Roaming\helm\



# add Chart Museum as a Helm repository
helm repo add chartmuseum http://127.0.0.1:8080



# list repositories
helm repo list



# view updated repositories.yaml file
# C:\Users\apruski\AppData\Roaming\helm\



# naviage to packaged Chart
cd C:\Charts



# confirm curl
curl --help



# if using powershell v5.1 you'll need to remove
# the alias that maps curl to Invoke-WebRequest
Remove-Item alias:\curl



# push chart to Chart Museum
curl --data-binary “@ourchart-0.1.0.tgz” http://localhost:8080/api/charts



# search for the chart
helm search repo chartmuseum/ourchart



# view helm help again
helm --help



# view cached index.yaml file for repository
# C:\Users\apruski\AppData\Local\Temp\helm\repository



# update Helm repositories
helm repo update



# view updated index.yaml file for repository
# C:\Users\apruski\AppData\Local\Temp\helm\repository



# search Chart Museum for our chart
helm search repo chartmuseum/ourchart



# we can also see the chart in the Helm section of 
# of the Kubernetes extension for vs code



# deploy the chart from Chart Museum
helm install ourchart chartmuseum/ourchart



# view release
helm list