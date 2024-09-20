
-- owewwides pm with diwwewent twiwia anwd atts uwu

AddCSLuaFile()

SWEP.Base = "arc9_eft_aps"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.Slot = 1

ARC9:AddPhrase("eft_weapon_apb", "Stechkin APB", "en")
ARC9:AddPhrase("eft_weapon_apb", "Стечкин АПБ", "ru")
ARC9:AddPhrase("eft_weapon_apb", "Stewchkin APB", "uwu")
SWEP.PrintName = ARC9:GetPhrase("eft_weapon_apb")

SWEP.Description = [[The APB pistol (Avtomatícheskiy Pistolét Besshúmnyy - "Silenced Automatic Pistol", GRAU Index - 6P13) is a silenced version of the Stechkin machine pistol, widely used by different Russian special forces.]]

SWEP.DefaultElements = {"eft_apb"} 

SWEP.DefaultBodygroups = "10000000000000"

SWEP.Attachments = {
    {  Installed = "eft_aps_rs_apb" },
    _,
    _,
    _,
    { Installed = "eft_apb_silencer_std" },
    { Installed = "eft_aps_stock_std" },
} -- overide

SWEP.EFTErgo = 80