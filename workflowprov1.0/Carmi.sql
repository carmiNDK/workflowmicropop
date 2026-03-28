SCRIPT QUI AFFICHE LE PAR DES AGENTS :
SELECT 
    ROUND( (t2.encours_total / t1.encours) * 100 , 2 ) AS pourcentage
FROM 
    (
        -- Script 1
        SELECT SUM(e.solde_cap) AS encours
        FROM ad_etr e
        JOIN ad_dcr dc ON dc.id_doss = e.id_doss
        WHERE dc.id_agent_gest = 201
          AND dc.cre_date_debloc BETWEEN '2000-01-01' AND '2025-11-29'
          AND dc.etat in (5,7)
    ) t1,
    (
        -- Script 2
        SELECT SUM(e.solde_cap) AS encours_total
        FROM ad_etr e
        JOIN ad_dcr dc ON dc.id_doss = e.id_doss
        JOIN adsys_etat_credits ds ON ds.id = dc.cre_etat
        WHERE dc.id_agent_gest = 201
          AND dc.cre_date_debloc BETWEEN '2000-01-01' AND '2025-11-29'
          AND dc.etat in (5,7)
          AND ds.id IN (2,3,4,5,6,7)
    ) t2;
------------------------------------------------------------------------------------------------
SCRIPT QUI AFFICHE L'ENCOURS DE PORTEFEUIL DE L'AGENT :
SELECT SUM(e.solde_cap) AS encours
        FROM ad_etr e
        JOIN ad_dcr dc ON dc.id_doss = e.id_doss
        WHERE dc.id_agent_gest = 201
          AND dc.cre_date_debloc BETWEEN '2000-01-01' AND '2025-11-29'
          AND dc.etat IN (5,7)
---------------------------------------------------------------------------------------------------
SCRIPT QUI AFFICHE LE NOMBRE DES CLIENTS DU PORTEFEUILLE DUN AGENT :
SELECT COUNT (id_doss) FROM ad_dcr 
WHERE id_agent_gest =201 
AND etat in (5,7);
---------------------------------------------------------------------------------------------------
SCRIPT QUI RENVOIE UN MEMBRE QUI FAIT PARTI DEJA DU GROUPE EXISTANT :
SELECT id_grp_sol FROM ad_grp_sol WHERE id_membre =105504;
-------------------------------------------------------------------------------------------------
SCRIPT QUI VERIFIE SI LE GROUPE A UN PRET EN COURS
SELECT id_dcr_grp_sol FROM ad_dcr WHERE id_client =105300 AND etat=5;


SCRIPT QUI AFFICHE LE PAR DES Agences (Tous MICROPOP SA) :
SELECT 
    ROUND( (t2.encours_total / t1.encours) * 100 , 2 ) AS pourcentage
FROM 
    (
        -- Script 1
        SELECT SUM(e.solde_cap) AS encours
        FROM ad_etr e
        JOIN ad_dcr dc ON dc.id_doss = e.id_doss
        WHERE dc.id_agent_gest = 201
          AND dc.cre_date_debloc BETWEEN '2000-01-01' AND '2025-11-29'
          AND dc.etat in (5,7)
    ) t1,
    (
        -- Script 2
        SELECT SUM(e.solde_cap) AS encours_total
        FROM ad_etr e
        JOIN ad_dcr dc ON dc.id_doss = e.id_doss
        JOIN adsys_etat_credits ds ON ds.id = dc.cre_etat
        WHERE dc.cre_date_debloc BETWEEN '2000-01-01' AND '2025-11-29'
          AND dc.etat in (5,7)
          AND ds.id IN (2,3,4,5,6,7)
    ) t2;






