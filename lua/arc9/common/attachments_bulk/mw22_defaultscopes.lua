local ATT = {}
//////////////////////////////////////////////// -- Scope Attachments
/////////////////////////// -- Shared
local warzonestats = GetConVar("arc9_mw19_stats_warzone"):GetBool() -- Warzone Stat Variable

//////////////////////////////////////////////// -- Sniper Scopes
/////////////////////////// -- FJX Imperium

ATT = {}

ATT.PrintName = "Imperium Scope"
ATT.Description = "Manufactured for the FJX Imperium's impressive range, this 12x scope will help you take down targets from staggering distances."
ATT.Icon = Material("entities/attachs/sn/imperium/mw2022_sn_imperium_scope_v0.png", "mips smooth")
ATT.SortOrder = 4
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.Category = {"mw2022_optic_imperium"}
ATT.ActivateElements = {"scope_imperium"}

ATT.Model = "models/weapons/mw22/attachs/scopes/scope_imperium.mdl"
ATT.BoneMerge = true
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(0, 9, -1.53),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 45,
        Magnification = 2,
        IgnoreExtra = true,
    },
}

ATT.CustomPros = {
   [ ARC9:GetPhrase("mw19_optic_stat_zoom2") ] = "12x"
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeMagnification = 12
ATT.ScopeScreenRatio = 750/1080
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/ax50_crosshair")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeShadowIntensity = 7.5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

if !warzonestats then -- Regular Stats
	ATT.AimDownSightsTimeAdd = 0.08
	ATT.RecoilMult = 0.99
else -- Warzone Stats
	ATT.AimDownSightsTimeAdd = 0.08
	ATT.RecoilMult = 0.99
end

ARC9.LoadAttachment(ATT, "mw2022_optic_default_imperium")