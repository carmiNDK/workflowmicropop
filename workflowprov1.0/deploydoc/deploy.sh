#!/bin/bash

# Crée le dossier si nécessaire
mkdir -p /home/ubuntu/workflowmicropop

# Variables Payara
PAYARA_HOME=/opt/payara
WAR_PATH=/home/ubuntu/workflowmicropop/workflowmicropop.war
APP_NAME=workflowmicropop

# Supprime l’ancienne version (ignore si pas installée)
$PAYARA_HOME/bin/asadmin undeploy $APP_NAME || true

# Déploie le WAR dans le context /workflowmicropop
$PAYARA_HOME/bin/asadmin deploy --force=true --name $APP_NAME --contextroot /workflowmicropop $WAR_PATH