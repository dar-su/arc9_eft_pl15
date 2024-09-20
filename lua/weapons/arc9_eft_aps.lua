AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

ARC9:AddPhrase("eft_weapon_aps", "Stechkin APS", "en")
ARC9:AddPhrase("eft_weapon_aps", "Стечкин АПС", "ru")
ARC9:AddPhrase("eft_weapon_aps", "Stewchkin APS", "uwu")
SWEP.PrintName = ARC9:GetPhrase("eft_weapon_aps")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_pist")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "Vytatsky Polyany Machine-Building Plant",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "9x18mm Makarov",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"]= ARC9:GetPhrase("eft_trivia_act_blow"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_ussr"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "1940"
}

SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    -- [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    -- [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.Description = [[The APS (Avtomatícheskiy Pistolét Stéchkina - "Stechkin Automatic Pistol", GAU Index - 56-A-126) is a Soviet machine pistol chambered in 9x18 PM, developed in the late 1940 by Igor Stechkin. APS is intended for arming officers who are directly involved in combat operations, as well as for soldiers and sergeants of some special units.]]


SWEP.StandardPresets = {
    -- "[Brunner]XQAAAQAAAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD91Mu7gHhrEdLjEVXEIb1Qv/6x/ERrmPfkgHtGVs3aO/ZomanUH9xcN82LH6PqmSi6bXfh/c7ossVGDNve/Pf4uqKeQaptQZPgfiRDU/Wb3Kupa715/aPL5iHvZPFVwuuk5hwnWW4Q4nXfyp4xoqI=",
    -- "[Golden]XQAAAQD5AAAAAAAAAAA9iIIiM7tuo1AtT00OeFD91Mu7gHhrEdLjEVXEIb1ZX0TWz9Up4g5t23LFQwPmHndDmlmjQ9MN3bTRCRjovJcbJ3q5vc8+LDI/3wTaD2MZxl6wZM3WRDyQUKimbQ/4D9xgQiWLs8ajR2lviDuANrXOxuY95k1ofpBqIaSc"
}

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_aps.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
-- SWEP.DefaultBodygroups = "0001110101101"
SWEP.DefaultBodygroups = "00000000000000"
SWEP.BarrelLength = 25

SWEP.RecoilMultHipFire = 1.1
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

-- pst dmg

SWEP.DamageMax = 50 * 0.5
SWEP.DamageMin = 31.45 * 0.5
SWEP.PhysBulletMuzzleVelocity = 298 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      12 *2.54/100/0.0254
SWEP.PenetrationDelta = 26/100
SWEP.ArmorPiercing =    26/100
SWEP.RicochetChance =   10/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    50 * 0.5     },

    {   100 /0.0254 * 1, 
    46 * 0.5     },

    {   200 /0.0254 * 1, 
    43 * 0.5     },

    {   300 /0.0254 * 1, 
    40.75 * 0.5     },

    {   400 /0.0254 * 1, 
    38.73 * 0.5     },

    {   500 /0.0254 * 1, 
    37 * 0.5     },

    {   600 /0.0254 * 1, 
    35.4 * 0.5     },

    {   700 /0.0254 * 1, 
    34 * 0.5     },

    {   800 /0.0254 * 1, 
    33 * 0.5     },

    {   900 /0.0254 * 1, 
    32 * 0.5     },

    {   1000 /0.0254 * 1, 
    31.45 * 0.5     },
}

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_aps_20.mdl" -- Set to a string or table to drop this magazine when reloading.
-- SWEP.DropMagazineSounds = {
--     "arc9_eft_shared/weap_magdrop_plastic.ogg"
-- } -- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount = 0 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.86*1.1
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 180, 90)
SWEP.DropMagazineVelocity = Vector(0, 0, 0)

SWEP.Overheat = true
SWEP.HeatCapacity = 200
SWEP.HeatDissipation = 2
SWEP.HeatLockout = false
-------------------------- FIREMODES

SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, PoseParam = 1, RPM = 450 }
}
SWEP.RPM = 750


--          Recoil
-- touch these


SWEP.Recoil = 1 -- general multiplier of main recoil

