AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
--SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MWII"
SWEP.SubCategory = ARC9:GetPhrase("mw22_category_weapon_lmg") or "Light Machine Guns"
SWEP.ARC9WeaponCategory = 4

SWEP.PrintName = ARC9:GetPhrase("mw22_weapon_negev") or "SAKIN MG38"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_lmg") or "Light Machine Gun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_israel"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw22_manufacturer_sa"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_762"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 7.95, 7.95 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 144),
}

SWEP.Credits = {
    Author = "ARC9 MW2022 Team",
    Assets = "Infinity Ward/Valve/New World Interactive"
}
SWEP.Description = ARC9:GetPhrase("mw22_weapon_negev_desc") or [[The belt-fed SAKIN MG38 light machine gun delivers devastating 7.62 rounds at a high fire rate thanks to a short-stroke gas piston.]]

SWEP.ViewModel = "models/weapons/mw22/c_lmg_negev.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/mw22/c_lmg_negev.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8.5, 4, -4),
    TPIKAng = Angle(-9, -5, 175),
    Scale = 1,
	
	TPIKPosSightOffset = Vector(1, 2, -2.75),
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 37 -- Damage done at point blank range
SWEP.DamageMin = 29 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 7000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 12

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 3000 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 100 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 652

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.6

SWEP.RecoilSeed = 24366

SWEP.RecoilPatternDrift = 55

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.8 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 55 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 55
SWEP.VisualRecoilRollSights = 55
SWEP.VisualRecoilPunch = 4
SWEP.VisualRecoilUp = 0.5
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.3

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
SWEP.RecoilModifierCapSights = 0


SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5

SWEP.SpreadHook = function(self, orig)
    local rec = self:GetRecoilAmount()
    local maxmult = -0.5 -- minimal ever spread mult after this (0.5 = 2x more accurate after many shots)
    local speedofthis = 0.5 -- per shot multiplier, or just speed
    local minshots = 3 -- minimal amount of shoots to make this thing work
	--print(math.max(orig * maxmult, orig * (1 - (rec - minshots) * speedofthis)))
    
    if rec > minshots then

      return  math.max(orig * maxmult, orig * (1 - (rec - minshots) * speedofthis))
   end
end


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.6 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.4

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.02, -1, 1.4),
    Ang = Angle(0, 0, -2),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(-1, -2, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, 0, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-1.2, 0, -0.8)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(14, 40, 5)
SWEP.CustomizeRotateAnchor = Vector(16, -3, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_lmg"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_ar_762n.mdl"
SWEP.ShellCorrectAng = Angle(0, -90, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(1, 1, 1)
SWEP.ShellSounds = ARC9.COD2019_556_Table

SWEP.ExtraShellModels = {
    [1] = {
        model = "models/weapons/cod2019/shared/lmg_link.mdl",
        physbox = Vector(1, 1, 1),
		scale = 0.05,
        smoke = false
    },
    [2] = {
        model = "models/weapons/cod2019/shared/lmg_link.mdl",
		scale = 0.05,
        smoke = false
    }
}

SWEP.Hook_PrimaryAttack = function(self)

    self:DoEject(1, 2)

    -- if self:Clip1() == self:GetCapacity() then
        -- self:DoEject(2, 2)
    -- end
end


SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/mw22/mags/w_lmg_negev_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, -90)

-------------------------- SOUNDS

local path = ")weapons/mw22/sakinmg38/"

SWEP.ShootSound = "MW22.MG38.Fire"
SWEP.ShootSoundIndoor = "MW22.MG38.Fire"

SWEP.ShootSoundSilenced = "MW22.MG38.Fire.S"
SWEP.ShootSoundSilencedIndoor = "MW22.MG38.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_BR2.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_BR.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_DMR_Sup.Outside3"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_BR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = ")weapons/cod2019/wfoly_lm_slima_ads_up.ogg"
SWEP.ExitSightsSound = ")weapons/cod2019/wfoly_lm_slima_ads_down.ogg"

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
}

SWEP.HideBones  = {
    [1] = "j_mag2",
    [2] = "j_extra_link_01",
	[3] = "j_extra_link_02",
}

