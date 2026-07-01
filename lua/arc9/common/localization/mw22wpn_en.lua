L = {} -- English, UO by Moka and Froglegs.

local lineb = "\n"

//////////////////////////////////////////////////////////////////////
////////////////////////////////////////// Notes
-- 1) If "-- UO" is listed after the string, it is unofficial and its translation is not taken from MW19.
-- Therefore they will either remain untranslated (and remain in English) or require community contribution to fix.

-- 2) If a string uses "ARC9:GetPhrase" in it, then do not touch it. It uses another localization as its quick access.

-- 3) This lua file is meant for MW2022 localization ONLY. Any CoD2019 localization must remain in the main CoD2019 pack.

///////////////////////////// Various Universal Information
//////////////////// Settings

//////////////////// Trivia
/////////// Caliber -- UO

L["mw22_caliber_300blk"] = ".300 Blackout" -- Chimera
L["mw22_caliber_408c"] = ".408 Chey Tac" -- Imperium

/////////// Country of Origin -- UO


/////////// Manufacturer

L["mw22_manufacturer_fjx"] = "FJX Defense" -- Imperium

/////////// Weight -- UO


/////////// Projectile Weight -- UO


/////////// Authors -- UO


/////////// Weapon Categories


/////////// Weapon Classes


//////////////////////////////////////////////////////////////////////
///////////////////////////// Attachments
//////////////////// Customize


//////////////////// Attachment Categories


-- Custom ones for the addon


//////////////////// Folder Names
-- Stocks


-- Other


//////////////////// Firemodes
-- L["mw19_firemode_pump"] = "PUMP"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Base Attachments
-- Stats

////////////////////  Default Scopes
L["mw2022_optic_default_imperium.printname"] = "Imperium 12x"
L["mw2022_optic_default_imperium.compactname"] = ARC9:GetPhrase("cod2019_optic_default_svd.compactname") or "Default" -- UO
L["mw2022_optic_default_imperium.description"] = "Manufactured for the FJX Imperium's impressive range, this <color=100,255,100>12x</color> scope will help you take down targets from staggering distances."

////////////////////  Ammo


////////// Shotgun Ammo


////////////////////  Etc.


////////////////////  Perks


////////////////////  Scopes


////////////////////  Stocks


//////////////////////////////////////////////////////////////////////
///////////////////////////// Weapon Names, Descriptions and unique attachments
//////////////////// Weapon Names
--ARs
L["mw22_weapon_chimera"] = "Chimera"
L["mw22_weapon_hemlock"] = "ISO Hemlock"
L["mw22_weapon_lach556"] = "Lachmann-556"
L["mw22_weapon_m4"] = "M4"
L["mw22_weapon_razorback"] = "Tempus Razorback"
L["mw22_weapon_geist"] = "TR-76 Geist"

--Battle Rifles
L["mw22_weapon_squall"] = "Cronen Squall"
L["mw22_weapon_lach762"] = "Lachmann-762"

--Shotguns
L["mw22_weapon_bryson800"] = "Bryson 800"
L["mw22_weapon_bryson890"] = "Bryson 890"
L["mw22_weapon_expedite12"] = "Expedite 12"
L["mw22_weapon_broadside"] = "KV Broadside"
L["mw22_weapon_guardian"] = "MX Guardian"

--Light Machineguns
L["mw22_weapon_icarus"] = "556 Icarus"
L["mw22_weapon_rapph"] = "RAPP H"
L["mw22_weapon_negev"] = "SAKIN MG38"

--Marksman Rifles
L["mw22_weapon_lms"] = "LM-S"
L["mw22_weapon_torrent"] = "Tempus Torrent"

--Sub-Machineguns
L["mw22_weapon_basp"] = "BAS-P"
L["mw22_weapon_hurricane"] = "FSS Hurricane"

--Handguns
L["mw22_weapon_basilisk"] = "Basilisk"
L["mw22_weapon_daemon"] = "9mm Daemon"
L["mw22_weapon_ftacs"] = "FTAC Siege"
L["mw22_weapon_p890"] = "P890"

--Snipers
L["mw22_weapon_carrack"] = "Carrack .300"
L["mw22_weapon_imperium"] = "FJX Imperium"
L["mw22_weapon_mcpr"] = "MCPR-300"
L["mw22_weapon_signal"] = "Signal 50"
L["mw22_weapon_victus"] = "Victus XMR"

