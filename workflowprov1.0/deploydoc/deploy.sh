#!/bin/bash
# Redirection vers un log global sur l'EC2
LOG="/home/ubuntu/deploy_script.log"
exec > >(tee -a "$LOG") 2>&1

ASADMIN="/opt/payara/bin/asadmin"
APP_DIR="/home/ubuntu/app"
WAR_FILE="workflowmicropop.war"
PWD_FILE="/tmp/.asadmin_pass"

echo "--- EVENT: $LIFECYCLE_EVENT [$(date)] ---"

# Création du fichier password
echo "AS_ADMIN_PASSWORD=micropop" > "$PWD_FILE"

if [ "$LIFECYCLE_EVENT" == "ApplicationStop" ]; then
    echo "Arrêt de l'ancienne version..."
    $ASADMIN --user admin --passwordfile "$PWD_FILE" undeploy workflowmicropop || echo "Aucune app à arrêter."

elif [ "$LIFECYCLE_EVENT" == "AfterInstall" ]; then
    echo "Attente de Payara (Port 4848)..."
    for i in {1..12}; do
        if nc -z localhost 4848; then
            echo "Payara est en ligne !"
            break
        fi
        echo "Attente... ($i/12)"
        sleep 5
    done

    echo "Déploiement du WAR..."
    $ASADMIN --user admin --passwordfile "$PWD_FILE" deploy \
      --force \
      --contextroot /workflowmicropop \
      "$APP_DIR/$WAR_FILE"
fi

rm -f "$PWD_FILE"
echo "--- FIN DU SCRIPT ---"