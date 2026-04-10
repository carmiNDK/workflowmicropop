#!/bin/bash
# Redirection des sorties vers le log de debug sur l'EC2
exec > >(tee -a /home/ubuntu/deploy_script.log) 2>&1

ASADMIN="/opt/payara/bin/asadmin"
APP_DIR="/home/ubuntu/app"
WAR_FILE="workflowmicropop.war"
PWD_FILE="/tmp/.asadmin_pass"

echo "=== DEPLOYMENT EVENT: $LIFECYCLE_EVENT [$(date)] ==="

# Préparation du mot de passe Payara
echo "AS_ADMIN_PASSWORD=micropop" > $PWD_FILE

if [ "$LIFECYCLE_EVENT" == "ApplicationStop" ]; then
    echo "Désinstallation de la version précédente..."
    $ASADMIN --user admin --passwordfile $PWD_FILE undeploy workflowmicropop || echo "Aucune application à arrêter."

elif [ "$LIFECYCLE_EVENT" == "AfterInstall" ]; then
    echo "Vérification de la disponibilité de Payara..."
    # Attente active du port d'administration
    for i in {1..12}; do
        if nc -z localhost 4848; then
            echo "Payara est prêt !"
            break
        fi
        echo "Attente de Payara (5s)..."
        sleep 5
    done

    echo "Déploiement du nouveau fichier WAR..."
    $ASADMIN --user admin --passwordfile $PWD_FILE deploy \
      --force \
      --contextroot /workflowmicropop \
      $APP_DIR/$WAR_FILE
fi

# Nettoyage du fichier temporaire
rm -f $PWD_FILE
echo "=== FIN DU SCRIPT ==="