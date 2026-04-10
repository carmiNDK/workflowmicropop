#!/bin/bash

set -e  # STOP si erreur

APP_DIR="/home/ubuntu/app/deploydoc"
WAR_FILE="workflowmicropop.war"
ASADMIN="/opt/payara/bin/asadmin"
PWD_FILE="/tmp/.asadmin_pass"

echo "=== START DEPLOY ==="

# --- sécurité fichier ---
if [ ! -f "$APP_DIR/$WAR_FILE" ]; then
  echo "ERROR: WAR not found"
  exit 1
fi

# --- password file ---
echo "AS_ADMIN_PASSWORD=micropop" > $PWD_FILE

# --- attendre Payara proprement ---
echo "Waiting Payara..."
for i in {1..30}; do
  nc -z localhost 4848 && break
  sleep 5
done

if ! nc -z localhost 4848; then
  echo "ERROR: Payara not available"
  exit 1
fi

# --- arrêt propre app (si existe) ---
$ASADMIN --user admin --passwordfile $PWD_FILE undeploy workflowmicropop || true

# --- déploiement ---
echo "Deploying WAR..."
$ASADMIN --user admin --passwordfile $PWD_FILE deploy \
  --force \
  --contextroot /workflowmicropop \
  $APP_DIR/$WAR_FILE

# --- nettoyage ---
rm -f $PWD_FILE

echo "=== DEPLOY SUCCESS ==="
