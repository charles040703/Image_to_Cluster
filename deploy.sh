#!/bin/bash
echo "🚀 Démarrage de l'automatisation..."

# 1. On build l'image
packer build build.pkr.hcl

# 2. On l'injecte dans le cluster (écrase l'ancienne v1 dans k3d)
k3d image import mon-nginx-custom:v1 -c lab

# 3. On applique la config Ansible (au cas où le YAML change)
ansible-playbook deploy.yml

# 4. LE "KICK" FINAL : On force Kubernetes à recréer les pods
kubectl rollout restart deployment nginx-custom

echo "✅ Déploiement terminé !"
echo "🌐 Pour voir ton site : kubectl port-forward svc/nginx-service 8888:80"
