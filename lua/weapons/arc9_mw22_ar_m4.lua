AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
--SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MWII"
SWEP.SubCategory = ARC9:GetPhrase("mw22_category_weapon_ar") or "Assault Rifles"
SWEP.ARC9WeaponCategory = 4

SWEP.PrintName = ARC9:GetPhrase("mw22_weapon_m4") or "M4"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_ar") or "Assault Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw22_manufacturer_ta"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_556"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 3.45, 3.45 * 2.2),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 62),
}

SWEP.Credits = {
    Author = "ARC9 MW2022 Team",
    Assets = "Infinity Ward/Sledgehammer Games/Activision"
}

SWEP.Description = ARC9:GetPhrase("mw22_weapon_m4_desc") or [[The flagship rifle of the M4 Platform. This reliable workhorse is a jack-of-all-trades that performs well in most combat scenarios.]]

SWEP.ViewModel = "models/weapons/mw22/c_rif_m4.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/mw22/c_rif_m4.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-9, 4.5, -4),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1,
	
	TPIKPosSightOffset = Vector(0.5, 1.25, -1.75),
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 28 -- Damage done at point blank range
SWEP.DamageMin = 18 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 26 / ARC9.HUToM -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 45 / ARC9.HUToM -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.25

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 590 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 811

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 1,
        -- add other attachment modifiers
    },
    {
        Mode = 1,
		PoseParam = 0,
        -- add other attachment modifiers
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.3

SWEP.RecoilSeed = 6589132

SWEP.RecoilPatternDrift = 25

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 25 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.85

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 35
SWEP.VisualRecoilSideSights = 0.2
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 1.5
SWEP.VisualRecoilUp = 0.4
SWEP.VisualRecoilRoll = 50
SWEP.VisualRecoilSide = 0.5

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilDampingConstSights = 80

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end


-------------------------- SPREAD

SWEP.Spread = 0.02 --.002

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0.01 --0.04
SWEP.SpreadAddMove = 0.035 --multmove = 2
SWEP.SpreadAddMidAir = 0.04 --0
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5

SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 2
SWEP.RecoilModifierCapMove = 0.5
SWEP.RecoilModifierCapSights = 0.05

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.24 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.88, -5.5, 0.54),
    Ang = Angle(0, 0, 2),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 63