SWEP.ReloadHideBoneTables = {
	[1] = {
        "j_mag2",
		"j_extra_link_01"
    },
	[2] = {
        "j_mag2",
		"j_extra_link_01",
		"j_extra_link_02"
    },
	[3] = {
        "j_mag2",
		"j_mag1",
		"j_extra_link_01",
		"j_extra_link_02",
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
		"j_link_01",
		"j_link_02",
		"j_link_03",
		"j_link_04",
		"j_link_05",
		"j_link_06",
		"j_link_07",
		"j_link_08",
		"j_link_09",
		"j_link_10",
		"j_link_11",
		"j_link_12",
		"j_link_13",
		"j_link_14",
		"j_link_15",
		"j_link_16"
    }
}

SWEP.TriggerDelay = 0.1 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.1 -- Time until weapon fires.

SWEP.TriggerDownSound = path .. "weap_ngolf7_fcg_prefire_plr_01.wav"
SWEP.TriggerUpSound = path .. "weap_ngolf7_fcg_dryfire_plr_01.wav"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.825,
		MagSwapTime = 3.5,
		--DropMagAt = 2.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoley_ngolf7_reload_down.ogg", t = 3/30},
			{s = path .. "wfoley_ngolf7_reload_coveropen.ogg", t = 25/30},
			{s = path .. "wfoley_ngolf7_reload_clear_01.ogg", t = 38/30},
			{s = path .. "wfoley_ngolf7_reload_clear_02.ogg", t = 52/30},
            {s = path .. "wfoley_ngolf7_reload_magout.ogg", t = 74/30},
            {s = path .. "wfoley_ngolf7_reload_adjust.ogg", t = 92/30},
            {s = path .. "wfoley_ngolf7_reload_maghit.ogg", t = 115/30},
            {s = path .. "wfoley_ngolf7_reload_magin.ogg", t = 129/30},
			{s = path .. "wfoley_ngolf7_reload_mvmnt.ogg", t = 130/30},
			{s = path .. "wfoley_ngolf7_reload_load.ogg", t = 148/30},
			{s = path .. "wfoley_ngolf7_reload_coverclose.ogg", t = 187/30},
			{s = path .. "wfoley_ngolf7_reload_end.ogg", t = 191/30},
			{hide = 1, t = 0},
			{hide = 2, t = 2},
			{hide = 3, t = 2.9},
			{hide = 1, t = 3.5},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.85,
		MagSwapTime = 4.6,
		DropMagAt = 4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 1, rhik = 0 },
			{ t = 0.24, lhik = 0, rhik = 0 },
            { t = 0.83, lhik = 0, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoley_ngolf7_reload_empty_down.ogg", t = 2/30},
			{s = path .. "wfoley_ngolf7_reload_empty_charge.ogg", t = 23/30},
			{s = path .. "wfoley_ngolf7_reload_empty_coveropen.ogg", t = 61/30},
            {s = path .. "wfoley_ngolf7_reload_empty_clear_01.ogg", t = 75/30},
			{s = path .. "wfoley_ngolf7_reload_clear_02.ogg", t = 88/30},
			{s = path .. "wfoley_ngolf7_reload_empty_magout.ogg", t = 107/30},
			{s = path .. "wfoley_ngolf7_reload_empty_adjust.ogg", t = 131/30},
            {s = path .. "wfoley_ngolf7_reload_empty_maghit.ogg", t = 151/30},
			{s = path .. "wfoley_ngolf7_reload_empty_magin.ogg", t = 159/30},
			{s = path .. "wfoley_ngolf7_reload_empty_load.ogg", t = 180/30},
			{s = path .. "wfoley_ngolf7_reload_empty_coverclose.ogg", t = 223/30},
			{s = path .. "wfoley_ngolf7_reload_empty_end.ogg", t = 237/30},
			{hide = 1, t = 0},
			{hide = 3, t = 4},
			{hide = 1, t = 4.6},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 2.4,
		DropMagAt = 1.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.775, lhik = 0, rhik = 0 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoley_ngolf7_reload_fast_down.ogg", t = 2/30},
			{s = path .. "wfoley_ngolf7_reload_fast_coveropen.ogg", t = 21/30},
			{s = path .. "wfoley_ngolf7_reload_fast_clear.ogg", t = 35/30},
			{s = path .. "wfoley_ngolf7_reload_fast_adjust.ogg", t = 54/30},
			{s = path .. "wfoley_ngolf7_reload_fast_maghit.ogg", t = 79/30},
			{s = path .. "wfoley_ngolf7_reload_fast_magin.ogg", t = 91/30},
			{s = path .. "wfoley_ngolf7_reload_fast_load.ogg", t = 102/30},
			{s = path .. "wfoley_ngolf7_reload_fast_coverclose.ogg", t = 138/30},
			{s = path .. "wfoley_ngolf7_reload_fast_end.ogg", t = 138/30},
			{hide = 1, t = 0},
			{hide = 3, t = 1.8},
			{hide = 1, t = 2.4},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.825,
		MagSwapTime = 3.2,
		DropMagAt = 2.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.25, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoley_ngolf7_reload_empty_fast_down.ogg", t = 3/30},
			{s = path .. "wfoley_ngolf7_reload_empty_fast_charge.ogg", t = 18/30},
			{s = path .. "wfoley_ngolf7_reload_empty_fast_coveropen.ogg", t = 50/30},
			{s = path .. "wfoley_ngolf7_reload_empty_fast_magout.ogg", t = 66/30},
			{s = path .. "wfoley_ngolf7_reload_empty_fast_clear.ogg", t = 72/30},
			{s = path .. "wfoley_ngolf7_reload_empty_fast_adjust.ogg", t = 91/30},
			{s = path .. "wfoley_ngolf7_reload_empty_fast_maghit.ogg", t = 106/30},
			{s = path .. "wfoley_ngolf7_reload_empty_fast_magin.ogg", t = 117/30},
			{s = path .. "wfoley_ngolf7_reload_empty_fast_load.ogg", t = 133/30},
			{s = path .. "wfoley_ngolf7_reload_empty_fast_end.ogg", t = 164/30},
			{s = path .. "wfoley_ngolf7_reload_empty_fast_coverclose.ogg", t = 165/30},
			{hide = 1, t = 0},
			{hide = 3, t = 2.65},
			{hide = 1, t = 3.2},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 1, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoley_ngolf7_raise_first_up.ogg", t = 0/30},
            {s = path .. "wfoley_ngolf7_raise_first_charge.ogg", t = 33/30},
            {s = path .. "wfoley_ngolf7_raise_first_mvmnt.ogg", t = 36/30},
            {s = path .. "wfoley_ngolf7_raise_first_end.ogg", t = 47/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.5,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoley_ngolf7_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoley_ngolf7_drop.ogg", t = 0/30},
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
		Mult = 2.3,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2.3,
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.3, lhik = 1, rhik = 1 },
            { t = 0.4, lhik = 0, rhik = 0 },
            { t = 0.55, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoley_ngolf7_inspect_up.ogg", t = 5/30},
            {s = path .. "wfoley_ngolf7_inspect_down.ogg", t = 86/30},
			{s = path .. "wfoley_ngolf7_inspect_coveropen.ogg", t = 106/30},
			{s = path .. "wfoley_ngolf7_inspect_coverclose.ogg", t = 148/30},
			{s = path .. "wfoley_ngolf7_inspect_rotate.ogg", t = 155/30},
			{s = path .. "wfoley_ngolf7_inspect_end.ogg", t = 229/30},
        },
    },
    ["bash"] = {
        Source = {"melee_hit_01","melee_hit_02","melee_hit_03"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
    --------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    --------------------------------------------------------------------------
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(17, -0.5, -0.9),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 1,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
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
    ["muzzle_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["rail_grip"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["stock_tube_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,1) end
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
        Category = "mw22_negev_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 180),
		--InstalledElements = {"rail_laser"},
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Category = {"cod2019_optic",},
        Bone = "tag_holo",
        Pos = Vector(0.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight_none"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"mw22_negev_stock","cod2019_stocks"},
        Bone = "tag_stock_attach",
        Pos = Vector(1.7, 0, 0.05),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_none"},
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(2, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"rail_grip"},
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
        Category = {"mw22_negev_mag","cod2019_mag"},
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
		Category = "cod2019_pistolgrip",
		Bone = "tag_pistolgrip_attach",
		Pos = Vector(0, 0, 0),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(2, 0, -5),
    },
	
	-- Unofficial

	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Category = "mw22_skins_negev",
        Bone = "tag_cosmetic",
		CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(5, 0, 2),
        CosmeticOnly = true,
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/mw22/stickers/lmg_negev_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-4, 0, 2),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/mw22/stickers/lmg_negev_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-2, 0, 2),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/mw22/stickers/lmg_negev_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 2),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/mw22/stickers/lmg_negev_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(2, 0, 2),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 2
SWEP.CodStubbyGripPoseParam = 0
SWEP.CodStubbyTallGripPoseParam = 0