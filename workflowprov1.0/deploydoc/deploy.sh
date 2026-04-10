#!/bin/bash
# Redirection vers le log
LOG="/home/ubuntu/deploy_script.log"
exec > >(tee -a "$LOG") 2>&1

ASADMIN="/opt/payara/bin/asadmin"
APP_DIR="/home/ubuntu/app"
WAR_FILE="workflowmicropop.war"
PWD_FILE="/tmp/.asadmin_pass"

echo "--- EVENT: $LIFECYCLE_EVENT [$(date)] ---"

# Creation password file
echo "AS_ADMIN_PASSWORD=micropop" > "$PWD_FILE"

# --- ETAPE DE PURGE ---
if [ "$LIFECYCLE_EVENT" == "BeforeInstall" ]; then
    echo "Nettoyage de l'ancien WAR pour eviter les doublons..."
    if [ -f "$APP_DIR/$WAR_FILE" ]; then
        rm -f "$APP_DIR/$WAR_FILE"
        echo "Ancien WAR supprime avec succes."
    else
        echo "Aucun ancien WAR trouve, pret pour l'installation."
    fi

# --- ETAPE D'ARRET ---
elif [ "$LIFECYCLE_EVENT" == "ApplicationStop" ]; then
    echo "Stopping application..."
    $ASADMIN --user admin --passwordfile "$PWD_FILE" undeploy workflowmicropop || echo "No app to stop"

# --- ETAPE DE DEPLOIEMENT ---
elif [ "$LIFECYCLE_EVENT" == "AfterInstall" ]; then
    echo "Checking Payara port 4848..."
    for i in {1..12}; do
        if nc -z localhost 4848; then
            echo "Payara is UP"
            break
        fi
        sleep 5
    done

    echo "Deploying NEW WAR..."
    # On force le deploiement du fichier qui vient d'etre depose
    $ASADMIN --user admin --passwordfile "$PWD_FILE" deploy \
      --force \
      --contextroot /workflowmicropop \
      "$APP_DIR/$WAR_FILE"
fi

rm -f "$PWD_FILE"
echo "--- END OF SCRIPT ---"