SWEP.RecoilUp   = 2   -- up recoil
SWEP.RecoilSide = 0.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.2 -- random up/down
SWEP.RecoilRandomSide = 0.2   -- random left/right

SWEP.RecoilAutoControl = 10 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.9   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 2.4   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.005   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 2 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 15 -- same but in sights only

SWEP.VisualRecoilDampingConst = 500  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 10 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 2 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = -0.5 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.31 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 20, 2) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
-- SWEP.VisualRecoilCenterHipFire = Vector(2, 25, 2)
local EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.5 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 1
SWEP.RecoilUpMultRecoil = 1

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.VisualRecoilDampingConstMultFirstShot = 0.3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    -- if recamount < 2 then
    --     if self:GetSightAmount() < 0.2 then up = 3 end -- only for visual when hipfiring
    -- end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10



-------------------------- SPREAD

SWEP.Spread = 10.313 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015

-------------------------- HANDLING

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 500
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"

SWEP.AimDownSightsTime = 0.1 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.35 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-------------------------- MELEE

SWEP.Bash = false
SWEP.PrimaryBash = false
-------------------------- TRACERS

SWEP.TracerNum = 0 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-4.265, -8, 1.7),
    Ang = Angle(0, 0.00, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-1, 0, 8),
        Ang = Angle(0, 0, -145),
    },
    Magnification = 1.1,
}

SWEP.ViewModelFOVBase = 62

SWEP.ActivePos = Vector(-0.5, -2.5, -.6)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(0, 20.6,  -15.2)
SWEP.SprintPos = Vector(0.5, -5.1, -13.5)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(21, 21, 4.0)
SWEP.CustomizeSnapshotFOV = 70
SWEP.CustomizeRotateAnchor = Vector(21.6, -4.28, -5.23)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeNPC = "pistol"

SWEP.HoldTypeCustomize = "physgun"
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.WorldModelOffset = {
    Pos = Vector(-15.5, 5.5, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-4, 8, -5), -- rpg
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


-------------------------- RECOIL



-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.

SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x18pm.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellScale = 1
SWEP.CaseEffectQCA = 2
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.3 -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS = 0.05 -- Intensity for QC camera movement in ADS.

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
    [6] = "patron_in_mag4",
    [7] = "patron_in_mag5",
    [8] = "patron_in_mag6",
    [9] = "patron_in_mag7",
    [10] = "patron_in_mag8",
    [11] = "patron_in_mag9",
    [12] = "patron_in_mag10",
    [13] = "patron_in_mag11",
    [14] = "patron_in_mag12",
    [15] = "patron_in_mag13",
    [16] = "patron_in_mag14",
    [17] = "patron_in_mag15",
    [18] = "patron_in_mag16",
    [19] = "patron_in_mag17",
    [20] = "patron_in_mag18",
    [21] = "patron_in_mag19",
}

-------------------------- SOUNDS

local path = "weapons/darsu_eft/aps/"
local pathgenericpistol = "weapons/darsu_eft/generic_pistol/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = { path .. "aps_outdoor_close_loop1.ogg", path .. "aps_outdoor_close_loop2.ogg", path .. "aps_outdoor_close_loop3.ogg", path .. "aps_outdoor_close_loop4.ogg" }
SWEP.LayerSound = path .. "aps_outdoor_close_loop_tail.ogg"

