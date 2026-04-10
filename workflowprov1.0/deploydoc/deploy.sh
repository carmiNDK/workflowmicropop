#!/bin/bash
# Redirection vers un log simple
exec > >(tee -a /home/ubuntu/deploy_script.log) 2>&1

ASADMIN="/opt/payara/bin/asadmin"
APP_DIR="/home/ubuntu/app"
WAR_FILE="workflowmicropop.war"
PWD_FILE="/tmp/.asadmin_pass"

echo "=== DEBUT DU DEPLOIEMENT : $LIFECYCLE_EVENT ==="
echo "AS_ADMIN_PASSWORD=micropop" > $PWD_FILE

if [ "$LIFECYCLE_EVENT" == "ApplicationStop" ]; then
    echo "Undeploy de l'ancienne version..."
    $ASADMIN --user admin --passwordfile $PWD_FILE undeploy workflowmicropop || true

elif [ "$LIFECYCLE_EVENT" == "AfterInstall" ]; then
    echo "Attente de Payara..."
    # Attendre que le port 4848 soit ouvert (timeout 60s)
    for i in {1..12}; do
        if nc -z localhost 4848; then
            echo "Payara OK !"
            break
        fi
        echo "Attente..."
        sleep 5
    done

    echo "Déploiement du WAR..."
    $ASADMIN --user admin --passwordfile $PWD_FILE deploy \
      --force \
      --contextroot /workflowmicropop \
      $APP_DIR/$WAR_FILE
fi

rm -f $PWD_FILE
echo "=== FIN DU DEPLOIEMENT ==="