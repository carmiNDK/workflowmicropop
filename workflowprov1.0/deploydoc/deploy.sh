#!/bin/bash
# Redirection vers le log pour le debug
exec > >(tee -a /home/ubuntu/deploy_script.log) 2>&1

# --- CONFIGURATION ---
ASADMIN="/opt/payara/bin/asadmin"
APP_DIR="/home/ubuntu/app"
WAR_FILE="workflowmicropop.war"
PWD_FILE="/tmp/.asadmin_pass"

echo "=== DEBUT DU SCRIPT : $LIFECYCLE_EVENT [$(date)] ==="

# Création du fichier de mot de passe
echo "AS_ADMIN_PASSWORD=micropop" > $PWD_FILE

if [ "$LIFECYCLE_EVENT" == "ApplicationStop" ]; then
    echo "Étape : Désinstallation de l'ancienne version..."
    $ASADMIN --user admin --passwordfile $PWD_FILE undeploy workflowmicropop || echo "Aucune app à retirer."

elif [ "$LIFECYCLE_EVENT" == "AfterInstall" ]; then
    echo "Étape : Déploiement du nouveau WAR..."
    
    # Attente que Payara soit prêt
    echo "Vérification du port 4848..."
    for i in {1..20}; do
        if nc -z localhost 4848; then
            echo "Payara est prêt sur le port 4848."
            break
        fi
        echo "Attente de Payara (5s)..."
        sleep 5
    done

    # Lancement du déploiement (le WAR est directement dans APP_DIR)
    $ASADMIN --user admin --passwordfile $PWD_FILE deploy \
      --force \
      --contextroot /workflowmicropop \
      $APP_DIR/$WAR_FILE

    if [ $? -eq 0 ]; then
        echo "RESULTAT : Déploiement réussi avec succès !"
    else
        echo "RESULTAT : Échec du déploiement de Payara."
        exit 1
    fi
fi

# Nettoyage
rm -f $PWD_FILE
echo "=== FIN DU SCRIPT [$(date)] ==="