SWEP.ShootSoundSilenced = { path .. "aps_outdoor_silenced_close_loop1.ogg", path .. "aps_outdoor_silenced_close_loop2.ogg", path .. "aps_outdoor_silenced_close_loop3.ogg", path .. "aps_outdoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilenced = path .. "aps_outdoor_silenced_close_loop_tail.ogg"

SWEP.ShootSoundIndoor = { path .. "aps_indoor_close_loop1.ogg", path .. "aps_indoor_close_loop2.ogg", path .. "aps_indoor_close_loop3.ogg", path .. "aps_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = path .. "aps_indoor_close_loop_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "aps_indoor_silenced_close_loop1.ogg", path .. "aps_indoor_silenced_close_loop2.ogg", path .. "aps_indoor_silenced_close_loop3.ogg", path .. "aps_indoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "aps_indoor_silenced_close_loop_tail.ogg"

SWEP.DistantShootSound = { path .. "aps_outdoor_distant_loop1.ogg", path .. "aps_outdoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "aps_outdoor_silenced_distant_loop1.ogg", path .. "aps_outdoor_silenced_distant_loop2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "aps_indoor_distant_loop1.ogg", path .. "aps_indoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "aps_indoor_silenced_distant_loop1.ogg", path .. "aps_indoor_silenced_distant_loop2.ogg" }


SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = ""-- we will have own in sound tables

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.SuppressEmptySuffix = true 

SWEP.EnterSightsSound = ARC9EFT.ADSPistol
SWEP.ExitSightsSound = ARC9EFT.ADSPistol

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_aps_mag_20"] then ending = 0 
    -- elseif elements["eft_pm_mag_84"] then ending = 1
    else nomag = true end

    local empty = swep:Clip1() == 0 and !nomag
    
    -- 0 looking
    -- 1 slide check  (!empty)
    -- 2 mag checking  (!nomag)
    
    if anim == "inspect" or anim == "inspect_empty" then
        swep.EFTInspectnum = swep.EFTInspectnum or 0
        if IsFirstTimePredicted() then
            swep.EFTInspectnum = swep.EFTInspectnum + 1
        end
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        -- if empty and rand == 0 then swep.EFTInspectnum = 1 rand = 1 end

        if rand == 2 and !nomag then -- mag
            ending = "_mag_" .. ending
            
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(true) -- accurate or not based on mag type
                net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end
        else
            if nomag then rand = 0 end
            ending = rand
        end

        return anim .. (empty and "_empty" or "") .. ending
    elseif anim == "reload" or anim == "reload_empty" then
        return anim .. (empty and "_empty" or "") .. ending
    elseif anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- rand = 4

        if SERVER and ARC9EFTBASE then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        return "jam" .. rand
    end

    -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
end

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_magcheck = {
    { s = randspin, t = 0.1 },
    { s =  path .. "aps_magrelease_button.ogg", t = 0.24 },
    { s =  path .. "aps_mag_out_check.ogg", t = 0.5 },
    { s =  path .. "aps_mag_out.ogg", t = 0.85 },
    { s = randspin, t = 1.97 },
    { s =  path .. "aps_mag_in.ogg", t = 2.5 },
    { s = randspin, t = 2.95 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        -- Time = 111, -- REMOVE WHEN DONEEEE
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = path .. "aps_slider_in.ogg", t = 0.51 },
            { s = path .. "aps_slider_out.ogg", t = 0.68 },
            { s = randspin, t = 1.0 },
        },
    },

    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },

    ["fire"] = {
        Source = "fire",
        EventTable = {
            { s = pathgenericpistol .. "pm_trigger_hammer.ogg", t = 0 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_last",
        EventTable = {
            { s = pathgenericpistol .. "aps_slider_out.ogg", t = 0.05 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
    },
    ["dryfire_empty"] = {
        Source = "fire_dry_empty",
    },

    ["reload"] = {
        Source = "reload_single",   
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = path .. "aps_slider_in.ogg", t = 0.42 },
            { s = path .. "aps_magrelease_button.ogg", t = 0.6 },
            { s = randspin, t = 0.78 },
            { s = randspin, t = 1 },
            { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.01},
            { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 1.51  },
            { s = path .. "aps_slider_jam.ogg", t = 2.25 },
            { s = path .. "aps_slider_out.ogg", t = 2.33 },
            { s = randspin, t = 2.59 },
        },
        -- Mult = 1.1
    },

    ["reload0"] = {
        Source = "reload",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.37 },
            { s =  path .. "aps_magrelease_button.ogg", t = 0.6 },
            { s =  path .. "aps_mag_out.ogg", t = 0.78 },
            { s = randspin, t = 1.44 },
            { s = pouchin, t = 1.5 },
            { s = pouchout, t = 1.8 },
            { s =  path .. "aps_mag_in.ogg", t = 2.35 },
            { s = randspin, t = 2.8 },
        },
        Mult = 1.1
    },

    ["reload_empty0"] = {
        Source = {"reload_empty0", "reload_empty1", "reload_empty2"}, 
        MinProgress = 0.9,
        Mult = 0.85,
        MagSwapTime = 1.3,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.18 },
            { s =  path .. "aps_magrelease_button.ogg", t = 0.42 },
            { s =  path .. "aps_mag_out.ogg", t = 0.46 },
            { s = randspin, t = 0.75 },
            { s = randspin, t = 1.39 },
            { s = pouchout, t = 1.2 },
            { s =  path .. "aps_mag_in.ogg", t = 1.89 },
            { s = randspin, t = 2.11 },
            { s =  path .. "aps_magrelease_button.ogg", t = 2.38 },
            { s =  path .. "aps_slider_out.ogg", t = 2.39 },
            { s = randspin, t = 2.64 },

            {hide = 0, t = 0},
            {hide = 1, t = 0.86},
            {hide = 0, t = 1.3}
        },
        Mult = 1.1
    },


    ["toggle"] = {
        Source = "idle",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights"] = {
        Source = "idle",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["toggle_empty"] = {
        Source = "idle_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights_empty"] = {
        Source = "idle_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },



    
    ["jam1"] = {
        Source = "jam_shell",
        EventTable = {
            { s = randspin, t = 0.26 },
            { s = randspin, t = 0.69 },
            { s = randspin, t = 1.04 },

            { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 1.71  },
            { s = randspin, t = 1.82 },
            { s = randspin, t = 2.14 },
            { s = ARC9EFT.Shells9mm, t = 2.4 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hard",
        EventTable = {
            { s = randspin, t = 0.26 },
            { s = randspin, t = 0.69 },
            { s = randspin, t = 1.04 },

            { s = slidelockgrab, t = 1.44 },
            { s = slidelockgrab, t = 1.7 },
            { s = slidelockgrab, t = 2.08 },
            { s = randspin, t = 2.53 },
            { s = path .. "aps_slider_out.ogg", t = 3.21 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 3.27 },
            { s = path .. "aps_slider_in.ogg", t = 3.44 },
            { s = randspin, t = 3.68 },
        },
        EjectAt = 3.27
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.26 },
            { s = randspin, t = 0.69 },
            { s = randspin, t = 1.04 },

            { s = slidelockgrab, t = 1.43 },
            { s = path .. "aps_slider_jam.ogg", t = 1.79 },
            { s = randspin, t = 2.12 },
            { s = randspin, t = 2.17 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.48 },
            { s = path .. "aps_slider_in.ogg", t = 3.01 },
            { s = randspin, t = 3.29 },
            { s = ARC9EFT.Shells9mm, t = 3.4 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_soft",
        EventTable = {
            { s = randspin, t = 0.26 },
            { s = randspin, t = 0.69 },
            { s = randspin, t = 1.04 },

            { s = slidelockgrab, t = 1.65 },
            { s = path .. "aps_slider_in.ogg", t = 2.0 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.07 },
            { s = path .. "aps_slider_out.ogg", t = 2.24 },
            { s = randspin, t = 2.47 },
        },
        EjectAt = 2.07
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },

    ["inspect1"] = {
        Source = "look",
        EventTable = {
            { s = randspin, t = 0.22 },
            { s = randspin, t = 1.25 },
            { s = randspin, t = 2.33 },
        }
    },

    ["inspect_empty1"] = {
        Source = "look_empty",
        EventTable = {
            { s = randspin, t = 0.22 },
            { s = randspin, t = 1.25 },
            { s = randspin, t = 2.33 },
        }
    },

    ["inspect_mag_0"] = {
        Source = "magcheck0",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_0"] = {
        Source = "magcheck0_empty",
        EventTable = rst_magcheck,
    },

    ["inspect_mag_1"] = {
        Source = "magcheck1",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_1"] = {
        Source = "magcheck1_empty",
        EventTable = rst_magcheck,
    },

    ["inspect0"] = {
        Source = "check_chamber",
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = path .. "aps_slider_in.ogg", t = 0.5 },
            { s =  path .. "aps_slider_out.ogg", t = 1.21 },
            { s = randspin, t = 1.43 },
        }
    },
    ["inspect_empty0"] = {
        Source = "check_chamber_empty",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.5 },
        }
    },

    ["firemode_1"] = {
        Source = "firemode1",
        EventTable = {
            { s = path .. "aps_fireselector.ogg", t = 0.36 },
        },
    },
    ["firemode_2"] = {
        Source = "firemode0",
        EventTable = {
            { s = path .. "aps_fireselector.ogg", t = 0.36 },
        },
    },
    ["firemode_1_empty"] = {
        Source = "firemode1_empty",
        EventTable = {
            { s = path .. "aps_fireselector.ogg", t = 0.35 },
        },
    },
    ["firemode_2_empty"] = {
        Source = "firemode0_empty",
        EventTable = {
            { s = path .. "aps_fireselector.ogg", t = 0.35 },
        },
    },
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag4",
        "patron_in_mag5",
        "patron_in_mag6",
        "patron_in_mag7",
        "patron_in_mag8",
        "patron_in_mag9",
        "patron_in_mag10",
        "patron_in_mag11",
        "patron_in_mag12",
        "patron_in_mag13",
        "patron_in_mag14",
        "patron_in_mag15",
        "patron_in_mag16",
        "patron_in_mag17",
        "patron_in_mag18",
        "patron_in_mag19",
    },
}


