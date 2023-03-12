sudo apt-get update

sudo apt install ansible

sudo usermod -aG docker vagrant

sudo apt install docker.io

sudo apt-get install python3-pip -y

sudo install docker

mkdir project-ansible

cd projet-ansible

cp -r /vagrant/* .

ansible-playbook -i inventory.ini playbook.yml
