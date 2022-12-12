table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_mp40 = {
        model = "models/lambdaplayers/dayofdefeat/w_mp40.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "Maschinenpistole 40",
        holdtype = "smg",
        killicon = "lambdaplayers/killicons/icon_dod_mp40",
        bonemerge = true,
        keepdistance = 300,
        attackrange = 1500,
        offpos = Vector( -2.4, -1.65, -0.5 ),   
        offang = Angle( -12, 3, 0 ),

        clip = 32,
        tracername = "Tracer",
        damage = 6,
        spread = 0.14,
        rateoffire = 0.13,
        muzzleflash = 1,
        shelleject = "ShellEject",
        shelloffpos = Vector(-9, 7, -1),
        shelloffang = Angle( -90, 0, 0 ),
        attackanim = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1,
        attacksnd = "lambdaplayers/weapons/dayofdefeat/mp40_shoot.mp3",

        reloadtime = 1.5,
        reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        reloadanimspeed = 1.15,
        reloadsounds = { 
            { 0.3, "lambdaplayers/weapons/dayofdefeat/mp40_clipout.mp3" },
            { 0.7, "lambdaplayers/weapons/dayofdefeat/mp40_clipin.mp3" },
            { 1.0, "lambdaplayers/weapons/dayofdefeat/mp40_boltback.mp3" },
            { 1.3, "lambdaplayers/weapons/dayofdefeat/mp40_boltforward.mp3" }
        },

        islethal = true,
    }

})