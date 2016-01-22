Note that Bracers of Reaping (Non-Proficient) don't actually work as I can't figure out the BONUS tag for adding a feat via equipment 
(if there is one)

Below is an attempt to use IF THEN LOGIC to do the Bracers of Reaping. I can only get The scythe portion to work (and it still doesn't 
add proficiency with a scythe if you're non-proficient). In addition I don't think you can have 2 IF THEN ELSE statements on the same 
peice of equipement as it never adds the sickle bonus.

Bracers of Reaping	TYPE:Magic.Wondrous.Bracer	Cost:5100	WT:1	SOURCEPAGE:p.59		IF.PREWEAPONPROF:Scythe|.THEN.BONUS:WeaponProf=Scythe|TOHIT|2|PREWEAPONPROF:Scythe|Type:Competence	BONUS:WeaponProf=Scythe|DAMAGE|1|PREWEAPONPROF:Scythe|Type:Competence.ELSE.VFEAT=WEAPONPROF:Scythe IF.PREWEAPONPROF:Sickle.THEN.BONUS:WeaponProf=Sickle|TOHIT|2|PREWEAPONPROF:Sickle|Type:Competence	BONUS:WeaponProf=Sickle|DAMAGE|1|PREWEAPONPROF:Sickle|Type:Competence.ELSE.VFEAT=WEAPONPROF:Sickle 








