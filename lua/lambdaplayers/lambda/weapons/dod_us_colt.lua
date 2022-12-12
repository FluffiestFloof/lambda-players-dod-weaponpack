table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_colt = {
        model = "models/lambdaplayers/dayofdefeat/w_colt.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "Colt M1911A1",
        holdtype = "pistol",
        killicon = "lambdaplayers/killicons/icon_dod_colt",
        bonemerge = true,
        keepdistance = 350,
        attackrange = 2000,
        offpos = Vector( -2.5, -1.25, 0 ),

        clip = 7,
        tracername = "Tracer",
        damage = 7,
        spread = 0.1,
        rateoffire = 0.4,
        muzzleflash = 1,
        shelleject = "ShellEject",
        shelloffpos = Vector( 0, 0, 0 ),
        shelloffang = Angle( 0, -180, 0 ),
        attackanim = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL,
        attacksnd = "lambdaplayers/weapons/dayofdefeat/colt_shoot.mp3",

        reloadtime = 1.5,
        reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        reloadanimspeed = 1.15,
        reloadsounds = { 
            { 0.3, "lambdaplayers/weapons/dayofdefeat/colt_clipout.mp3" },
            { 0.7, "lambdaplayers/weapons/dayofdefeat/colt_clipin.mp3" },
            { 1.1, "lambdaplayers/weapons/dayofdefeat/colt_boltback.mp3" },
            { 1.3, "lambdaplayers/weapons/dayofdefeat/colt_boltforward.mp3" }
        },

        islethal = true,
    }

})