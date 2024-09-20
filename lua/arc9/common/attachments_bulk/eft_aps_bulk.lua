local ATT = {}


///////////////////////////////////////      eft_aps_rs_std

ATT = {}

ATT.PrintName = "APS rear sight"
ATT.CompactName = "APS RS"
ATT.Icon = Material("entities/eft_aps_attachments/rs.png", "mips smooth")
ATT.Description = [[A standard rear sight for APS pistols.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aps_rs"}

ARC9.LoadAttachment(ATT, "eft_aps_rs_std")

///////////////////////////////////////      eft_aps_fs_std

ATT = {}

ATT.PrintName = "APS front sight"
ATT.CompactName = "APS FS"
ATT.Icon = Material("entities/eft_aps_attachments/fs.png", "mips smooth")
ATT.Description = [[A standard front sight for APS pistols.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aps_fs"}

ARC9.LoadAttachment(ATT, "eft_aps_fs_std")

///////////////////////////////////////      eft_aps_rs_apb

ATT = {}

ATT.PrintName = "APB rear sight"
ATT.CompactName = "APB RS"
ATT.Icon = Material("entities/eft_aps_attachments/brs.png", "mips smooth")
ATT.Description = [[A standard rear sight for APB pistols.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aps_rs"}

ARC9.LoadAttachment(ATT, "eft_aps_rs_apb")

///////////////////////////////////////      eft_aps_pg_std

ATT = {}

ATT.PrintName = "APS bakelite side-pieces"
ATT.CompactName = "APS bak."
ATT.Icon = Material("entities/eft_aps_attachments/g.png", "mips smooth")
ATT.Description = [[Standard-issue APS pistol bakelite side grips.]]

ATT.HasGrip = true 

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aps_pg"}

ARC9.LoadAttachment(ATT, "eft_aps_pg_std")


///////////////////////////////////////      eft_aps_mag_20

ATT = {}

ATT.PrintName = "APS 9x18PM 20-round magazine"
ATT.CompactName = "APS 20"
ATT.Icon = Material("entities/eft_aps_attachments/20.png", "mips smooth")
ATT.Description = [[A standard 20-round magazine for Molot-produced APS pistols. It features a side observation slot for faster capacity checking.]]

ATT.EFTErgoAdd = -3
ATT.CustomPros = { Ergonomics = "-3" }
ATT.MalfunctionMeanShotsToFailMult = 0.97

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_aps_20.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aps_mag"}

ATT.HasMag = true
ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 20
ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_aps_mag_20")


///////////////////////////////////////      eft_apb_silencer_std

ATT = {}

ATT.PrintName = "APB 9x18PM sound suppressor"
ATT.CompactName = "APB supp."
ATT.Icon = Material("entities/eft_aps_attachments/s.png", "mips smooth")
ATT.Description = [[A standard-issue detachable APB pistol sound suppressor.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.VisualRecoilMult = 0.94
ATT.RecoilMult = 0.94
ATT.HeatCapacityMult = 0.87
ATT.EFTErgoAdd = -21
ATT.CustomCons = { Ergonomics = "-21" }

ATT.Silencer = true 
ATT.CustomizePos = Vector(24, 21, 4.0)

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5

ATT.Category = {"eft_apb_silencer"}

ARC9.LoadAttachment(ATT, "eft_apb_silencer_std")

///////////////////////////////////////      eft_aps_stock_std

ATT = {}

ATT.PrintName = "APB detachable wire stock"
ATT.CompactName = "APB stock"
ATT.Icon = Material("entities/eft_aps_attachments/st.png", "mips smooth")
ATT.Description = [[A standard-issue wire stock for APB pistols.]]

ATT.VisualRecoilMult = 0.73
ATT.RecoilMult = 0.73

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aps_stock"}

ARC9.LoadAttachment(ATT, "eft_aps_stock_std")