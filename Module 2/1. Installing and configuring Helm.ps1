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



# Add stable (official) repository
 # helm repo add stable https://kubernetes-charts.storage.googleapis.com/ # this is the location of the old stable repo
 helm repo add stable https://charts.helm.sh/stable



# Search for a chart
helm search repo stable/mysql