--Melee
L["mw22_weapon_baton"] = "Tonfa"
L["mw22_weapon_pickaxe"] = "Pickaxe"

//////////////////// Weapon Descriptions
--ARs
L["mw22_weapon_chimera_desc"] = "With an integrated suppressor and slow, high-energy subsonic .300 BLK rounds, the Chimera is adept at close-quarters combat."
L["mw22_weapon_hemlock_desc"] = "This powerful and enhanced rifle from Expedite Firearms is designed to take both 5.56 and subsonic .300 BLK ammunition, providing battlefield-advantage in any situation."
L["mw22_weapon_lach556_desc"] = "The Lachmann-556 is the keystone in the Lachmann Meer Arsenal. An adaptive 5.56 weapon system that bridges the gap between submachine guns and full powered rifles."
L["mw22_weapon_m4_desc"] = "The flagship rifle of the M4 Platform. This reliable workhorse is a jack-of-all-trades that performs well in most combat scenarios."
L["mw22_weapon_razorback_desc"] = "A masterclass in exceptional craftsmanship, this Tempus Armament assault rifle features a bullpup design and frame vibration control resulting in remarkable handling and accuracy for a full-auto 5.56 weapon."
L["mw22_weapon_geist_desc"] = "A hard-hitting bullpup assault rifle chambered in 7.62x39mm. Highly modular, this weapon system can be adapted to fit a wide range of tactics and combat scenarios."

--Battle Rifles
L["mw22_weapon_squall_desc"] = "A bullpup, semi-automatic rifle chambered in 6.8 Wrath and designed for distance shooting and exceptional damage output."
L["mw22_weapon_lach762_desc"] = "A delayed blowback 7.62 receiver with equal parts power and control. Select fire allows precise semi-auto shots and short bursts of devastating full-auto firepower."

--Shotguns
L["mw22_weapon_bryson800_desc"] = "A reliable, highly customizable pump-action shotgun. Configurable for either close or medium range, the Bryson 800 is synonymous with versatility"
L["mw22_weapon_bryson890_desc"] = "This mag-fed pump-action shotgun takes room clearing seriously. Detachable magazine speeds up reloads."
L["mw22_weapon_expedite12_desc"] = "A practiced hand can control the Expedite 12's recoil to devastating effects. This semi-auto shotgun features a regulated gas system, ergonomic stock, and standard rail."
L["mw22_weapon_broadside_desc"] = "Bringing the power of the 12 gauge to the Kastov Platform, the KV Broadside is the fastest-firing semi-auto firearm in the shotgun class. Destroys targets at close range with impunity."
L["mw22_weapon_guardian_desc"] = "A fully automatic 12-gauge shotgun with a high-capacity, helical magazine that carries 15 shells."

--Light Machineguns
L["mw22_weapon_icarus_desc"] = "The 556 Icarus is a lightweight squad-support weapon in the M4 Platform. Increased ammo capacity does not significantly impact mobility."
L["mw22_weapon_rapph_desc"] = "Featuring a belt-fed 7.62mm receiver with all the modularity of the Lachmann Meer platform, the RAPP H offers versatility in the light machine gun."
L["mw22_weapon_negev_desc"] = "The belt-fed SAKIN MG38 light machine gun delivers devastating 7.62 rounds at a high fire rate thanks to a short-stroke gas piston."

--Marksman Rifles
L["mw22_weapon_lms_desc"] = "The LM-S is a highly accurized semi-automatic rifle available to military and police. Precision manufacturing provides unmatched accuracy for long-range engagements."
L["mw22_weapon_torrent_desc"] = "This hard-hitting DMR from the Tempus Armament offers the versatility of the M4 Platform and the velocity and impact of 7.62 rounds. A patient hand and keen eye will result in on-target shots and quick kills."

--Sub-Machineguns
L["mw22_weapon_basp_desc"] = "An aggressive fire rate and modular frame make the BAS-P perfect for the discerning operator who wants to customize their submachine gun. Subsonic ammo hides kill skulls from the enemy team."
L["mw22_weapon_hurricane_desc"] = "The FSS Hurricane sacrifices range and stopping power for increased ammo capacity and enhanced stability."

