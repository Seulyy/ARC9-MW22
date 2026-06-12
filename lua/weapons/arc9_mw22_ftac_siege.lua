AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
--SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MWII"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun") or "Handguns"
SWEP.ARC9WeaponCategory = 1

SWEP.PrintName = "FTAC Siege"

SWEP.Class = "Submachine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "Germany",
    ["Manufacturer"] = "FORGE TAC",
    ["Caliber"] = "4.6×30mm HK",
    ["Weight (Loaded)"] = "2.1 kg",
    ["Projectile Weight"] = "31 gr",
    ["Muzzle Velocity"] = "2,411 ft/s",
    ["Muzzle Energy"] = "543 joules"
}

SWEP.Credits = {
    Author = "ARC9 MW2022 Team",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Designed to be compact and maneuverable, this SMG has a jaw-dropping fire rate and rapid swap speed. A trusted secondary for up-close engagements.]]

SWEP.ViewModel = "models/weapons/mw22/c_smg_ftac_siege.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/mw22/c_smg_ftac_siege.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-9, 5, -2.5),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1,
	
	TPIKPosSightOffset = Vector(2, 0.75, -3.5),
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 22 -- Damage done at point blank range
SWEP.DamageMin = 13 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 6000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 7 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 6

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1512 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 32 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 1200

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 0,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.6

SWEP.RecoilPatternDrift = 2

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1.5 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 55 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2
SWEP.RecoilKickDamping = 90

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.85

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 1.5
SWEP.VisualRecoilUp = 0.3
SWEP.VisualRecoilRoll = 35
SWEP.VisualRecoilSide = 0.2

SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0.1

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 40
SWEP.VisualRecoilDampingConstSights = 100
SWEP.VisualRecoilSpringPunchDampingSights = nil

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 2
SWEP.RecoilModifierCapMove = 0.5
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.03
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.96, -1, 1.35),
    Ang = Angle(0, 0, 4),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.SprintPos = Vector(0, -2, -1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-0.8, -1, -1)
SWEP.MovingAng = Angle(0, 0, -9)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(13, 32, 3)
SWEP.CustomizeRotateAnchor = Vector(13, -3.5, -4)
SWEP.CustomizeSnapshotFOV = 80
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 3, -4.5)
SWEP.PeekAng = Angle(-0.3, 0, -45)

SWEP.PeekMaxFOV = 65
-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeNPC = "ar2"
SWEP.HoldTypeSprint = "ar2"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
--SWEP.AnimMelee = ACT_HL2MP_GESTURE_RELOAD_KNIFE
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_smg"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_pi_9mm.mdl"
SWEP.ShellSounds = ARC9.COD2019_9mm_Table
SWEP.ShellCorrectAng = Angle(0, -90, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/mw22/mags/w_smg_ftacsiege_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, -90)

-------------------------- SOUNDS

local path = "weapons/mw22/ftacsiege/"

SWEP.ShootSound = "MW22.FTACS.Fire"
SWEP.ShootSoundIndoor = "MW22.FTACS.Fire"

SWEP.ShootSoundSilenced = "MW22.FTACS.Fire.S"
SWEP.ShootSoundSilencedIndoor = "MW22.FTACS.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_Pistol2.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Pistol2.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_SMG_Sup2.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "p26_pi_swhiskey_raise_quick_rattle.ogg"
SWEP.ExitSightsSound = path .. "p26_pi_swhiskey_drop_quick_rattle.ogg"

SWEP.TriggerDelay = 0.015 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.015 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/weap_mpapa7_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/weap_golf21_disconnector_plr_01.ogg"

SWEP.BulletBones = {
    [1] = "j_ammo_02",
    [2] = "j_ammo_03",
	[3] = "j_ammo_04",
	[4] = "j_ammo_05",
}

