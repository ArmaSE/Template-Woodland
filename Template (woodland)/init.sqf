// Task Force Radio-variabler (ändras ej).
tf_no_auto_long_range_radio = false;
TF_give_personal_radio_to_regular_soldier = true;
TF_give_microdagr_to_soldier = false;
tf_same_sw_frequencies_for_side = false;
tf_same_lr_frequencies_for_side = false;
tf_same_dd_frequencies_for_side = false;
TF_defaultWestRiflemanRadio = "tf_anprc152";
TF_defaultWestPersonalRadio = "tf_anprc152";
TF_defaultWestBackpack = "tf_rt1523g_fabric";
TF_defaultEastRiflemanRadio = "tf_fadak";
TF_defaultEastPersonalRadio = "tf_fadak";
TF_defaultEastBackpack = "tf_mr3000_rhs";
TF_defaultGuerRiflemanRadio = "tf_anprc148jem";
TF_defaultGuerPersonalRadio = "tf_anprc148jem";
TF_defaultGuerBackpack = "tf_anprc155_coyote";

// Ställer in visuellt avstånd.
setViewDistance 5000;

// Kollar parameter för Farooq's revive-script.
if (!isNil "paramsArray") then {
	if (paramsArray select 0 == 1) then {
		call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";
	};
};

// Stänger av artillery computer.
enableEngineArtillery false;

// Briefing
player createDiaryRecord["Diary", ["Execution", "Förklara utförandet. Denna text ändras i init.sqf"]];
player createDiaryRecord["Diary", ["Mission", "Förklara uppdraget. Denna text ändras i init.sqf"]];
player createDiaryRecord["Diary", ["Situation", "Förklara situationen. Denna text ändras i init.sqf"]];
