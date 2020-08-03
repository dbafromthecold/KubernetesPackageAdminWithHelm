###################################################################################################
###################################################################################################
#
#
# Module 4 of Kubernetes Package Administration with Helm
# 
# Creating a local Helm Repository - GitHub
#  
# Andrew Pruski
# 
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



# search new Helm repository
helm search repo dbafromthecold/ourchart



# deploy chart from repository
helm install ourchart dbafromthecold/ourchart



# confirm deployment
helm list