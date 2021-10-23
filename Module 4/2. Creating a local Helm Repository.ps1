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



# test deploying Chart Museum from the custom repository
# offical repository for chartmuseum is
# https://artifacthub.io/packages/helm/chartmuseum/chartmuseum
helm install chartmuseum andrewpruski/chartmuseum --dry-run --debug



# deploy Chart Museum
helm install chartmuseum andrewpruski/chartmuseum --set env.open.DISABLE_API=false



# view release
helm list



# view Chart Museum pod ans its labels
kubectl get pods --show-labels



# grab the Chart Museum pod name using the label retrieved from the previous command
$POD_NAME=$(kubectl get pods -l "app.kubernetes.io/name=chartmuseum" -o jsonpath="{.items[0].metadata.name}")
echo $POD_NAME



# set up port forwarding
kubectl port-forward $POD_NAME 8080:8080 --namespace default



# confirm Chart Museum is up and running
# http://127.0.0.1:8080



# view Helm help to get location of Helm Configuration Path
helm --help



# navigate to folder containing repository names and URLs, e.g. -
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



# view helm help again to get Helm Cache Path
helm --help



# view cached chartmuseum-index.yaml file for repository
# C:\Users\apruski\AppData\Local\Temp\helm\repository



# update Helm repositories
helm repo update



# view updated chartmuseum-index.yaml file for repository
# C:\Users\apruski\AppData\Local\Temp\helm\repository



# search Chart Museum for our chart
helm search repo chartmuseum/ourchart



# we can also see the chart in the Helm section of 
# of the Kubernetes extension for vs code



# deploy the chart from Chart Museum
helm install ourchart chartmuseum/ourchart



# view release
helm list