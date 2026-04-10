#!/bin/bash
# On enregistre tout dans le log pour que tu puisses le lire avec 'cat'
exec > >(tee -a /home/ubuntu/deploy_script.log) 2>&1

# --- CONFIGURATION ---
# VERIFIE BIEN CE CHEMIN SUR TON EC2 (tape 'which asadmin' pour être sûr)
ASADMIN="/opt/payara/bin/asadmin"
APP_DIR="/home/ubuntu/app/deploydoc"
WAR_FILE="workflowmicropop.war"
PWD_FILE="/tmp/.asadmin_pass"

echo "=== DEBUT DU SCRIPT : $LIFECYCLE_EVENT [$(date)] ==="

# Création du fichier de mot de passe
echo "AS_ADMIN_PASSWORD=micropop" > $PWD_FILE

if [ "$LIFECYCLE_EVENT" == "ApplicationStop" ]; then
    echo "Étape : Arrêt de l'ancienne version..."
    # On ajoute '|| true' pour que le script ne s'arrête pas si l'app n'existe pas encore
    $ASADMIN --user admin --passwordfile $PWD_FILE undeploy workflowmicropop || true

elif [ "$LIFECYCLE_EVENT" == "AfterInstall" ]; then
    echo "Étape : Déploiement du nouveau WAR..."
    
    # Attente que Payara soit prêt
    echo "Vérification du port 4848..."
    for i in {1..20}; do
        if nc -z localhost 4848; then
            echo "Payara est prêt !"
            break
        fi
        echo "Attente de Payara (5s)..."
        sleep 5
    done

    # Lancement du déploiement
    $ASADMIN --user admin --passwordfile $PWD_FILE deploy \
      --force \
      --contextroot /workflowmicropop \
      $APP_DIR/$WAR_FILE

    if [ $? -eq 0 ]; then
        echo "RESULTAT : Déploiement réussi !"
    else
        echo "RESULTAT : Échec du déploiement !"
        exit 1
    fi
fi

# Nettoyage
rm -f $PWD_FILE
echo "=== FIN DU SCRIPT [$(date)] ==="