-------------------------- ATTACHMENTS

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasAmmoooooooo") or 
        !self:GetValue("HasGrip") then
        if SERVER and self.missingpartsnotifsent < CurTime() then
            self.missingpartsnotifsent = CurTime() + 3
            net.Start("arc9eftmissingparts")
            net.Send(self:GetOwner())
        end
        return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasAmmoooooooo") or 
        !self:GetValue("HasGrip") then
            return true 
    end
end

SWEP.AttachmentElements = {
    ["eft_aps_stock_std"]    = { Bodygroups = { {6, 1} } },
    ["eft_aps_fs_std"]    = { Bodygroups = { {4, 1} } },
    ["eft_aps_rs_std"]    = { Bodygroups = { {3, 1} } },
    ["eft_aps_rs_apb"]    = { Bodygroups = { {3, 2} } },

    ["eft_aps_pg_std"]    = { Bodygroups = { {5, 1} } },

    ["eft_aps_mag_20"]    = { Bodygroups = { {2, 1} } },

    ["eft_apb_silencer_std"]    = { Bodygroups = { {1, 1} } },
}

SWEP.Attachments = {
    {
        PrintName = "Rear sight",
        Bone = "weapon_slide",
        Category = "eft_aps_rs",
        Pos = Vector(0, -1, 0.5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_aps_rs_std"
    },
    {
        PrintName = "Front sight",
        Bone = "weapon_slide",
        Category = "eft_aps_fs",
        Pos = Vector(0, 6, 0.5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_aps_fs_std"
    },
    {
        PrintName = "Pistol grip",
        Bone = "weapon",
        Pos = Vector(0, 18, -1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "eft_aps_pg",
        Installed = "eft_aps_pg_std"
    },
    {
        PrintName = "Magazine",
        Category = "eft_aps_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
        Installed = "eft_aps_mag_20"
    },   
    {
        PrintName = "Muzzle",
        Bone = "weapon",
        Pos = Vector(0, 26, 1),
        Ang = Angle(0, -90, 0),
        RequireElements = {"eft_apb"},
        Icon_Offset = Vector(0, 0, 0),
        Category = "eft_apb_silencer",
    },
    {
        PrintName = "Stock",
        Bone = "weapon",
        Pos = Vector(0, 17, -3),
        Category = "eft_aps_stock",
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x18",
        Integral = "eft_ammo_9x18_pst",
        Installed = "eft_ammo_9x18_pst",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -2.5),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_aps"},
        Bone = "weapon",
        Pos = Vector(0, 16, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        CosmeticOnly = false,
    },
}

SWEP.EFTErgo = 70
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    -- SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells9mm