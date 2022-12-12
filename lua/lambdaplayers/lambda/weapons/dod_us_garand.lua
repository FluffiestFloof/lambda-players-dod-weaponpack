table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_garand = {
        model = "models/lambdaplayers/dayofdefeat/w_garand.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "M1 Garand",
        holdtype = "ar2",
        killicon = "lambdaplayers/killicons/icon_dod_garand",
        bonemerge = true,
        keepdistance = 450,
        attackrange = 2750,
        offpos = Vector( -2.5, -2.25, -1 ),   
        offang = Angle( -12, 0, 0 ),

        clip = 8,
        tracername = "Tracer",
        damage = 11,
        spread = 0.14,
        rateoffire = 0.40,
        muzzleflash = 1,
        shelleject = "RifleShellEject",
        shelloffpos = Vector( -15, 8, 3 ),
        shelloffang = Angle( -90, 0, 0),
        attackanim = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2,
        attacksnd = "lambdaplayers/weapons/dayofdefeat/garand_shoot.mp3",

        reloadtime = 1.8,
        reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        reloadanimspeed = 1,
        reloadsounds = { 
            { 0.0, "lambdaplayers/weapons/dayofdefeat/garand_clipding.mp3" },
            { 0.7, "lambdaplayers/weapons/dayofdefeat/garand_clipin1.mp3" },
            { 1.25, "lambdaplayers/weapons/dayofdefeat/garand_clipin2.mp3" },
            { 1.6, "lambdaplayers/weapons/dayofdefeat/garand_boltforward.mp3" }
        },

        islethal = true,
    }

})