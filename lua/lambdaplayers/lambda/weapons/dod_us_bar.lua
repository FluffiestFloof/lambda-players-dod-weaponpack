table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_bar = {
        model = "models/lambdaplayers/dayofdefeat/w_bar.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "Browning Automatic Rifle",
        holdtype = "ar2",
        killicon = "lambdaplayers/killicons/icon_dod_bar",
        bonemerge = true,
        keepdistance = 400,
        attackrange = 2100,
        offpos = Vector( -2.5, -2.25, -1 ),   
        offang = Angle( -12, 0, 0 ),

        clip = 20,
        tracername = "Tracer",
        damage = 10,
        spread = 0.175,
        rateoffire = 0.2,
        muzzleflash = 1,
        shelleject = "RifleShellEject",
        shelloffpos = Vector(-12, -5, 0),
        shelloffang = Angle( 0, -90, 0 ),
        attackanim = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2,
        attacksnd = "lambdaplayers/weapons/dayofdefeat/bar_shoot.mp3",

        reloadtime = 1.7,
        reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        reloadanimspeed = 1.05,
        reloadsounds = { 
            { 0.3, "lambdaplayers/weapons/dayofdefeat/bar_clipout.mp3" },
            { 0.7, "lambdaplayers/weapons/dayofdefeat/bar_clipin1.mp3" },
            { 1.0, "lambdaplayers/weapons/dayofdefeat/bar_clipin2.mp3" },
            { 1.3, "lambdaplayers/weapons/dayofdefeat/bar_boltback.mp3" },
            { 1.5, "lambdaplayers/weapons/dayofdefeat/bar_boltforward.mp3" }
        },

        islethal = true,
    }

})