--SWEP.ReloadHideBonesFirstPerson = true
SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.ReloadHideBoneTables  = {
    [1] = {
	"j_mag2",
	},
	[2] = {
	"j_mag1",
	"j_follower",
	"j_ammo_02",
	"j_ammo_03",
	"j_ammo_04",
	"j_ammo_05",
	},
	[3] = {
	"j_mag2",
	"j_mag1",
	"j_follower",
	"j_ammo_02",
	"j_ammo_03",
	"j_ammo_04",
	"j_ammo_05",
	},
}

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["untrigger"] = {
        Source = "untrigger",
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.65,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p49_pi_tango9_reload_raise.ogg", t = 1/30},
			{s = path .. "p49_pi_tango9_reload_arm.ogg", t = 20/30},
			{s = path .. "p49_pi_tango9_reload_magout.ogg", t = 22/30},
			{s = path .. "p49_pi_tango9_reload_mvmnt.ogg", t = 35/30},
			{s = path .. "p49_pi_tango9_reload_maghit.ogg", t = 47/30},
			{s = path .. "p49_pi_tango9_reload_magin.ogg", t = 53/30},
			{s = path .. "p49_pi_tango9_reload_end.ogg", t = 58/30},
			{hide = 1, t = 0},
			{hide = 0, t = 0.4},
			{hide = 2, t = 2.125},
			{hide = 1, t = 2.425},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.75,
		DropMagAt = 0.85,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p49_pi_tango9_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "p49_pi_tango9_reload_empty_magout.ogg", t = 14/30},
			{s = path .. "p49_pi_tango9_reload_empty_arm.ogg", t = 16/30},
			{s = path .. "p49_pi_tango9_reload_empty_mvmnt1.ogg", t = 28/30},
			{s = path .. "p49_pi_tango9_reload_empty_maghit.ogg", t = 48/30},
			{s = path .. "p49_pi_tango9_reload_empty_magin.ogg", t = 59/30},
			{s = path .. "p49_pi_tango9_reload_empty_mvmnt2.ogg", t = 60/30},
			{s = path .. "p49_pi_tango9_reload_empty_mvmnt3.ogg", t = 75/30},
			{s = path .. "p49_pi_tango9_reload_empty_boltpull.ogg", t = 78/30},
			{s = path .. "p49_pi_tango9_reload_empty_end.ogg", t = 89/30},
			{hide = 1, t = 0},
			{hide = 3, t = 0.85},
			{hide = 1, t = 1.1},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.65,
		MagSwapTime = 0.5,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p49_pi_tango9_reload_fast_mvmnt.ogg", t = 2/30},
			{s = path .. "p49_pi_tango9_reload_fast_magout.ogg", t = 8/30},
			{s = path .. "p49_pi_tango9_reload_fast_mvmnt1.ogg", t = 26/30},
			{s = path .. "p49_pi_tango9_reload_fast_maghit.ogg", t = 33/30},
			{s = path .. "p49_pi_tango9_reload_fast_magin.ogg", t = 42/30},
			{s = path .. "p49_pi_tango9_reload_fast_end.ogg", t = 44/30},
			{hide = 1, t = 0},
			{hide = 3, t = 0.4},
			{hide = 1, t = 0.6},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.7,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p49_pi_tango9_reload_fast_empty_mvmnt1.ogg", t = 2/30},
			{s = path .. "p49_pi_tango9_reload_fast_empty_magout.ogg", t = 8/30},
			{s = path .. "p49_pi_tango9_reload_fast_empty_mvmnt2.ogg", t = 29/30},
			{s = path .. "p49_pi_tango9_reload_fast_empty_maghit.ogg", t = 33/30},
			{s = path .. "p49_pi_tango9_reload_fast_empty_magin.ogg", t = 43/30},
			{s = path .. "p49_pi_tango9_reload_fast_empty_boltgrab.ogg", t = 53/30},
			{s = path .. "p49_pi_tango9_reload_fast_empty_charge.ogg", t = 56.5/30},
			{s = path .. "p49_pi_tango9_reload_fast_empty_end.ogg", t = 63/30},
			{hide = 1, t = 0},
			{hide = 3, t = 0.4},
			{hide = 1, t = 0.6},
        },
    },
    ["reload_drum"] = {
        Source = "reload_drum",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_mpapa7_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_mag_release.ogg", t = 10/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_magout.ogg", t = 19/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_magin_v2_01.ogg", t = 35/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_magin_v2_02.ogg", t = 43/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_mvmnt.ogg", t = 46/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_end.ogg", t = 49/30},
        },
    },
    ["reload_drum_empty"] = {
        Source = "reload_drum_empty",
		MinProgress = 0.9,
		DropMagAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magout.ogg", t = 7/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 14/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_02.ogg", t = 36/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_bolt_release.ogg", t = 45/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 49/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_end.ogg", t = 58/30},
        },
    },
    ["reload_drum_fast"] = {
        Source = "reload_drum_fast",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magout.ogg", t = 7/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 14/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_01.ogg", t = 21/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_02.ogg", t = 32/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_end.ogg", t = 50/30},
        },
    },
    ["reload_drum_fast_empty"] = {
        Source = "reload_drum_fast_empty",
		MinProgress = 0.9,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magout.ogg", t = 7/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 14/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_01.ogg", t = 21/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_02.ogg", t = 32/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_bolt_release.ogg", t = 44/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 49/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_end.ogg", t = 58/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p49_pi_tango9_raise_first_lift.ogg", t = 0/30},
            {s = path .. "p49_pi_tango9_raise_first_boltpull.ogg", t = 13/30},
			{s = path .. "p49_pi_tango9_raise_first_end.ogg", t = 21/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.2,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p49_pi_tango9_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.4, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p49_pi_tango9_drop.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 3.5,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 3.5,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p49_pi_tango9_inspect_raise.ogg", t = 4/30},
			{s = path .. "p49_pi_tango9_inspect_regrip.ogg", t = 29/30},
			{s = path .. "p49_pi_tango9_inspect_mvmnt1.ogg", t = 62/30},
			{s = path .. "p49_pi_tango9_inspect_lower.ogg", t = 79/30},
			{s = path .. "p49_pi_tango9_inspect_mvmnt2.ogg", t = 127/30},
			{s = path .. "p49_pi_tango9_inspect_magout.ogg", t = 131/30},
			{s = path .. "p49_pi_tango9_inspect_magmvmnt.ogg", t = 164/30},
			{s = path .. "p49_pi_tango9_inspect_maghit.ogg", t = 181/30},
			{s = path .. "p49_pi_tango9_inspect_magin.ogg", t = 189/30},
			{s = path .. "p49_pi_tango9_inspect_end.ogg", t = 194/30},
        },
    },
    ["inspect_empty"] = {
        Source = "lookat01_empty",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p49_pi_tango9_inspect_empty_raise.ogg", t = 7/30},
			{s = path .. "p49_pi_tango9_inspect_empty_regrip.ogg", t = 30/30},
			{s = path .. "p49_pi_tango9_inspect_empty_mvmnt1.ogg", t = 63/30},
			{s = path .. "p49_pi_tango9_inspect_empty_lower.ogg", t = 82/30},
			{s = path .. "p49_pi_tango9_inspect_empty_handbolt.ogg", t = 120/30},
			{s = path .. "p49_pi_tango9_inspect_empty_boltpull.ogg", t = 134/30},
			{s = path .. "p49_pi_tango9_inspect_empty_boltlock.ogg", t = 156/30},
			{s = path .. "p49_pi_tango9_inspect_empty_handgrab.ogg", t = 160/30},
			{s = path .. "p49_pi_tango9_inspect_empty_triggerboltclose.ogg", t = 176/30},
			{s = path .. "p49_pi_tango9_inspect_empty_mvmnt3.ogg", t = 213/30},
			{s = path .. "p49_pi_tango9_inspect_empty_bolthit.ogg", t = 213/30},
			{s = path .. "p49_pi_tango9_inspect_empty_grabbolt1.ogg", t = 224/30},
			{s = path .. "p49_pi_tango9_inspect_empty_boltpullhard.ogg", t = 240/30},
			{s = path .. "p49_pi_tango9_inspect_empty_boltgrab2.ogg", t = 265/30},
			{s = path .. "p49_pi_tango9_inspect_empty_boltcheck.ogg", t = 267/30},
			{s = path .. "p49_pi_tango9_inspect_empty_end.ogg", t = 291/30},
        },
    },
    ["inspect_drum"] = {
        Source = "lookat01_drum",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sm_mpapa7_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sm_mpapa7_inspect_02.ogg", t = 30/30},
			{s = path .. "wfoly_sm_mpapa7_inspect_03.ogg", t = 58/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_magout.ogg", t = 130/30},
			{s = path .. "wfoly_sm_mpapa7_inspect_04.ogg", t = 97/30},
			{s = path .. "wfoly_sm_mpapa7_inspect_04.ogg", t = 109/30},
        },
    },
    ["bash"] = {
        Source = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
	    IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
	
-----------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_drum") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_drum") then 
        return "reload_xmag_fast_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_drum") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_drum") then 
        return "reload_xmag_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
