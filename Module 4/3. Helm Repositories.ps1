


# create a chart with default templates
helm create ourchart



# remove the yaml files from the templates directory
rm .\ourchart\templates\*yaml



# copy in the yaml files in the yaml directory
cp .\Yaml\*yaml .\ourchart\templates\


############################################################
# update the Chart.yaml and NOTES.txt files
############################################################



# perform a dry run of installing the chart to our cluster
helm install ourchart .\ourchart --dry-run --debug



# test installing the chart to our cluster
helm install ourchart .\ourchart



# get the status of the release
helm status ourchart



# list the releases
helm list



# view the kubernetes objects
kubectl get all



# uninstall the release or delete
helm uninstall ourchart



# package the chart
helm package .\ourchart --destination .



# search for chartmuseum in the stable repository
helm search repo stable/chartmuseum



# install chartmuseum
helm install chartmuseum stable/chartmuseum --set env.open.DISABLE_API=false #--dry-run --debug



# confirm release
helm list



# get the chartmuseum pod name and start port forwarding
$POD_NAME=$(kubectl get pods -l "app=chartmuseum" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME 8080:8080 --namespace default



# push our packaged chart to chartmuseum
curl --data-binary "@ourchart-0.1.0.tgz" http://localhost:8080/api/charts



# add then local chartmuseum repository
helm repo add chartmuseum http://127.0.0.1:8080



# confirm chartmuseum repository is there
helm repo list



# update the repositories
helm repo update



# search for ourchart
helm search repo chartmuseum/ourchart



# install our chart
helm install sqlserver2019 channeladvisor-helm/ourchart --version 0.1.0



# list releases
helm list



# view kubernetes objects
kubectl get all



# navigate to git directory
cd c:\git



# clone git repository
git clone https://github.com/dbafromthecold/DemoHelmRepo.git



# copy packaged chart to repository
cp .\KubernetesPackageAdminWithHelm\ourchart-0.1.0.tgz .\DemoHelmRepo



# index repository
helm repo index .\DemoHelmRepo



# commit and push changes to Helm repo
git status
git add .
git commit -m "added ourchart to repo"
git push



# add github repository and Helm repository
helm repo add dbafromthecold https://raw.githubusercontent.com/dbafromthecold/DemoHelmRepo/master



# update repos
helm repo update



# search github helm repository for chart
helm search repo dbafromthecold/ourchart




# deploy chart from repository
helm install ourchart dbafromthecold/ourchart



# list releases
helm list



# view kubernetes objects
kubectl get all



# delete release
helm delete ourchart
