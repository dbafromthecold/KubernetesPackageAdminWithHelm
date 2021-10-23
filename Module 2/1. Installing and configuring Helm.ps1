###################################################################################################
###################################################################################################
#
# https://www.pluralsight.com/courses/kubernetes-package-administration-helm
# 
# Module 2 of Kubernetes Package Administration with Helm
# 
# Installing and configuring Helm
#  
# Andrew Pruski
# 
###################################################################################################
###################################################################################################



# Installing Windows Subsystem for Linux
# https://docs.microsoft.com/en-us/windows/wsl/install-win10



# Enable Windows Subsystem for Linux
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart



# Restart Computer
Restart-Computer 



# Enable Virtual Machine Platform
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart



# Restart Computer
Restart-Computer 



# Install distro from Windows Store



# Check installed distro
wsl --list --verbose



# Set WSL 2 as the default version
wsl --set-default-version 2



# Set upgrade Ubuntu 20.04 distro to WSL 2
wsl --set-version Ubuntu-20.04 2



# Check installed distro
wsl --list --verbose



# Install Docker
# https://docs.docker.com/docker-for-windows/install/



# Run through Docker install



# Confirm docker install
docker version



# Check local Kubernetes cluster
kubectl config current-context



# Check Kubernetes nodes
kubectl get nodes



# Install chocolately
# https://chocolatey.org/install
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))



# Install Helm via chocolately
choco install kubernetes-helm



# Install VS Code Extensions for Kubernetes and Helm



# Add path to Helm to VS Code settings
"vs-kubernetes": {
    "vs-kubernetes.helm-path": "C:\\ProgramData\\chocolatey\\bin\\helm.exe"
}



# Confirm Helm version
helm version



# Add a helm repository to use the charts in the following demos
# using this custom repository as the charts in the stable repository have been deprecated.
# We'll be creating a custom Helm repository using Github in Module 4
helm repo add andrewpruski https://raw.githubusercontent.com/dbafromthecold/KubernetesPackageAdminWithHelm/master/



# Search for a chart
helm search repo andrewpruski/mysql
