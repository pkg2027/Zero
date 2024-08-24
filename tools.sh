#!/bin/bash
--------------------------------------------------
#################################################|
#Author: PRAVEEN KUMAR GAUTAM                   #|
#Date : 23/JULY/2024                            #|
#Version: 2.0                                   #|
#################################################|
--------------------------------------------------
#
#Objective: INSTALLING ALL THE REQUIRED TOOLs ON EC2 FOR THE PROJECT
#APROX: 10 GB STORAGE SPACE WILL BE CONSUMED
#
#MAVEN
#GIT
#PYTHON 3
#JAVA VERSIONS: 8/11/17/21
#MINIKUBE
#CONNTRACK
#HELM CHART
#KUBECTL
#VISUAL STUDIO CODE
#KUBERNETES
#TERRAFORM
#EKSCLI
#ANSIBLE
#AWS
#DOCKER
#TRIVY
#JENKINS
#SONARQUBE
#
set -e
set -o
set -a
set -u
#
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------"
	#TOOL 1: VSC
	echo "INSTALL Visual Studio Code"
	echo "----------------------------------------------------"
	#COMMANDS
	sudo apt install software-properties-common apt-transport-https wget -y
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	sudo apt install code -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------"
	#TOOL 2: MAVEN
	echo "INSTALL Maven"
	echo "----------------------------------------------------"
	#COMMANDS
	sudo apt install maven -y
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------" 
        #TOOL 3: PYTHON
        echo "INSTALL Python"
        echo "----------------------------------------------------"
	#COMMANDS
	sudo apt install python3 -y
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------" 
	#TOOL 4: GIT 
	echo "INSTALL Git"
	echo "----------------------------------------------------"
	#COMMANDS
	sudo apt install git -y
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------"
        #TOOL 5: HELM CHART
        echo "INSTALL Helm Chart"
        echo "----------------------------------------------------"
        #COMMANDS
	curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
	chmod 700 get_helm.sh
	./get_helm.sh
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------"
        #TOOL 6: JAVA
        echo "INSTALL Java: 8/11/17/21"
        echo "----------------------------------------------------"
        #COMMANDS
	#SWITCHING JAVA VERSION: sudo update-alternatives --config java
	sudo apt install default-jre -y
	sudo apt-get install openjdk-8-jdk -y
	sudo apt-get install openjdk-11-jdk -y
	sudo apt-get install openjdk-17-jdk -y
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------" 
        #TOOL 7: DOCKER
        echo "INSTALL Docker"
        echo "----------------------------------------------------"
        #COMMANDS
	sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y
	sudo apt update -y
	apt-cache policy docker-ce
	sudo apt install docker-ce -y
	#sudo systemctl status docker
	sudo chmod 777 /var/run/docker.sock
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------"
	#TOOL 8: CONNTRACK
	echo "INSTALL Conntrack"
	echo "----------------------------------------------------"
	#COMMANDS
	sudo apt install conntrack -y
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------"
	#TOOL 9: MINIKUBE
	echo "INSTALL Minikube"
	echo "----------------------------------------------------"
	#COMMANDS
	wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
	sudo cp minikube-linux-amd64 /usr/local/bin/minikube
	sudo chmod 755 /usr/local/bin/minikube
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------"
	#TOOL 10: KUBECTL
	echo "INSTALL Kubectl"
	echo "----------------------------------------------------"
	#COMMANDS
	curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
	chmod +x ./kubectl
	sudo mv ./kubectl /usr/local/bin/kubectl
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------"
	#TOOL 11:ANSIBLE
	echo "INSTALL Ansible "
	echo "----------------------------------------------------"
	#COMMANDS
	sudo apt install software-properties-common
	sudo add-apt-repository --yes --update ppa:ansible/ansible
	sudo apt install ansible -y
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------"
	#TOOL 12: TERRAFORM
	echo "INSTALL Terraform"
	echo "----------------------------------------------------"
	#COMMANDS
	sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
	wget -O- https://apt.releases.hashicorp.com/gpg | \
	gpg --dearmor | \
	sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
	gpg --no-default-keyring \
	--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
	--fingerprint
	echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
	https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
	sudo tee /etc/apt/sources.list.d/hashicorp.list
	sudo apt update
	sudo apt-get install terraform -y
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------"
	#TOOL 13:AWS
	echo "INSTALL aws"
	echo "----------------------------------------------------"
	#COMMANDS
	sudo apt install curl unzip -y
	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
	unzip awscliv2.zip
	sudo ./aws/install --update 
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------"
	#TOOL 14:EKSCLI
	echo "INSTALL Ekscli"
	echo "----------------------------------------------------"
	#COMMANDS
	curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
	sudo mv /tmp/eksctl /usr/local/bin
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------"
	#TOOL 15:KUBERNETES
	echo "INSTALL Kubernetes"
	echo "----------------------------------------------------"
	#COMMANDS
	curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
	echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
	sudo apt update
	sudo apt install kubeadm kubelet kubectl -y
	sudo apt-mark hold kubeadm kubelet kubectl
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------" 
        #TOOL 16: TRIVY
        echo "INSTALL Trivy"
        echo "----------------------------------------------------"
        #COMMANDS
	sudo apt-get install wget apt-transport-https gnupg lsb-release
	wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
	echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list
	sudo apt-get update
	sudo apt-get install trivy -y
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------" 
        #TOOL 17: JENKINS
        echo "INSTALL Jenkins"
        echo "----------------------------------------------------"
        #COMMANDS
	sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
	echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
	sudo apt-get update
	sudo apt-get install jenkins -y
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
	echo "----------------------------------------------------" 
        #TOOL 18: SONARQUBE
        echo "INSTALL Sonarqube"
        echo "----------------------------------------------------"
        #COMMANDS
	docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube
echo " "
echo " "
echo " "
echo " "
echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
sudo apt update && sudo apt upgrade -y
echo " "
echo " "
echo " "
echo " "
######################################################################################################################################################################################
# DAEMON SYSTEM RELOAD
systemctl daemon-reload

echo "----------------------------------------------------"
#UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION
echo "UPDATING AND UPGRADING SYSTEM FOR TOOL INSTALLATION"
echo "----------------------------------------------------"
#COMMANDS
cd /etc/apt/
sudo cp trusted.gpg trusted.gpg.d
sudo apt update && sudo apt upgrade -y
#1
mvn -version
echo " "
echo " "
echo " "
echo " "
#2
sudo systemctl start jenkins
echo " "
echo " "
echo " "
echo " "
#3
kubectl version -o json
echo " "
echo " "
echo " "
echo " "
#4
java -version
echo " "
echo " "
echo " "
echo " "
#5
python3 --version
echo " "
echo " "
echo " "
echo " "
#6
eksctl version
echo " "
echo " "
echo " "
echo " "
#7
helm version
echo " "
echo " "
echo " "
echo " "
#8
git version
echo " "
echo " "
echo " "
echo " "
#9
kubeadm version
echo " "
echo " "
echo " "
echo " "
#10
aws --version
echo " "
echo " "
echo " "
echo " "
#11
sudo systemctl start docker
echo " "
echo " "
echo " "
echo " "
#12
minikube version
echo " "
echo " "
echo " "
echo " "
#13
ansible --version
echo " "
echo " "
echo " "
echo " "
#14
terraform -version
echo " "
echo " "
echo " "
echo " "
#Active listning PORTS
ss -antpl
echo " "
echo " "
echo " "
echo " "
docker ps -a
######################################################################################################################################################################################
