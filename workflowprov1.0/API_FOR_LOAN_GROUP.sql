SELECT * FROM adsys_produit_credit  WHERE id = 3 AND id_ag=1 ORDER BY id--verification produit de credit
-----------------Script Insertion 1ere client du groupe dans la table dossier de crédit--------
INSERT INTO ad_dcr (id_dcr_grp_sol, id_prod, is_extended, differe_jours, differe_ech, 
date_dem, cre_date_debloc, etat, id_agent_gest, duree_mois, delai_grac, nb_jr_bloq_cre_avant_ech, 
prelev_commission, assurances_cre, gar_num, gar_num_encours, gar_mat, gar_tot, terme, id_client, cpt_liaison, 
cpt_remb, mnt_dem, id_bailleur, obj_dem, detail_obj_dem, detail_obj_dem_2, prelev_auto, mnt_frais_doss, mnt_assurance, 
cre_nbre_reech, num_cre, suspension_pen, gs_cat, cpt_prelev_frais, id_ag) 
VALUES ('7116', '3', 'f', NULL, NULL, '15/07/2025', NULL, '1', '80', '24', NULL, NULL, 'f', 't', 
'30', '0', '0', '30', '2', '122331', '198357', NULL, '150', NULL, '1', 'achat', '0', '1', '1.5', '4', 
'0', '4', 'f', '2', '198357', '1');---------
-----------Inserion des garanties dans la table ad_gar---------------
SELECT max(id_doss) from ad_dcr where id_ag=1 ;
INSERT INTO ad_gar (id_doss, type_gar, gar_mat_id_bien, gar_num_id_cpte_prelev, gar_num_id_cpte_nantie, 
etat_gar, montant_vente, devise_vente, id_ag) 
VALUES ('85194', '1', NULL, '198357', NULL, '2', '30', 'USD', '1');
---------------------------Insertion de l'historique du client------------------
SELECT nextval('ad_his_id_his_seq')
INSERT INTO ad_his(id_his,id_ag, type_fonction, infos, id_client, login, date, id_his_ext) 
VALUES(4468339,1, 105, '3', 122331, 'jonathank', 'Tue, 15 Jul 2025 17:54:45 +0100', NULL)

--------------Insertion pour le clients suivants--------------------------------------
/*avant faudra d'abord recuperer le dernier id dans ad_dcr_grp_sol*/
SELECT nextval('ad_dcr_grp_sol_id_seq')----valeur id_dcr_grp_sol
INSERT INTO ad_dcr (id_dcr_grp_sol, id_prod, is_extended, differe_jours, differe_ech, date_dem, cre_date_debloc, etat, 
id_agent_gest, duree_mois, delai_grac, nb_jr_bloq_cre_avant_ech, prelev_commission, assurances_cre, 
gar_num, gar_num_encours, gar_mat, gar_tot, terme, id_client, cpt_liaison, cpt_remb, mnt_dem, id_bailleur, 
obj_dem, detail_obj_dem, detail_obj_dem_2, prelev_auto, mnt_frais_doss, mnt_assurance, cre_nbre_reech, num_cre, 
suspension_pen, gs_cat, cpt_prelev_frais, id_ag) 
VALUES ('7116', '3', 'f', NULL, NULL, '15/07/2025', NULL, '1', '80', '24', NULL, NULL, 
'f', 't', '40', '0', '0', '40', '2', '116377', '129052', NULL, '200', NULL, '1', 'vente', '0', '1', '1.5', 
'4', '0', '6', 'f', '2', '129052', '1');
SELECT max(id_doss) from ad_dcr where id_ag=1 ;
---Insertion de garantie----------------------
INSERT INTO ad_gar (id_doss, type_gar, gar_mat_id_bien, gar_num_id_cpte_prelev, gar_num_id_cpte_nantie, 
etat_gar, montant_vente, devise_vente, id_ag) 
VALUES ('85195', '1', NULL, '129052', NULL, '2', '40', 'USD', '1');
SELECT nextval('ad_his_id_his_seq')
INSERT INTO ad_his(id_his,id_ag, type_fonction, infos, id_client, login, date, id_his_ext) 
VALUES(4468340,1, 105, '3', 116377, 'jonathank', 'Tue, 15 Jul 2025 17:54:45 +0100', NULL)
-------------Insertion de membre dans ad_dcr_grp_sol---------
INSERT INTO ad_dcr_grp_sol (gs_cat, id_membre, mnt_dem, id_bailleur, obj_dem, 
detail_obj_dem, detail_obj_dem_2, id, id_ag) 
VALUES ('2', '111639', '350', NULL, NULL, NULL, NULL, '7116', '1');/*id_membre ça recupère le numéro du groupe solidaire 
ainsi que le montant demandé c'est le montant total de tous le clients




