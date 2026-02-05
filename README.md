# 🛠️ Projet : De l'Image au Cluster (Image_to_Cluster)

## 📖 Présentation
Cet atelier démontre l'industrialisation du cycle de vie d'une application web. Partant d'un simple fichier `index.html`, nous utilisons **Packer** pour construire une image immuable, **K3d** pour l'infrastructure Kubernetes, et **Ansible** pour l'orchestration du déploiement.


## 🛠️ Stack Technique
* **Infrastructure** : K3d (Kubernetes local)
* **Build Tool** : Packer (HashiCorp)
* **Orchestration** : Ansible
* **Environnement** : GitHub Codespaces

---

## 🚀 Installation rapide (Automatisation)

Pour maximiser l'efficacité, j'ai centralisé toutes les étapes de build et de déploiement dans un script unique.

### 1. Préparation de l'environnement
Si vous êtes sur un Codespace vierge, lancez ces commandes pour installer les outils nécessaires :
```bash
# Installation de Packer
wget [https://releases.hashicorp.com/packer/1.10.1/packer_1.10.1_linux_amd64.zip](https://releases.hashicorp.com/packer/1.10.1/packer_1.10.1_linux_amd64.zip)
unzip packer_1.10.1_linux_amd64.zip && sudo mv packer /usr/local/bin/
```
# Installation d'Ansible et des dépendances K8s
pip install ansible kubernetes
ansible-galaxy collection install kubernetes.core
### 2. Déploiement "One-Click"
Une fois les outils installés, lancez le script d'automatisation pour tout déployer :
```bash
chmod +x deploy.sh
./deploy.sh
```
### 2. Déploiement "One-Click"
Une fois les outils installés, lancez le script d'automatisation pour tout déployer :
```bash
chmod +x deploy.sh
./deploy.sh
```
