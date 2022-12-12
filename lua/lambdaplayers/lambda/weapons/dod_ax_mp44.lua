table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_mp44 = {
        model = "models/lambdaplayers/dayofdefeat/w_mp44.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "Sturmgewehr 44",
        holdtype = "ar2",
        killicon = "lambdaplayers/killicons/icon_dod_mp44",
        bonemerge = true,
        keepdistance = 350,
        attackrange = 1750,
        offpos = Vector( -1.8, -2, -1.8 ),   
        offang = Angle( -12, 3, 0 ),

        clip = 30,
        tracername = "Tracer",
        damage = 7,
        spread = 0.16,
        rateoffire = 0.18,
        muzzleflash = 1,
        shelleject = "RifleShellEject",
        shelloffpos = Vector(-3, -4, 4),
        shelloffang = Angle( 0, -90, 0 ),
        attackanim = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2,
        attacksnd = "lambdaplayers/weapons/dayofdefeat/mp44_shoot.mp3",

        reloadtime = 1.7,
        reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        reloadanimspeed = 1,
        reloadsounds = { 
            { 0.3, "lambdaplayers/weapons/dayofdefeat/mp44_clipout.mp3" },
            { 0.7, "lambdaplayers/weapons/dayofdefeat/mp44_clipin1.mp3" },
            { 1.0, "lambdaplayers/weapons/dayofdefeat/mp44_clipin2.mp3" },
            { 1.3, "lambdaplayers/weapons/dayofdefeat/mp44_boltback.mp3" },
            { 1.5, "lambdaplayers/weapons/dayofdefeat/mp44_boltforward.mp3" }
        },

        islethal = true,
    }

})