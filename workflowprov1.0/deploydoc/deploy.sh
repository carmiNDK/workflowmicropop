#!/bin/bash

set -e  # stop si erreur

echo "=== DEPLOYMENT START ==="

# Variables
PAYARA_HOME=/opt/payara
WAR_PATH=/home/ubuntu/workflowmicropop/workflowmicropop.war
APP_NAME=workflowmicropop

# Vérifier Payara
echo "Checking Payara..."
$PAYARA_HOME/bin/asadmin list-domains

# Undeploy ancienne version
echo "Undeploy old version..."
$PAYARA_HOME/bin/asadmin undeploy $APP_NAME || true

# Déployer nouvelle version
echo "Deploying new version..."
$PAYARA_HOME/bin/asadmin deploy \
  --force=true \
  --name $APP_NAME \
  --contextroot /workflowmicropop \
  $WAR_PATH

echo "=== DEPLOYMENT SUCCESS ==="