-----------------------------------------------------------------
	elseif anim == "inspect" and wep:HasElement("mag_drum") then
        return "inspect_drum"
    elseif anim == "inspect_empty" and wep:HasElement("mag_drum") then 
        return "inspect_empty"	
-----------------------------------------------------------------
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(8.7, 0, 0.15),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0.1, 0, 0.1),
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["mount_laser"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["mount_sight"] = {
        Bodygroups = {
            {5,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then 
	-- model:SetBodygroup(3,1) 
	-- model:SetBodygroup(6,0) 
	-- end
	-- --if wep:HasElement("stock_none") then model:SetBodygroup(4,1) end
-- end

SWEP.Attachments = {
    { -- 1
		PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
		Category = "cod2019_muzzle",
		DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
		Pos = Vector(0, 0, 0),
		Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    { -- 2
		PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
		Category = "cod2019_ftacs_barrel",
		Bone = "tag_barrel_attach",
		Pos = Vector(0, 0, 0),
		Ang = Angle(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(2, 0, 0.05),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"mount_laser"},
    },
    { -- 4
		PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
		Bone = "tag_holo",
		Pos = Vector(-4.5, 0, -0.1),
		Ang = Angle(0, 0, 0),
		Category = {"cod2019_optic",},
		CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"mount_sight"},
    },
    -- { -- 5
		-- PrintName = ARC9:GetPhrase("mw19_category_stock"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
		-- Category = {"stock_retract","cod2019_tube"},
		-- Bone = "tag_stock_attach",
		-- Pos = Vector(0, 0, 0),
		-- Ang = Angle(0, 0, 0),
		-- InstalledElements = {"stock_adapter"},
    -- },
    { -- 6
		PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "j_mag1",
		Category = {"cod2019_mag"},
		Pos = Vector(0, 0, 0),
		Ang = Angle(0, 0, 0),
    },
    { -- 7
		PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
		Bone = "j_mag1",
		Category = {"cod2019_ammo"},
		Pos = Vector(0, 0, -1.5),
		Ang = Angle(0, 0, 0),
    },

	-- Unofficial
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },

	-- Cosmetics
    {
		PrintName = ARC9:GetPhrase("mw19_category_skins"),
		--Bone = "v_weapon.Clip",
		Category = "cod2019_ftacs_skin",
		CosmeticOnly = true,
    },
    {
		PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
		Category = {"universal_camo"},
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/mw22/stickers/smg_mp7_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/mw22/stickers/smg_mp7_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/mw22/stickers/smg_mp7_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/mw22/stickers/smg_mp7_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
		CosmeticOnly = true,
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(-2, 0, 0.3),
        Ang = Angle(0, 0, 27),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 0.7
SWEP.GripPoseParam2 = 0
SWEP.CodStubbyGripPoseParam = 1
SWEP.CodStubbyTallGripPoseParam = 18
SWEP.CodAngledGripPoseParam = 20