--Handguns
L["mw22_weapon_basilisk_desc"] = "A double-action revolver firing .500 Cal rounds, the Basilisk kicks hard but hits harder. Unstoppable in the right hands."
L["mw22_weapon_daemon_desc"] = "This modern, tactical pistol chambered in 9mm is deadly from the hip and features best-in-class semi-automatic fire rate."
L["mw22_weapon_ftacs_desc"] = "Designed to be compact and maneuverable, this SMG has a jaw-dropping fire rate and rapid swap speed. A trusted secondary for up-close engagements."
L["mw22_weapon_p890_desc"] = "For close-quarters situations, the P890 semi-auto pistol takes advantage of accuracy, reliability, and a hard-hitting .45 Auto round. Subsonic Ammo hides kill skulls from the enemy team."

--Snipers
L["mw22_weapon_carrack_desc"] = "This semi-auto bullpup sniper rifle features an exceptionally high fire rate and a unique design for best-in-class handling and stability when on the move."
L["mw22_weapon_imperium_desc"] = "Engineered destruction at its finest, this anti-personnel, bolt-action sniper rifle intervenes in tense situations with hard-hitting .408 rounds."
L["mw22_weapon_mcpr_desc"] = "The Multi-Caliber Precision Rifle is a cutting-edge sniper rifle, chambered for the powerful .300 magnum round. This modular bolt-action rifle is ready to adapt to the ever-evolving needs of the operator."
L["mw22_weapon_signal_desc"] = "Featuring a reciprocating barrel that mitigates the recoil of the devastating .50 Cal cartridge, this anti-material rifle is built for consistent shots on target to take out anything you aim at."
L["mw22_weapon_victus_desc"] = "Hard hitting, bolt action sniper rifle with .50 cal BMG ammunition. Its tungsten sabot tipped bullets are fast and powerful, but require precise shots over long distances."

--Melee
L["mw22_weapon_baton"] = "This hard-polymer, edgeless melee weapon delivers blunt trauma without risk of dulling or breaking. Versatile, comfortable, and lethal in the right hands."
L["mw22_weapon_pickaxe"] = "Almost any tool can be turned lethal in the right hands, and this Pickaxe is no exception."

//////////////////// Custom Weapon Names -- all UO

//////////////////// True Weapon Names
--ARs
L["mw22_weapon_true_chimera"] = "AAC Honey Badger"
L["mw22_weapon_true_hemlock"] = "Brügger & Thomet APC556"
L["mw22_weapon_true_lach556"] = "Heckler & Koch HK93A2"
L["mw22_weapon_true_m4"] = "M4"
L["mw22_weapon_true_razorback"] = "HS Produkt VHS-K2"
L["mw22_weapon_true_geist"] = "Malyuk"

--Battle Rifles
L["mw22_weapon_true_squall"] = "General Dynamics RM277"
L["mw22_weapon_true_lach762"] = "Heckler & Koch HK91A2"

--Shotguns
L["mw22_weapon_true_bryson800"] = "Mossberg 590"
L["mw22_weapon_true_bryson890"] = "Mossberg 590M"
L["mw22_weapon_true_expedite12"] = "Benelli M4 Super 90"
L["mw22_weapon_true_broadside"] = "Molot Vepr-12"
L["mw22_weapon_true_guardian"] = "IWI Tavor TS12"

--Light Machineguns
L["mw22_weapon_true_icarus"] = "FightLite MCR"
L["mw22_weapon_true_rapph"] = "Heckler & Koch HK21"
L["mw22_weapon_true_negev"] = "IWI Negev NG7"

--Marksman Rifles
L["mw22_weapon_true_lms"] = "Heckler & Koch SR9(TC)"
L["mw22_weapon_true_torrent"] = "Knight's Armament SR-25 E2 PR"

--Sub-Machineguns
L["mw22_weapon_true_basp"] = "SIG Sauer MPX"
L["mw22_weapon_true_hurricane"] = "AR-57"

--Handguns
L["mw22_weapon_true_basilisk"] = "Smith & Wesson Model 500"
L["mw22_weapon_true_daemon"] = "Staccato P"
L["mw22_weapon_true_ftacs"] = "Interdynamic KG-9"
L["mw22_weapon_true_p890"] = "SIG Sauer P220"

--Snipers
L["mw22_weapon_true_carrack"] = "Walther WA 2000"
L["mw22_weapon_true_imperium"] = "Cheyenne Tactical M200 Intervention"
L["mw22_weapon_true_mcpr"] = "Barrett MRAD"
L["mw22_weapon_true_signal"] = "Gepard GM6 Lynx"
L["mw22_weapon_true_victus"] = "Accuracy International AW50"