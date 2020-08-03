###################################################################################################
###################################################################################################
#
#
# Module 4 of Kubernetes Package Administration with Helm
# 
# Creating a local Helm Repository - Chart Museum
#  
# Andrew Pruski
# 
#
###################################################################################################
###################################################################################################



# test deploying Chart Museum
helm install chartmuseum stable/chartmuseum --dry-run --debug



# deploy Chart Museum
helm install chartmuseum stable/chartmuseum --set env.open.DISABLE_API=false



# view release
helm list



# grab the Chart Museum pod name
$POD_NAME=$(kubectl get pods -l "app=chartmuseum" -o jsonpath="{.items[0].metadata.name}")



# set up port forwarding
kubectl port-forward $POD_NAME 8080:8080 --namespace default



# add Chart Museum as a Helm repository
helm repo add chartmuseum http://127.0.0.1:8080


# list repositories
helm repo list





# naviage to packaged Chart
cd C:\Charts


# confirm curl
curl --help



# if using powershell v5.1 you'll need to remove
# the alias that maps curl to Invoke-WebRequest
Remove-Item alias:\curl




# push chart to Chart Museum
curl --data-binary “@ourchart-0.1.0.tgz” http://localhost:8080/api/charts



# update Helm repositories
helm repo update



# search Chart Museum for our chart
helm search repo chartmuseum/ourchart



# deploy the chart from Chart Museum
helm install ourchart chartmuseum/ourchart



# view release
helm list