SWEP.SprintPos = Vector(-1, -1, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-0.8, -0.8, -0.8)
SWEP.MovingAng = Angle(0, 0, -9)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.PeekPos = Vector(-1, 4, -3.5)
SWEP.PeekAng = Angle(0, 0, -45)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(14, 40, 3)
SWEP.CustomizeRotateAnchor = Vector(14, -3, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekMaxFOV = 64

SWEP.PeekPosReloading = Vector(0, 0, -2)
SWEP.PeekAngReloading = Angle(-0.3, 0, -10)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeNPC = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_ar"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_ar_556.mdl"
SWEP.ShellCorrectAng = Angle(0, -90, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_556_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/mw22/mags/w_rif_mw22m4_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_01.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_02.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_03.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_04.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_06.ogg", 
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, -90)

-------------------------- SOUNDS

local path = ")weapons/mw22/m4/"

SWEP.ShootSound = "MW22.M4A1.Fire"
SWEP.ShootSoundIndoor = "MW22.M4A1.Fire"

SWEP.ShootSoundSilenced = "COD2019.M4A1.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.M4A1.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_AR14.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_AR.Inside"
SWEP.DistantShootSoundIndoor = "Distant_AR.Inside2"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR3_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside2"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_ar_mike4_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_ar_mike4_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_ammo_01",
    [2] = "j_ammo_02",
    [3] = "j_ammo_03",
    [4] = "j_ammo_04",
    [5] = "j_ammo_05",
    [6] = "j_ammo_06",
    [7] = "j_ammo_07",
    [8] = "j_ammo_08",
    [9] = "j_ammo_09",
    [10] = "j_ammo_10",
    [11] = "j_ammo_11",
    [12] = "j_ammo_12",
    [13] = "j_ammo_13",
    [14] = "j_ammo_14",
    [15] = "j_ammo_15",
    [16] = "j_ammo_16",
    [17] = "j_ammo_17",
    [18] = "j_ammo_18",
    [19] = "j_ammo_19",
    [20] = "j_ammo_20",
    [21] = "j_ammo_21",
    [22] = "j_ammo_22",
    [23] = "j_ammo_23",
    [24] = "j_ammo_24",
    [25] = "j_ammo_25",
    [26] = "j_ammo_26",
    [27] = "j_ammo_27",
    [28] = "j_ammo_28",
    [29] = "j_ammo_29",
    [30] = "j_ammo_30",
    [31] = "j_ammo_31"
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.ReloadHideBoneTables  = {
    [1] = {
	"j_mag2",
	},
	[2] = {
	"j_mag1",
	"j_mag_follower",
	"j_ammo_01",
	"j_ammo_02",
	"j_ammo_03",
	"j_ammo_04",
	"j_ammo_05",
	"j_ammo_06",
	"j_ammo_07",
	"j_ammo_08",
	"j_ammo_09",
	"j_ammo_10",
	"j_ammo_11",
	"j_ammo_12",
	"j_ammo_13",
	"j_ammo_14",
	"j_ammo_15",
	"j_ammo_16",
	"j_ammo_17",
	"j_ammo_18",
	"j_ammo_19",
	"j_ammo_20",
	"j_ammo_21",
	"j_ammo_22",
	"j_ammo_23",
	"j_ammo_24",
	"j_ammo_25",
	"j_ammo_26",
	"j_ammo_27",
	"j_ammo_28",
	"j_ammo_29",
	"j_ammo_30",
	},
	[3] = {
	"j_mag2",
	"j_mag1",
	"j_mag_follower",
	"j_ammo_01",
	"j_ammo_02",
	"j_ammo_03",
	"j_ammo_04",
	"j_ammo_05",
	"j_ammo_06",
	"j_ammo_07",
	"j_ammo_08",
	"j_ammo_09",
	"j_ammo_10",
	"j_ammo_11",
	"j_ammo_12",
	"j_ammo_13",
	"j_ammo_14",
	"j_ammo_15",
	"j_ammo_16",
	"j_ammo_17",
	"j_ammo_18",
	"j_ammo_19",
	"j_ammo_20",
	"j_ammo_21",
	"j_ammo_22",
	"j_ammo_23",
	"j_ammo_24",
	"j_ammo_25",
	"j_ammo_26",
	"j_ammo_27",
	"j_ammo_28",
	"j_ammo_29",
	"j_ammo_30",
	},
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = path .. "weap_mike4_deadtrigger_plr_ads_01.ogg"
SWEP.TriggerUpSound = path .. "weap_mike4_deadtrigger_plr_ads_01_1.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
        },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.65,
		PeekProgress = 0.8625,
		FireASAP = true,
		MagSwapTime = 2.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_mvt1.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_shoulder.ogg", t = 10/30},
			{s = path .. "p01_ar_mike4_reload_mvt2.ogg", t = 18/30},
			{s = path .. "p01_ar_mike4_reload_magout.ogg", t = 20/30},
			{s = path .. "p01_ar_mike4_reload_magbump.ogg", t = 34/30},
			{s = path .. "p01_ar_mike4_reload_magin.ogg", t = 39/30},
			{s = path .. "p01_ar_mike4_reload_mvt3.ogg", t = 46/30},
			{s = path .. "p01_ar_mike4_reload_shoulder2.ogg", t = 60/30},
			{hide = 1, t = 0},
			{hide = 0, t = 0.475},
			{hide = 2, t = 1.8},
			{hide = 1, t = 2.2},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.725,
		PeekProgress = 0.7,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 0.425,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_empty_grab.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_magout.ogg", t = 7/30},
			{s = path .. "p01_ar_mike4_reload_empty_mvt1.ogg", t = 18/30},
			{s = path .. "p01_ar_mike4_reload_empty_maghit.ogg", t = 35/30},
			{s = path .. "p01_ar_mike4_reload_empty_magin.ogg", t = 40/30},
            {s = path .. "p01_ar_mike4_reload_empty_mvt2.ogg", t = 46/30},
            {s = path .. "p01_ar_mike4_reload_empty_bolt.ogg", t = 52/30},
            {s = path .. "p01_ar_mike4_reload_empty_shoulder.ogg", t = 60/30},
			{hide = 1, t = 0},
			{hide = 3, t = 0.425},
			{hide = 1, t = 0.8},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.7,
		FireASAP = true,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_fast_magbump.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_fast_magout.ogg", t = 6/30},
            {s = path .. "p01_ar_mike4_reload_fast_mvt1.ogg", t = 14/30},
			{s = path .. "p01_ar_mike4_reload_fast_magin.ogg", t = 21/30},
			{s = path .. "p01_ar_mike4_reload_fast_shoulder.ogg", t = 41/30},
			{hide = 1, t = 0},
			{hide = 3, t = 0.5},
			{hide = 1, t = 0.7},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.725,
		PeekProgress = 0.85,
		FireASAP = true,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_empty_fast_magout.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_mag_rel.ogg", t = 7/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_maghit.ogg", t = 15/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_magin.ogg", t = 25/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_bolt.ogg", t = 36/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_shoulder.ogg", t = 43/30},
			{hide = 1, t = 0},
			{hide = 3, t = 0.5},
			{hide = 1, t = 0.7},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.625,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_xmag_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_xmag_magout.ogg", t = 24/30},
			{s = path .. "p01_ar_mike4_reload_xmag_maghit.ogg", t = 37/30},
			{s = path .. "p01_ar_mike4_reload_xmag_magin.ogg", t = 43/30},
			{s = path .. "p01_ar_mike4_reload_xmag_end.ogg", t = 59/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.425,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_empty_xmag_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_xmag_magout.ogg", t = 8/30},
			{s = path .. "p01_ar_mike4_reload_empty_xmag_maghit.ogg", t = 40/30},
			{s = path .. "p01_ar_mike4_reload_empty_xmag_magin.ogg", t = 46/30},
            {s = path .. "p01_ar_mike4_reload_empty_xmag_end.ogg", t = 49/30},
			{s = path .. "p01_ar_mike4_reload_empty_xmag_charge.ogg", t = 60/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.85,
		FireASAP = true,
		DropMagAt = 0.45,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_fast_xmag_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmag_magout.ogg", t = 11/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmag_magin.ogg", t = 28/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmag_end.ogg", t = 20/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.85,
		FireASAP = true,
		DropMagAt = 0.45,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmag_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmag_magout.ogg", t = 7/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmag_magin.ogg", t = 25/30},
            {s = path .. "p01_ar_mike4_reload_empty_fast_xmag_end.ogg", t = 30/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmag_charge.ogg", t = 33/30},
        },
    },
    ["reload_xmaglrg"] = {
        Source = "reload_xmaglrg",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_xmaglrg_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_xmaglrg_magout.ogg", t = 29/30},
			{s = path .. "p01_ar_mike4_reload_xmaglrg_maghit.ogg", t = 41/30},
			{s = path .. "p01_ar_mike4_reload_xmaglrg_magin.ogg", t = 51/30},
			{s = path .. "p01_ar_mike4_reload_xmaglrg_end.ogg", t = 78/30},
        },
    },
    ["reload_xmaglrg_empty"] = {
        Source = "reload_xmaglrg_empty",
		MinProgress = 0.85,
		FireASAP = true,
		DropMagAt = 0.425,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_magout.ogg", t = 8/30},
			{s = path .. "p01_ar_mike4_reload_empty_maghit.ogg", t = 31/30},
			{s = path .. "p01_ar_mike4_reload_empty_magin.ogg", t = 40/30},
			{s = path .. "p01_ar_mike4_reload_empty_charge.ogg", t = 53/30},
			{s = path .. "p01_ar_mike4_reload_empty_end.ogg", t = 64/30},
        },
    },
    ["reload_xmaglrg_fast"] = {
        Source = "reload_xmaglrg_fast",
		MinProgress = 0.85,
		FireASAP = true,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_fast_xmaglrg_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmaglrg_magout.ogg", t = 10/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmaglrg_maghit.ogg", t = 37/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmaglrg_magin.ogg", t = 42/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmaglrg_end.ogg", t = 53/30},
        },
    },
    ["reload_xmaglrg_fast_empty"] = {
        Source = "reload_xmaglrg_fast_empty",
		MinProgress = 0.85,
		FireASAP = true,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmaglrg_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmaglrg_magout.ogg", t = 8/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmaglrg_maghit.ogg", t = 34/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmaglrg_magin.ogg", t = 40/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmaglrg_charge.ogg", t = 52/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmaglrg_end.ogg", t = 62/30},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p01_ar_mike4_raise_first_retract.ogg", t = 1/30},
            {s = path .. "p01_ar_mike4_raise_first_release.ogg", t = 20/30},
            {s = path .. "p01_ar_mike4_raise_first_shoulder.ogg", t = 32/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p01_ar_mike4_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		--Mult = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.3, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p01_ar_mike4_drop_quick.ogg", t = 0/30},
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
		Mult = 2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p01_ar_mike4_inspect_mvt1.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_inspect_magout.ogg", t = 17/30},
			{s = path .. "p01_ar_mike4_inspect_magbump.ogg", t = 44/30},
			{s = path .. "p01_ar_mike4_inspect_magin.ogg", t = 57/30},
			{s = path .. "p01_ar_mike4_inspect_charge.ogg", t = 87/30},
			{s = path .. "p01_ar_mike4_inspect_return.ogg", t = 108/30},
			{s = path .. "p01_ar_mike4_inspect_mvt2.ogg", t = 119/30},
			{s = path .. "p01_ar_mike4_inspect_shoulder.ogg", t = 134/30},
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
            { t = 1.2, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p01_ar_mike4_inspect_empty_mvt1.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_inspect_empty_mvt2.ogg", t = 13/30},
			{s = path .. "p01_ar_mike4_inspect_empty_magout.ogg", t = 30/30},
			{s = path .. "p01_ar_mike4_inspect_empty_mvt3.ogg", t = 45/30},
			{s = path .. "p01_ar_mike4_inspect_empty_rack.ogg", t = 74/30},
			{s = path .. "p01_ar_mike4_inspect_empty_magbump.ogg", t = 102/30},
			{s = path .. "p01_ar_mike4_inspect_empty_magin.ogg", t = 125/30},
			{s = path .. "p01_ar_mike4_inspect_empty_charge.ogg", t = 146/30},
			{s = path .. "p01_ar_mike4_inspect_empty_handle.ogg", t = 168/30},
			{s = path .. "p01_ar_mike4_inspect_empty_mvt4.ogg", t = 184/30},
			{s = path .. "p01_ar_mike4_inspect_empty_shoulder.ogg", t = 191/30},
        },
    },
    ["bash"] = {
        Source = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
    },
    ["firemode_1"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_ar_mike4_selector_off.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_ar_mike4_selector_on.ogg", t = 0/30},
        },
    },
    ["switchsights"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "p01_ar_mike4_inspect_lift.ogg", t = 0/30},
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

