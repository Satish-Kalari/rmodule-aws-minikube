# Creating minikube instance named roboshop

***in terra-roboshop --> rmodule-aws-minikube --> minikube.tf has all the infra needed for minikube creation***

* Connecting minikube instance via ssh using GitBash
ssh -i ~/.ssh/satish-git centos@<ec2-ipaddress> 
ssh -i ~/.ssh/satish-git centos@52.21.224.211

***kubeconfig -- a file contains authentication information to connect kubernetes cluster and should be moved to .kube folder and save as config***

mkdir .kube
   - .kube is not made by default
   - kubectl will check a file in home folder ~/.kube/config (automatically)
cp kubeconfig .kube/config
   - copying kubeconfig from home folder to .kube/config and names as config

Now all command will work 
kubectl get nodes (ROLES: control-plane means master node)

# Crete a workstation instance  

***in terra-roboshop --> rmodule-aws-minikube --> workstation.tf has all the infra needed for minikube creation***

# connecting minikube to workstation 

***Install and Set Up kubectl on Workstation***
(https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

Access workstation instance via supper putty

1) curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

2) chmod +x kubectl

3) sudo mv kubectl /usr/local/bin/kubectl

to check if kubectl client is installed and ready to use, run
kubectl version --client 

***Authenticating ***

we need to authenticate this kubectl client in workstation to the server (in this case minikube named roboshop)

In workstation supper putty

mkdir .kube 

Manually copy config file connect from .kube folder from minikube instance (which is opened in gitBash from above)

vim .kube/config


***Here minikube named roboshop is treated as cluster by workstation***
