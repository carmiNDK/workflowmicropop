#!/bin/bash
# Redirection vers le log
exec > >(tee -a /home/ubuntu/deploy_script.log) 2>&1

ASADMIN="/opt/payara/bin/asadmin"
APP_DIR="/home/ubuntu/app"
WAR_FILE="workflowmicropop.war"
PWD_FILE="/tmp/.asadmin_pass"

echo "=== DEPLOY EVENT: $LIFECYCLE_EVENT [$(date)] ==="
echo "AS_ADMIN_PASSWORD=micropop" > $PWD_FILE

if [ "$LIFECYCLE_EVENT" == "ApplicationStop" ]; then
    $ASADMIN --user admin --passwordfile $PWD_FILE undeploy workflowmicropop || echo "Pas d'app à stopper."

elif [ "$LIFECYCLE_EVENT" == "AfterInstall" ]; then
    echo "Vérification de Payara..."
    for i in {1..10}; do
        if nc -z localhost 4848; then
            echo "Payara est prêt !"
            break
        fi
        sleep 5
    done

    echo "Déploiement de $WAR_FILE..."
    $ASADMIN --user admin --passwordfile $PWD_FILE deploy \
      --force \
      --contextroot /workflowmicropop \
      $APP_DIR/$WAR_FILE
fi

rm -f $PWD_FILE