-----------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_extend") then
        return "reload_xmaglrg_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_extend") then 
        return "reload_xmaglrg_fast_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then 
        return "reload_xmag_fast_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_extend") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_extend") then 
        return "reload_xmag_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmag") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmag") then 
        return "reload_xmag_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(15.8, -0.6, 0),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0.7, 0, 0),
    },
    ["cod2019_grips_alt_cclamp"] = {
	ModelOffset = Vector(-1, -0.1, 0.8),
	ModelAngleOffset = Angle(0, 0, 180),
    },
    ["csgo_cod2019_laser_01"] = {
    Sights = {
    {
        Pos = Vector(2, 19, -1.3),
        Ang = Angle(0, 0, -45),
        ViewModelFOV = 54,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["csgo_cod2019_laser_02"] = {
    Sights = {
    {
        Pos = Vector(2, 19, -1.3),
        Ang = Angle(0, 0, -45),
        ViewModelFOV = 54,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["csgo_cod2019_laser_03"] = {
    Sights = {
    {
        Pos = Vector(2, 19, -1.3),
        Ang = Angle(0, 0, -45),
        ViewModelFOV = 54,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["pistol_grip_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["sight_rear_folded"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["sight_front_folded"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["sight_rear_off"] = {
        Bodygroups = {
            {5,2},
        },
    },
    ["sight_front_off"] = {
        Bodygroups = {
            {6,2},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["stock_main_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
	-- local attached = data.elements
    -- if wep:HasElement("sight_m13") then 
	-- model:SetBodygroup(1,2)
	-- model:SetBodygroup(7,2)
	-- elseif wep:HasElement("optic_scope") then
	-- model:SetBodygroup(1,3)
	-- model:SetBodygroup(7,2)
	-- end

    -- local camo = 0
    -- if attached["universal_camo"] then
        -- camo = 1
    -- end
    -- model:SetSkin(camo)
-- end

SWEP.Attachments = {
    { -- 1
		PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
		DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Category = "cod2019_muzzle",
		Bone = "tag_silencer",
		Pos = Vector(0, 0, 0),
--		Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
--		Scale = 1,
    },
	{ -- 2
		PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
		Category = "mw22_m4_barrel",
		Bone = "tag_barrel_attach",
		Pos = Vector(0, 0, 0),
		Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(2, 0, -1),
	},
	{ -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
		Category = "cod2019_tac",
		Bone = "tag_laser_attach",
		Pos = Vector(1.4, 0, -0.1),
		Ang = Angle(0, 0, 180),
	},
	{ -- 4
		PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
		Bone = "tag_holo",
		Pos = Vector(1, 0, -0.1),
		Category = {"cod2019_optic","cod2019_sights_m4"},
		InstalledElements = {"sight_rear_folded","sight_front_folded"},
	},
	{ -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
		Category = {"cod2019_tube"},
		Bone = "tag_stock_attach",
		Pos = Vector(0.5, 0, 0),
		Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_none","stock_main_none"},
		RejectAttachments = {
			["cod2019_stock_none"] = true,
		},
	},
	{ -- 6
		PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
		Category = {"cod2019_grip","cod2019_grip_cclamp"},
		Bone = "tag_grip_attach",
		Pos = Vector(2.1, 0, 0),
		Ang = Angle(0, 0, 180),
		Scale = 1,
	},
	{ -- 7
		PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Category = {"cod2019_mag"},
		Bone = "j_mag1",
		Pos = Vector(0, 0, 0),
		Ang = Angle(0, 0, 0),
	},
	{ -- 8
		PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
		Category = {"cod2019_ammo"},
		Bone = "j_mag1",
		Pos = Vector(0, 0, -1.5),
		Ang = Angle(0, 0, 0),
	},
	{ -- 9
		PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
		Category = "mw22_m4_pistolgrip",
		Bone = "tag_pistolgrip_attach",
		Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-1.5, 0, -2),
	},
	{ -- 10
		PrintName = ARC9:GetPhrase("mw19_category_perk"),
		Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_burst"},
		Bone = "tag_cosmetic",
		Pos = Vector(-3, 0, -4),
	},

	-- Unofficial
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Category = "mw22_skins_m4",
        Bone = "tag_cosmetic",
		--Bone = "v_weapon.Clip",
		CosmeticOnly = true,
	},
	{ -- 13
		PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
		Category = {"universal_camo"},
		Bone = "tag_cosmetic",
--		Pos = Vector(5, 0, 3),
		CosmeticOnly = true,
	},
    { -- 14
		PrintName = ARC9:GetPhrase("mw19_category_sticker"),
		StickerModel = "models/weapons/cod2019/stickers/rif_m4_decal_a.mdl",
        Category = "stickers",
		Bone = "tag_cosmetic",
	},
    { -- 15
		PrintName = ARC9:GetPhrase("mw19_category_sticker"),
		StickerModel = "models/weapons/cod2019/stickers/rif_m4_decal_b.mdl",
        Category = "stickers",
		Bone = "tag_cosmetic",
	},
    { -- 16
		PrintName = ARC9:GetPhrase("mw19_category_sticker"),
		StickerModel = "models/weapons/cod2019/stickers/rif_m4_decal_c.mdl",
        Category = "stickers",
		Bone = "tag_cosmetic",
	},
    { -- 17
		PrintName = ARC9:GetPhrase("mw19_category_sticker"),
		StickerModel = "models/weapons/cod2019/stickers/rif_m4_decal_d.mdl",
        Category = "stickers",
		Bone = "tag_cosmetic",
	},
    { -- 18
		PrintName = ARC9:GetPhrase("mw19_category_charm"),
		Category = "charm",
		Bone = "tag_sling",
		Pos = Vector(3.5, -1.2, -0.5),
		Ang = Angle(0, 0, 0),
		Scale = 1.5,
	},
	{
		PrintName = ARC9:GetPhrase("mw19_category_stats"),
		Category = {"killcounter","killcounter2"},
		Bone = "tag_sling",
		Pos = Vector(2, -1.3, 0.55),
		Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
	},
}

SWEP.GripPoseParam = 0.4
SWEP.GripPoseParam2 = 0
SWEP.CodAngledGripPoseParam = 26
SWEP.CodStubbyGripPoseParam = 8
SWEP.CodStubbyTallGripPoseParam = 1
--SWEP.CodStubbyTallGripPoseParam = 0