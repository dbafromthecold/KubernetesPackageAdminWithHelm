###################################################################################################
###################################################################################################
#
# https://www.pluralsight.com/courses/kubernetes-package-administration-helm
#
# Module 4 of Kubernetes Package Administration with Helm
# 
# Creating a local Helm Repository - GitHub
#  
# Andrew Pruski
# 
###################################################################################################
###################################################################################################



##################################################
# go to Github and create a repository
##################################################



# clone repository locally
git clone https://github.com/dbafromthecold/DemoHelmRepo.git



# navigate to repo
cd C:\git\DemoHelmRepo



# copy packaged chart into repo
cp C:\charts\ourchart-0.1.0.tgz .



# index repo
helm repo index .



# view index.yaml
cat index.yaml



# push chart to Github
git add .
git commit -m "added ourchart to repo"
git push



##################################################
# get URL from index.yaml file in GitHub repository
##################################################



# add Githb repo as a Helm repository
helm repo add dbafromthecold https://raw.githubusercontent.com/dbafromthecold/DemoHelmRepo/master



# navigate to folder containing repository names and URLs
# C:\Users\apruski\AppData\Roaming\helm\



# view cached index.yaml file for repository
# C:\Users\apruski\AppData\Local\Temp\helm\repository



# search new Helm repository
helm search repo dbafromthecold/ourchart



# we can also see the chart in the Helm section of 
# of the Kubernetes extension for vs code



# deploy chart from repository
helm install ourchart dbafromthecold/ourchart



# confirm deployment
helm list
