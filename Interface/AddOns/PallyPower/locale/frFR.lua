﻿local L = AceLibrary("AceLocale-2.2"):new("PallyPower")

L:RegisterTranslations("frFR", function() return 
{
	AURAS = "Auras",
	AURAS_DESC = "Surveillance des auras activé/désactivé",
	AUTOASSIGN = "Assignement automatique",
	AUTOBTN = "Afficher le bouton auto",
	AUTOBTN_DESC = "Afficher/Masquer le bouton de buff auto",
	AUTOBUFF = "Buff auto",
	AUTOBUFF_DESC = "Options de buff auto",
	AUTOKEY1 = "Touche auto pour bénédictions normales",
	AUTOKEY1_DESC = "Raccourci pour l'automatisation des buffs de bénédictions normales",
	AUTOKEY2 = "Touche auto pour bénédictions supérieures",
	AUTOKEY2_DESC = "Raccourci pour l'automatisation des buffs de bénédictions supérieures",
	BAS = "Assignation des bénédictions",
	BAS_DESC = "Afficher le panneau d'assignation des bénédictions",
	BRPT = "Rapport des assignations",
	BRPT_DESC = "Annoncer les assignations des bénédictions sur le canal groupe/raid",
	BSC = "Echelle des bénédictions",
	BSC_DESC = "Définir l'échelle du panneau des bénédictions",
	CSC = "Configurer l'échelle",
	CSC_DESC = "Définir l'échelle de la fenêtre d'assignation",
	DISABLED = "Désactivé",
	DISP = "Icônes de buff",
	DISPCL = "Icônes de classe",
	DISPCL_DESC = "Orientation des boutons de classe",
	DISPCOL = "Colonnes",
	DISPCOL_DESC = "Définir le nombre de colonnes",
	DISP_DESC = "Réglages du panneau des bénédictions",
	DISPEDGES = "Display Button Edges", -- Requires localization
	DISPEDGES_DESC = "Display Edges for Player Buttons", -- Requires localization
	DISPGAP = "Espacement",
	DISPGAP_DESC = "Espacement des icônes",
	DISPPL = "Icône de joueur",
	DISPPL_DESC = "Orientation des icônes de joueur",
	DISPROWS = "Lignes",
	DISPROWS_DESC = "Définir le nombre de lignes",
	DRAGHANDLE = [=[Clic-Gauche pour déplacer la barre de buffs
Clic-Gauche pour bloquer/débloquer la barre de buffs 
Clic-Droit pour afficher la fenêtre de buffs]=],
	ENABLED = "Activé",
	FREEASSIGN = "Assignement libre",
	FREEASSIGN_DESC = "Autoriser les autres à changer vos bénédictions sans être leader/assistant",
	GREATER = "Bénédictions supérieures",
	GREATER_DESC = "Activer/Désactiver les bénédictions supérieures",
	HIDECB = "Cacher automatiquement les icônes de classe",
	HIDECB_DESC = "Masquer automatiquement les boutons de classe",
	HIDEDH = "Masquer l'ancre",
	HIDEDH_DESC = "Afficher/Masquer l'ancre",
	HIDEPB = "Masquer l'icône de joueur",
	HIDEPB_DESC = "Afficher/Masquer l'icône de joueur",
	IGNOREEXTRA = "Ignore groups 6-8", -- Requires localization
	IGNOREEXTRADESC = "Ignore people on stand-by placed in groups 6 to 8", -- Requires localization
	LAYOUT = "Layout", -- Requires localization
	LAYOUT_DESC = "Custom Layout", -- Requires localization
	PP_CLEAR = "Nettoyer",
	PP_OPTIONS = "Options",
	PP_RAS1 = "--- Assignations des bénédictions du Paladin ---",
	PP_RAS2 = "--- Fin des assignations ---",
	PP_REFRESH = "Rafraîchir",
	RESET = "Réinitialiser les fenêtres",
	RESET_DESC = "Réinitialiser au centre toutes les fenêtres de PallyPower",
	RFBUFF = "Fureur vertueuse / Sceaux",
	RFBUFF_DESC = "Surveillance de Fureur vertueuse activée/désactivée",
	RFUSE = "Righteous Fury", -- Requires localization
	RFUSE_DESC = "Righteous Fury on/off", -- Requires localization
	SBUFF = "Bénédictions intelligentes",
	SBUFF_DESC = "Ignorer les bénédictions inutiles pour certaines classes",
	SEAL = "Seal", -- Requires localization
	SEAL_DESC = "Seal", -- Requires localization
	SHOWPARTY = "Afficher en groupe",
	SHOWPARTY_DESC = "Afficher/Masquer la barre de buff en groupe",
	SHOWSINGLE = "Afficher quand vous êtes seul",
	SHOWSINGLE_DESC = "Afficher/Masquer la barre de buff quand vous êtes seul",
	SKIN = "Apparence",
	SKIN_DESC = "Appliquer un arrière-plan personnalisé aux boutons de buff",
	WAIT = "Attendre que tout le monde soit là",
	WAIT_DESC = "Attendre que tout le monde soit à portée et connecté pour buffer la classe",
}
 
end)