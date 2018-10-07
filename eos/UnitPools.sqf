private ["_tempArray","_InfPool","_MotPool","_ACHPool","_CHPool","_uavPool","_stPool","_shipPool","_diverPool","_crewPool","_heliCrew","_ArmPool"];
_faction=(_this select 0);
_type=(_this select 1);
_tempArray=[];

// EAST CSAT FACTION
	if (_faction==0) then {
	_InfPool=	["O_SoldierU_SL_F","O_soldierU_repair_F","O_soldierU_medic_F","O_sniper_F","O_Soldier_A_F","O_Soldier_AA_F","O_Soldier_AAA_F","O_Soldier_AAR_F","O_Soldier_AAT_F","O_Soldier_AR_F","O_Soldier_AT_F","O_soldier_exp_F","O_Soldier_F","O_engineer_F","O_engineer_U_F","O_medic_F","O_recon_exp_F","O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_medic_F","O_recon_TL_F"];
	_ArmPool=	["O_APC_Tracked_02_AA_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_arty_F","O_MBT_02_cannon_F"];
	_MotPool=	["O_Truck_02_covered_F","O_Truck_02_transport_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_Truck_02_medical_F"];
	_ACHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F"];
	_CHPool=	["O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];
	_uavPool=	["O_UAV_01_F","O_UAV_02_CAS_F","O_UGV_01_rcws_F"];
	_stPool=	["O_Mortar_01_F","O_static_AT_F","O_static_AA_F"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["O_crew_F"];
	_heliCrew=	["O_helicrew_F","O_helipilot_F"];
};
// WEST NATO FACTION
	if (_faction==1) then {
	_InfPool=	["B_sniper_F","B_Soldier_A_F","B_Soldier_AA_F","B_Soldier_AAA_F","B_Soldier_AAR_F","B_Soldier_AAT_F","B_Soldier_AR_F","B_Soldier_AT_F","B_soldier_exp_F","B_Soldier_F","B_engineer_F","B_medic_F","B_recon_exp_F","B_recon_F","B_recon_JTAC_F","B_recon_LAT_F","B_recon_M_F","B_recon_medic_F","B_recon_TL_F"];
	_ArmPool=	["B_MBT_01_arty_F","B_MBT_01_cannon_F","B_MBT_01_mlrs_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_CRV_F","B_APC_Tracked_01_rcws_F","B_APC_Wheeled_01_cannon_F","B_MBT_02_cannon_F"];
	_MotPool=	["B_Truck_01_covered_F","B_Truck_01_transport_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_Truck_01_medical_F"];
	_ACHPool=	["B_Heli_Attack_01_F","B_Heli_Light_01_armed_F"];
	_CHPool=	["B_Heli_Light_01_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"];
	_uavPool=	["B_UAV_01_F","B_UAV_01_CAS_F","B_UGV_01_rcws_F"];
	_stPool=	["B_Mortar_01_F","B_static_AT_F","B_static_AA_F"];
	_shipPool=	["B_Boat_Armed_01_minigun_F","B_Boat_Transport_01_F"];
	_diverPool=	["B_diver_exp_F","B_diver_F","B_diver_TL_F"];
	_crewPool=	["B_crew_F"];
	_heliCrew=	["B_helicrew_F","B_helipilot_F"];
};
// INDEPENDENT AAF FACTION
	if (_faction==2) then {
	_InfPool=	["I_engineer_F","I_Soldier_A_F","I_Soldier_AA_F","I_Soldier_AAA_F","I_Soldier_AAR_F","I_Soldier_AAT_F","I_Soldier_AR_F","I_Soldier_AT_F","I_Soldier_exp_F","I_soldier_F","I_Soldier_GL_F","I_Soldier_repair_F"];
	_ArmPool=	["I_APC_Wheeled_03_cannon_F"];
	_MotPool=	["I_MRAP_03_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F","I_Truck_02_medical_F"];
	_ACHPool=	[];
	_CHPool=	["I_Heli_Transport_02_F","B_Heli_Light_02_unarmed_F"];
	_uavPool=	["I_UAV_01_F","I_UAV_02_CAS_F","I_UGV_01_rcws_F"];
	_stPool=	["I_Mortar_01_F"];
	_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
	_crewPool=	["I_crew_F"];
	_heliCrew=	["I_helicrew_F","I_helipilot_F"];
};
// CIVILIAN
	if (_faction==3) then {
	_InfPool=	["C_man_1","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_hunter_1_F","C_man_p_beggar_F","C_man_p_beggar_F_afro","C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_pilot_F","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F","C_man_w_worker_F"];
	_ArmPool=	["C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Quadbike_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F"];
	_MotPool=	["C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Quadbike_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	[];
	_shipPool=	["C_Boat_Civil_01_F","C_Boat_Civil_01_rescue_F","C_Boat_Civil_04_F","C_Rubberboat"];
	_diverPool=	[];
	_crewPool=	["C_man_1"];
	_heliCrew=	["C_man_1","C_man_1"];
};
// WEST FIA FACTION
	if (_faction==4) then {
	_InfPool=	["B_G_engineer_F","B_G_medic_F","B_G_officer_F","B_G_Soldier_A_F","B_G_Soldier_AR_F","B_G_Soldier_exp_F","B_G_Soldier_F","B_G_Soldier_GL_F","B_G_Soldier_LAT_F","B_G_Soldier_lite_F","B_G_Soldier_M_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"];
	_ArmPool=	[];
	_MotPool=	["B_G_Offroad_01_F","B_G_Offroad_01_armed_F","B_G_Van_01_transport_F","B_G_Van_01_fuel_F"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	["B_G_Mortar_01_F"];
	_shipPool=	["B_G_Boat_Transport_01_F"];
	_diverPool=	[];
	_crewPool=	[];
	_heliCrew=	[];
};
// RHS - Armed Forces of the Russian Federation MSV
	if (_faction==5) then {
	_InfPool=	["rhs_msv_driver_armored","rhs_msv_rifleman","rhs_msv_efreitor","rhs_msv_grenadier","rhs_msv_machinegunner","rhs_msv_machinegunner_assistant","rhs_msv_at","rhs_msv_strelok_rpg_assist","rhs_msv_marksman","rhs_msv_officer_armored","rhs_msv_junior_sergeant","rhs_msv_sergeant","rhs_msv_engineer","rhs_msv_driver","rhs_msv_aa","rhs_msv_medic","rhs_msv_LAT"];//"rhs_msv_officer",
	_ArmPool=	["rhs_bmp1_msv","rhs_bmp1d_msv","rhs_bmp1k_msv","rhs_bmp1p_msv","rhs_bmp2e_msv","rhs_bmp2_msv","rhs_bmp2d_msv","rhs_bmp2k_msv","rhs_bmp3_msv","rhs_bmp3_late_msv","rhs_bmp3m_msv","rhs_bmp3mera_msv","rhs_brm1k_msv","rhs_Ob_681_2","rhs_prp3_msv","rhs_t80u","rhs_t80bv","rhs_t80a","rhs_t72bc_tv","rhs_t72bb_tv","rhs_zsu234_aa","rhs_t90_tv","rhs_t90a_tv"];
	_MotPool=	["rhs_btr60_msv","rhs_btr70_msv","rhs_btr80_msv","rhs_btr80a_msv","rhs_tigr_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_m_3camo_msv","rhs_gaz66_zu23_msv","RHS_Ural_Zu23_MSV_01","RHS_Ural_Open_MSV_01"];
	_ACHPool=	["RHS_Mi24P_vvsc","RHS_Mi24V_vvsc"];
	_CHPool=	["Cha_Mi24_P","Cha_Mi24_V","O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];
	_uavPool=	["rhs_pchela1t_vvs"];
	_stPool=	["RHS_ZU23_MSV","rhs_KORD_high_MSV","rhs_2b14_82mm_msv","rhs_Igla_AA_pod_msv","RHS_AGS30_TriPod_MSV","rhs_KORD_MSV","RHS_NSV_TriPod_MSV","rhs_SPG9M_MSV","rhs_D30_msv","rhs_D30_at_msv","rhs_Kornet_9M133_2_msv"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["rhs_msv_crew_commander","rhs_msv_combatcrew","rhs_msv_armoredcrew","rhs_msv_crew"];
	_heliCrew=	["rhs_msv_grenadier","rhs_msv_machinegunner","rhs_msv_at","rhs_msv_rifleman","rhs_msv_engineer","rhs_msv_aa","rhs_msv_medic","rhs_msv_LAT","rhs_msv_marksman"];

	};

// RHS - DESERT Armed Forces of the Russian Federation VDV
	if (_faction==6) then {
	_InfPool=	["rhs_vdv_des_aa","rhs_vdv_des_at","rhs_vdv_des_arifleman","rhs_vdv_des_sergeant","rhs_vdv_des_efreitor","rhs_vdv_des_grenadier_rpg","rhs_vdv_des_strelok_rpg_assist","rhs_vdv_des_junior_sergeant","rhs_vdv_des_machinegunner","rhs_vdv_des_machinegunner_assistant","rhs_vdv_des_marksman","rhs_vdv_des_marksman_asval","rhs_vdv_des_rifleman","rhs_vdv_des_rifleman_asval","rhs_vdv_des_rifleman_lite","rhs_vdv_des_grenadier"];
	_ArmPool=	["rhs_bmp1_msv","rhs_bmp1d_msv","rhs_bmp1k_msv","rhs_bmp1p_msv","rhs_bmp2e_msv","rhs_bmp2_msv","rhs_bmp2d_msv","rhs_bmp2k_msv","rhs_bmp3_msv","rhs_bmp3_late_msv","rhs_bmp3m_msv","rhs_bmp3mera_msv","rhs_brm1k_msv","rhs_Ob_681_2","rhs_prp3_msv","rhs_t80u","rhs_t80bv","rhs_t80a","rhs_t72bc_tv","rhs_t72bb_tv","rhs_zsu234_aa","rhs_t90_tv","rhs_t90a_tv"];
	_MotPool=	["rhs_btr60_msv","rhs_btr70_msv","rhs_btr80_msv","rhs_btr80a_msv","rhs_tigr_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_m_3camo_msv","rhs_gaz66_zu23_msv","RHS_Ural_Zu23_MSV_01","RHS_Ural_Open_MSV_01"];
	_ACHPool=	["RHS_Mi24P_vvsc","RHS_Mi24V_vvsc"];
	_CHPool=	["Cha_Mi24_P","Cha_Mi24_V","O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];
	_uavPool=	["rhs_pchela1t_vvs"];
	_stPool=	["RHS_ZU23_MSV","rhs_KORD_high_MSV","rhs_2b14_82mm_msv","rhs_Igla_AA_pod_msv","RHS_AGS30_TriPod_MSV","rhs_KORD_MSV","RHS_NSV_TriPod_MSV","rhs_SPG9M_MSV","rhs_D30_msv","rhs_D30_at_msv","rhs_Kornet_9M133_2_msv"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["rhs_vdv_des_crew_commander","rhs_vdv_des_combatcrew","rhs_vdv_des_armoredcrew"];
	_heliCrew=	["rhs_msv_grenadier","rhs_msv_machinegunner","rhs_msv_at","rhs_msv_rifleman","rhs_msv_engineer","rhs_msv_aa","rhs_msv_medic","rhs_msv_LAT","rhs_msv_marksman"];
};

// RHS GREF - Chenarus Ground Forces (RESISTANCE)
	if (_faction==7) then {
	_InfPool=["rhsgref_cdf_reg_rifleman","rhsgref_cdf_reg_rifleman_m70","rhsgref_cdf_reg_rifleman_lite","rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_marksman","rhsgref_cdf_reg_officer","rhsgref_cdf_reg_squadleader","rhsgref_cdf_reg_grenadier_rpg","rhsgref_cdf_reg_specialist_aa","rhsgref_cdf_reg_medic","rhsgref_cdf_reg_engineer","rhsgref_cdf_para_rifleman","rhsgref_cdf_para_rifleman_lite","rhsgref_cdf_para_autorifleman","rhsgref_cdf_para_machinegunner","rhsgref_cdf_para_marksman","rhsgref_cdf_para_squadleader","rhsgref_cdf_para_grenadier_rpg","rhsgref_cdf_para_specialist_aa","rhsgref_cdf_para_medic","rhsgref_cdf_para_engineer"];//"rhsgref_cdf_reg_general","rhsgref_cdf_para_officer"
	_ArmPool=	["rhsgref_cdf_t72ba_tv","rhsgref_cdf_bmd1","rhsgref_cdf_bmd1","rhsgref_cdf_bmd1p","rhsgref_cdf_bmd1pk","rhsgref_cdf_bmd2","rhsgref_cdf_bmd2k","rhsgref_cdf_bmp1","rhsgref_cdf_bmp1d","rhsgref_cdf_bmp1k","rhsgref_cdf_bmp1p","rhsgref_cdf_bmp2e","rhsgref_cdf_bmp2","rhsgref_cdf_bmp2d","rhsgref_cdf_gaz66_zu23"];
	_MotPool=	["rhsgref_cdf_btr60","rhsgref_cdf_btr70","rhsgref_BRDM2","rhsgref_BRDM2_HQ","rhsgref_BRDM2_ATGM","rhsgref_c_a2port_armor","rhsgref_cdf_reg_uaz_ags","rhsgref_cdf_reg_uaz_dshkm","rhsgref_cdf_reg_uaz_spg9"];
	_ACHPool=	["rhsgref_mi24g_UPK23","rhsgref_cdf_Mi35","rhsgref_cdf_reg_Mi17Sh"];
	_CHPool=	["rhsgref_cdf_reg_Mi8amt"];
	_uavPool=	[];
	_stPool=	["RHSgref_cdf_ZU23","rhsgref_cdf_reg_M252","rhsgref_cdf_reg_d30","rhsgref_cdf_reg_d30_at","rhsgref_cdf_Igla_AA_pod","rhsgref_cdf_AGS30_TriPod","rhsgref_cdf_DSHKM","rhsgref_cdf_DSHKM_Mini_TriPod","rhsgref_cdf_NSV_TriPod","rhsgref_cdf_SPG9","rhsgref_cdf_SPG9M"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["rhsgref_cdf_reg_crew","rhsgref_cdf_para_crew"];
	_heliCrew=	["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_grenadier_rpg","rhsgref_cdf_reg_machinegunner","rhs_msv_at","rhsgref_cdf_reg_rifleman","rhsgref_cdf_para_engineer","rhsgref_cdf_para_specialist_aa","rhsgref_cdf_para_medic","rhsgref_cdf_para_grenadier_rpg","rhsgref_cdf_reg_marksman"];
};

	// RHS GREF - Nationalist Troops (RESISTANCE)
	if (_faction==8) then {
	_InfPool=	["rhsgref_nat_rifleman","rhsgref_nat_rifleman_akms","rhsgref_nat_militiaman_kar98k","rhsgref_nat_rifleman_m92","rhsgref_nat_grenadier","rhsgref_nat_warlord","rhsgref_nat_commander","rhsgref_nat_machinegunner","rhsgref_nat_grenadier_rpg","rhsgref_nat_specialist_aa","rhsgref_nat_hunter","rhsgref_nat_scout","rhsgref_nat_saboteur","rhsgref_nat_medic"];
	_ArmPool=	["rhs_bmd1_chdkz","rhs_bmd2_chdkz"];
	_MotPool=	["rhsgref_nat_btr70","rhsgref_nat_uaz_ags","rhsgref_nat_uaz_dshkm","rhsgref_nat_uaz_spg9","rhsgref_nat_ural_Zu23"];
	_ACHPool=	["rhsgref_mi24g_UPK23","rhsgref_cdf_Mi35","rhsgref_cdf_reg_Mi17Sh"];
	_CHPool=	["rhsgref_cdf_reg_Mi8amt"];
	_uavPool=	[];
	_stPool=	["rhsgref_nat_ZU23","rhsgref_nat_AGS30_TriPod","rhsgref_nat_DSHKM","rhsgref_nat_DSHKM_Mini_TriPod","rhsgref_nat_NSV_TriPod","rhsgref_nat_SPG9","rhsgref_nat_2b14","rhsgref_nat_d30","rhsgref_nat_d30_at"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["rhsgref_nat_crew"];
	_heliCrew=	["rhsgref_nat_grenadier","rhsgref_nat_grenadier_rpg","rhsgref_nat_machinegunner","rhsgref_nat_hunter","rhsgref_nat_saboteur","rhsgref_nat_medic","rhsgref_nat_rifleman_akms"];

};


// RHS Serbian Armed Forces (RESISTANCE)
if (_faction==9) then {
	_InfPool= ["rhssaf_army_m10_digital_asst_mgun","rhssaf_army_m10_digital_spec_aa","rhssaf_army_m10_digital_spec_at","rhssaf_army_m10_digital_crew","rhssaf_army_m10_digital_exp","rhssaf_army_m10_digital_ft_lead","rhssaf_army_m10_digital_gl","rhssaf_army_m10_digital_mgun_m84","rhssaf_army_m10_digital_sniper_m76","rhssaf_army_m10_digital_asst_spec_aa","rhssaf_army_m10_digital_asst_spec_at","rhssaf_army_m10_digital_officer","rhssaf_army_m10_digital_repair","rhssaf_army_m10_digital_rifleman_ammo","rhssaf_army_m10_digital_rifleman_at","rhssaf_army_m10_digital_rifleman_m21","rhssaf_army_m10_digital_rifleman_m70","rhssaf_army_m10_digital_spotter","rhssaf_army_m10_digital_sq_lead","rhssaf_army_m10_para_asst_mgun","rhssaf_army_m10_para_spec_aa","rhssaf_army_m10_para_spec_at","rhssaf_army_m10_para_crew","rhssaf_army_m10_para_ft_lead","rhssaf_army_m10_para_gl_ag36","rhssaf_army_m10_para_gl_m320","rhssaf_army_m10_para_mgun_m84","rhssaf_army_m10_para_mgun_minimi","rhssaf_army_m10_para_sniper_m76","rhssaf_army_m10_para_asst_spec_aa","rhssaf_army_m10_para_asst_spec_at","rhssaf_army_m10_para_repair","rhssaf_army_m10_para_rifleman_ammo","rhssaf_army_m10_para_rifleman_at","rhssaf_army_m10_para_rifleman_hk416","rhssaf_army_m10_para_rifleman_g36","rhssaf_army_m10_para_sniper_m82a1","rhssaf_army_m10_para_spotter","rhssaf_army_m10_para_sq_lead"];//"rhssaf_army_m10_para_officer",
	_ArmPool=	["rhssaf_army_t72s","rhsgref_cdf_t72ba_tv","rhsgref_cdf_bmd1","rhsgref_cdf_bmd1","rhsgref_cdf_bmd1p","rhsgref_cdf_bmd1pk","rhsgref_cdf_bmd2","rhsgref_cdf_bmd2k","rhsgref_cdf_bmp1","rhsgref_cdf_bmp1d","rhsgref_cdf_bmp1k","rhsgref_cdf_bmp1p","rhsgref_cdf_bmp2e","rhsgref_cdf_bmp2","rhsgref_cdf_bmp2d","rhsgref_cdf_gaz66_zu23"];
	_MotPool=	["rhssaf_m1025_olive_m2","rhsgref_cdf_btr60","rhsgref_cdf_btr70","rhsgref_BRDM2","rhsgref_BRDM2_HQ","rhsgref_BRDM2_ATGM","rhsgref_c_a2port_armor","rhsgref_cdf_reg_uaz_ags","rhsgref_cdf_reg_uaz_dshkm","rhsgref_cdf_reg_uaz_spg9"];
	_ACHPool=	["rhsgref_cdf_reg_Mi17Sh"];
	_CHPool=	["rhssaf_airforce_ht48"];
	_uavPool=	["O_UAV_01_F","O_UAV_02_CAS_F","O_UGV_01_rcws_F"];
	_stPool=	["RHSgref_cdf_ZU23","rhsgref_cdf_reg_M252","rhssaf_army_d30","rhsgref_cdf_reg_d30","rhsgref_cdf_reg_d30_at","rhsgref_cdf_Igla_AA_pod","rhsgref_cdf_AGS30_TriPod","rhsgref_cdf_DSHKM","rhsgref_cdf_DSHKM_Mini_TriPod","rhsgref_cdf_NSV_TriPod","rhsgref_cdf_SPG9","rhsgref_cdf_SPG9M","rhssaf_army_metis_9k115"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["rhssaf_army_m10_digital_crew_armored_nco","rhssaf_army_m10_digital_crew_armored","rhssaf_army_m10_digital_crew"];
	_heliCrew=	["rhssaf_airforce_pilot_transport_heli"];
};

////////////////////////////////////////////////////////////////////////////////////////
if (_type==0) then {
		for "_i" from 0 to 5 do{
		_unit=_InfPool select (floor(random(count _InfPool)));
		_tempArray set [count _tempArray,_unit];};
						};

if (_type==1) then {_tempArray=_diverPool};


// CREATE ARMOUR & CREW
if (_type==2) then {
				_tempUnit=_ArmPool select (floor(random(count _ArmPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];
};

// CREATE ATTACK CHOPPER & CREW
if (_type==3) then {
				_tempUnit=_ACHPool select (floor(random(count _ACHPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_heliCrew select (floor(random(count _heliCrew)));
				_temparray set [count _temparray,_crew];
};

// CREATE TRANSPORT CHOPPER & CREW
if (_type==4) then {
				_tempUnit=_CHPool select (floor(random(count _CHPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_heliCrew select (floor(random(count _heliCrew)));
				_temparray set [count _temparray,_crew];
						};

// CREATE STATIC & CREW
if (_type==5) then {
				_tempUnit=_stPool select (floor(random(count _stPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];

};
if (_type==6) then {_tempArray=_uavPool select (floor(random(count _uavPool)));};

// CREATE TRANSPORT & CREW
if (_type==7) then {
				_tempUnit=_MotPool select (floor(random(count _MotPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];
				};

// CREATE BOAT & DIVER CREW
if (_type==8) then {
				_tempUnit=_shipPool select (floor(random(count _shipPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_diverPool select (floor(random(count _diverPool)));
				_temparray set [count _temparray,_crew];
				};

// CREATE CARGO
if (_type==9) then {
		for "_i" from 0 to 4 do{
			_unit=_InfPool select (floor(random(count _InfPool)));
			_temparray set [count _temparray,_unit];
							};
};

// CREATE DIVER CARGO
if (_type==10) then {
		for "_i" from 0 to 4 do{
			_unit=_diverPool select (floor(random(count _diverPool)));
			_temparray set [count _temparray,_unit];
							};
};

//hint format ["%1",_tempArray];
_tempArray
