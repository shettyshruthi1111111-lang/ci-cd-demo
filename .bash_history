which git
sudo apt update
sudo apt install fontconfig openjdk-21-jre
java -version
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]"   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
which jenkins
swapoff -a
sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.ipv4.ip_forward = 1
EOF

sudo sysctl --system
sysctl net.ipv4.ip_forward
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update && sudo apt-get install containerd.io && systemctl enable --now containerd
wget https://github.com/containernetworking/plugins/releases/download/v1.4.0/cni-plugins-linux-amd64-v1.4.0.tgz
mkdir -p /opt/cni/bin
tar Cxzvf /opt/cni/bin cni-plugins-linux-amd64-v1.4.0.tgz
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward = 1
EOF

sudo sysctl --system
sysctl net.bridge.bridge-nf-call-iptables net.bridge.bridge-nf-call-ip6tables net.ipv4.ip_forward
modprobe br_netfilter
sysctl -p /etc/sysctl.conf
sudo vi  /etc/containerd/config.toml
sudo systemctl restart containerd && systemctl status containerd
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gpg
sudo mkdir -p -m 755 /etc/apt/keyrings
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update -y
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
sudo kubeadm init
kubectl get nodes
#To start using your cluster, you need to run the following as a regular user:
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
#Alternatively, if you are the root user, you can run:
export KUBECONFIG=/etc/kubernetes/admin.conf
#Apply the CNI YAML
kubectl apply -f https://reweave.azurewebsites.net/k8s/v1.30/net.yaml
kubectl get nodes
sudo kubeadm config images pull
kubectl get nodes
which
which git
which jenkins
kubectl get nodes
which docker
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
usermod -aG docker jenkins
reboot
/var/lib/jenkins/secrets/initialAdminPassword
cat /var/lib/jenkins/secrets/initialAdminPassword
usermod -aG jenkins docker
which docker
usermod -aG docker jenkins
reboot
cd /var/lib/jenkins/workspace/pipeline
ls
cat Dockerfile
docker images
usermod -aG docker jenkins
docker images
systemctl restart docker
ssh user@server-ip
df -h
rm -rf /var/lib/jenkins/workspace
rm -rf /var/lib/jenkins/jobs/*/builds/*
rm -rf /var/lib/jenkins/tmp/*
docker system prune -a
apt clean
apt autoremove -y
df -h
lsblk
sudo growpart /dev/xvda 1
resize2fs /dev/xvda1
df -h
sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
free -h
sudo systemctl restart jenkins
lsblk
ssh ubuntu@<56.228.41.247>
ssh ubuntu@56.228.41.247
y
clear
ssh ubuntu@56.228.41.247
lsblk
df -h
/var/lib/jenkins
ls
udo growpart /dev/xvda 1
lsblk
sudo resize2fs /dev/xvda1
df -h
sudo fallocate -l 2G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
systemctl restart jenkins
free -h
docker tag --help
which docker
docker images
which git
clear
usermod -aG docker jenkins
reboot
docker login -u shruthi1234567
ls
ls -a
is
ls
ls -a
ls
cat config
cd .kube/
ls
cat config
cd
clear
cd /var/lib/jenkins/workspace
ls
cd pipeline
ls
cd notesapp
cd notesapp/
ls
cat deployment.yaml
cat service.yaml
kubectl get pods
get rs
clear
exit
kubectl get pods
kubectl get deploy
get rs
get svc
kubectl get rs
kubectl get svc
kubectl run pod-123 --image ignix
kubectl get pods
docker run -it --name cont12 ubuntu /bin/bash
apt update - y
apt update -y
docker --version
docker images
docker run -it --name cont0 ubuntu /bin/bash
docker images
docker ps
docker ps -a
docker run -it --name dev  ubuntu /bin/bash
docker commit dev myapp
docker login -u shruthi
docker tag myapp shettyshruthi111111/myapp
docker images
docker push shettyshruthi1111111/myapp
docker login -u shettyshruthi1111111
docker tag myapp shettyshruthi111111/myapp
docker push shettyshruthi1111111/myapp
docker images
docker build -t myapp .
docker tag myapp:latest shettyshruthi1111111/myapp:latest
ls
ls -l
cd myapp
ls
docker images
docker login
docker push shettyshruthi1111111/myapp:latest
docker tag myapp shettyshruthi1111111/myapp
sudo ssu -
sudo su -
docker --version
docker build -t my-node-app
docker build -t my-node-app .
git add .github/workflows/build.yml
git commit -m "Add GitHub Actions workflow for build on push"
git push
git clone https://github.com/shettyshruthi1111111-lang/devops_batchE_sepoct123.git
ls
ls -l
cd devops_batchE_sepoct123
git status
git add .github/workflows/build.yml
git commit -m "Add GitHub Actions workflow for build on push"
git push origin main
git push origin master
[200~git add Jenkinsfile
git commit -m "Added Jenkins pipeline"
git add Jenkins1
git add jenkins1
git clone https://github.com/shettyshruthi1111111-lang/devops_batchE_sepoct.git
ls
cd devops_batchE_sepoct
git add jenkins1
git init
[200~git commit -m "Added Jenkins pipeline"
git commit -m "Added Jenkins pipeline"
git push origin master
clear
exit
git --version
kubectl apply -f deployment.yaml
kubectl get pods
nano deployment.yaml
kubectl get pods
kubectl apply -f deployment.yaml
kubectl get deployments
kubectl get pods
terraform version
mkdir terraform-aws-demo
cd terraform-aws-demo
main.tf
exuit
exit
sudo useradd --no-create-home --shell /bin/false prometheus
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus
sudo chown prometheus:prometheus /var/lib/prometheus
cd /tmp/
wget https://github.com/prometheus/prometheus/releases/download/v2.47.2/prometheus-2.47.2.linux-amd64.tar.gz
sudo tar -xvf prometheus-2.47.2.linux-amd64.tar.gz
cd prometheus-2.47.2.linux-amd64
sudo mv console* /etc/prometheus
sudo mv prometheus.yml /etc/prometheus
sudo chown -R prometheus:prometheus /etc/prometheus
sudo mv prometheus /usr/local/bin/
clear
mkdir docker-compose-app
cd docker-compose-app
nano app.js
nano package.json
nano Dockerfile
nano docker-compose.yml
docker-compose up --build
docker --version
apt install docker-compose
mkdir docker-compose-app
cd docker-compose-app
nano app.js
nano package.json
nano Dockerfile
nano docker-compose.yml
docker-compose up --build
nano app.js
docker-compose up --build
[200~git add Jenkinsfile
git commit -m "Add Jenkins pipeline with Build, Test, Deploy stages"
git push origin main~
kubectl apply -f nginx-deployment.yaml
nano nginx-deployment.yaml
kubectl apply -f nginx-deployment.yaml
kubectl get pods
kubectl apply -f nginx-service.yaml
kubectl get svc
kubectl get nodes -o wide
kubectl get pods
minikube start
kubectl describe pod nginx-deployment-576c6b7b6-6wt9r
minikube status

kubectl describe node NotReady
kubectl get nodes root@ip-172-31-34-244:~# kubectl get nodes
NAME               STATUS     ROLES           AGE   VERSION
ip-172-31-34-244   Ready      control-plane   56d   v1.30.14
ip-172-31-38-115   NotReady   <none>          56d   v1.30.14
root@ip-172-31-34-244:~#
kubectl get pods
kubectl taint nodes ip-172-31-34-244 node-role.kubernetes.io/control-plane:NoSchedule-
kubectl get nodes -o wide
kubectl get pods -w
kubectl get pods
kubectl get svc
kubectl apply -f nginx-service.yaml
kubectl get pods
clear
kubectl apply -f nginx-service.yaml
kubectl get pods
kubectl get svc
clear
mkdir node-app
cd node-app
npm init -y
npm init  - y
touch Dockerfile
nano Dockerfile
cat Dockerfile
cat > dockerfile
docker build -t node-app .
cat > Dockerfile << EOF


clear
:wq
:wq





zzzzz



jbkqgelwdoyg

wq

cd /path/to/node-app
mkdir node-app
cd /path/to/node-app
mkdir node-app
clea
clear
cd /path/to/node-app
cd desktop
cd Desktop
mkdir project
cd project
mkdir project
clear
cd project
docker-compose up --build
ls -la
pwd
cd /project
ls -la
docker-compose up --build
vi docker-compose.yml
cd Desktop
mkdir project
cd project
mkdir project
cd project
sudo su -
touch app.py
cleea
clear
exit
vi app.py
clear
exit
nano app.py
cat Dockerfile
nano Dockerfile
nano docker-compose.yml
docker-compose up --build
nano docker-compose.yml
nano Dockerfile
clear
nano Jenkinsfile
git add Jenkinsfile
git commit -m "Add Jenkins pipeline"
git push
mkdir my-jenkins-app
cd my-jenkins-app
git init
nano app.py
python app.py
git add .
git commit -m "Initial commit with Python app"
git remote add origin https://github.com/shettyshruthi1111111-lang/devops_batchE_sepoct123.git
git push -u origin main
git branch
git add .
git commit -m "Initial commit"
git push -u origin master
git pull origin master --rebase
git push origin master
exit
mkdir node-app
cd node-app
mkdir node-app
cd node-app
npm init -y
apt init -y
nano index.js
sudo su -
exit
