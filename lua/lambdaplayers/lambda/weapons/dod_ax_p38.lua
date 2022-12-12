table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_p38 = {
        model = "models/lambdaplayers/dayofdefeat/w_p38.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "Walther P38",
        holdtype = "pistol",
        killicon = "lambdaplayers/killicons/icon_dod_p38",
        bonemerge = true,
        keepdistance = 350,
        attackrange = 2000,
        offpos = Vector( -2.5, -1.25, -0.3 ),   
        offang = Angle( -5, 0, 0 ),

        clip = 8,
        tracername = "Tracer",
        damage = 6,
        spread = 0.12,
        rateoffire = 0.3,
        muzzleflash = 1,
        shelleject = "ShellEject",
        shelloffpos = Vector( -6, 3, 2 ),
        shelloffang = Angle( -90, 0, 0 ),
        attackanim = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL,
        attacksnd = "lambdaplayers/weapons/dayofdefeat/p38_shoot.mp3",

        reloadtime = 1.5,
        reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        reloadanimspeed = 1.1,
        reloadsounds = { 
            { 0.3, "lambdaplayers/weapons/dayofdefeat/p38_clipout.mp3" },
            { 0.7, "lambdaplayers/weapons/dayofdefeat/p38_clipin.mp3" },
            { 1.1, "lambdaplayers/weapons/dayofdefeat/p38_boltback.mp3" },
            { 1.3, "lambdaplayers/weapons/dayofdefeat/p38_boltforward.mp3" }
        },

        islethal = true,
    }

})