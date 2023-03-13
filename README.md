
# Pokédex - Mustapha & Quentin - Projet DevOps

## Table des matières
- 🪧 [À propos](#à-propos)
- 📦 [Prérequis](#prérequis)
- 🚀 [Installation](#installation)
- 🛠️ [Utilisation](#utilisation)
- 🤝 [Contribution](#contribution)

## À propos

L'objectif du projet est de mettre en place d'une infrastructure automatisé de bout en bout avec Vagrant, Ansible et Docker.

Vagrant : création et la configuration des environnements de développement virtuels

Ansible : provisionnement de l'infrastructure

Docker : coordination des comportements entre les conteneurs

![image](https://user-images.githubusercontent.com/57917435/224658903-e4bf5a25-9cff-4235-b9f6-679ae4088464.png)

## Prérequis

1) Installer VirtualBox
2) Installer Vagrant

## Installation

si le cmd_install.sh ne s'execute pas -> lancer les commandes suivantes : 

sudo apt-get update

sudo apt install ansible

sudo apt install docker

sudo usermod -aG docker vagrant (si probleme)

sudo apt install docker.io

sudo apt-get install python3-pip -y

mkdir project-ansible

cd project-ansible

cp -r /vagrant/* .

ssh-keygen

ssh-copy-id vagrant@192.168.33.11

ansible-playbook -i inventory.ini playbook.yml

### Langages & Frameworks & outils

Web : HTML/CSS/JS 

Infra : Vagrant en Ruby, playbook ansible en Yaml, et l'inventaire ini

#### CI/CD

Sur GitHub avec multiple branches

#### Déploiement

Sur un serveur dédier
