table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_c96 = {
        model = "models/lambdaplayers/dayofdefeat/w_c96.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "Mauser C96",
        holdtype = "pistol",
        killicon = "lambdaplayers/killicons/icon_dod_c96",
        bonemerge = true,
        keepdistance = 300,
        attackrange = 1500,
        offpos = Vector( -2, -1.25, -0.3),   
        offang = Angle( -5, 0, 0 ),

        clip = 20,
        tracername = "Tracer",
        damage = 6,
        spread = 0.13,
        rateoffire = 0.1,
        muzzleflash = 1,
        shelleject = "ShellEject",
        shelloffpos = Vector( 0, 0, 2 ),
        shelloffang = Angle( -90, 0, 0 ),
        attackanim = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL,
        attacksnd = "lambdaplayers/weapons/dayofdefeat/c96_shoot.mp3",

        reloadtime = 1.7,
        reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        reloadanimspeed = 1,
        reloadsounds = { 
            { 0.3, "lambdaplayers/weapons/dayofdefeat/c96_clipout.mp3" },
            { 0.7, "lambdaplayers/weapons/dayofdefeat/c96_clipin1.mp3" },
            { 1.0, "lambdaplayers/weapons/dayofdefeat/c96_clipin2.mp3" },
            { 1.3, "lambdaplayers/weapons/dayofdefeat/c96_boltback.mp3" },
            { 1.5, "lambdaplayers/weapons/dayofdefeat/c96_boltforward.mp3" }
        },

        islethal = true,
    }

})