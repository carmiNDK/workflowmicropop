#!/bin/bash
# On redirige tout vers un fichier de log pour le debug
exec > >(tee -a /home/ubuntu/deploy_script.log) 2>&1

set -e 

# ATTENTION : Puisque source: deploydoc/ vers destination: /home/ubuntu/app
# Le fichier WAR se trouve réellement dans /home/ubuntu/app/workflowmicropop.war
APP_DIR="/home/ubuntu/app"
WAR_FILE="workflowmicropop.war"
ASADMIN="/opt/payara/bin/asadmin"
PWD_FILE="/tmp/.asadmin_pass"

echo "=== [$(date)] START DEPLOY EVENT: $LIFECYCLE_EVENT ==="

# --- password file ---
echo "AS_ADMIN_PASSWORD=micropop" > $PWD_FILE

if [ "$LIFECYCLE_EVENT" == "ApplicationStop" ]; then
    echo "Désinstallation de l'ancienne version..."
    $ASADMIN --user admin --passwordfile $PWD_FILE undeploy workflowmicropop || echo "Aucune app à retirer."

elif [ "$LIFECYCLE_EVENT" == "AfterInstall" ]; then
    # --- sécurité fichier ---
    if [ ! -f "$APP_DIR/$WAR_FILE" ]; then
      echo "ERROR: WAR not found at $APP_DIR/$WAR_FILE"
      exit 1
    fi

    # --- attendre Payara ---
    echo "Waiting for Payara on port 4848..."
    for i in {1..30}; do
      nc -z localhost 4848 && break
      sleep 5
    done

    # --- déploiement ---
    echo "Deploying WAR..."
    $ASADMIN --user admin --passwordfile $PWD_FILE deploy \
      --force \
      --contextroot /workflowmicropop \
      $APP_DIR/$WAR_FILE
    
    echo "=== DEPLOY SUCCESS ==="
fi

# --- nettoyage ---
rm -f $PWD_FILE