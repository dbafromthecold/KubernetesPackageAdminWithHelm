


# search the stable repo
helm search repo stable/mysql



# download and extract the mysql chart
helm pull stable/mysql --untar 



# navigate to the chart location and list the contents
cd mysql && ls



# view the Chart.yaml file
cat .\Chart.yaml



# view the default values for the chart
cat .\values.yaml



# navigate to the templates directory and list the contents
cd .\templates && ls



# view the deployment yaml file
cat .\deployment.yaml




# perform a dry run of deploying the chart
helm install mysql stable/mysql --dry-run



# deploy the chart
helm install mysql stable/mysql



# view the status of the chart
helm status mysql



# view the releases
helm list



# get information about the release
helm get all mysql



# get certain information about the release
helm get values mysql
helm get notes mysql



# view the kubernetes objects created
kubectl get all



# delete the deployment
helm delete mysql



# view the versions of the chart available in the stable repo
helm search repo stable/mysql --versions



# deploy a specific chart version
helm install mysql stable/mysql --version 1.6.3



# view deployment
helm list



# upgrade the deployment
helm upgrade mysql stable/mysql --version 1.6.4



# view deployment
helm list



# view deployment history
helm history mysql



# rollback the deployment
helm rollback mysql 1



# view deployment history
helm history mysql

