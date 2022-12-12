table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_m1carb = {
        model = "models/lambdaplayers/dayofdefeat/w_m1carb.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "M1 Carbine",
        holdtype = "ar2",
        killicon = "lambdaplayers/killicons/icon_dod_m1carbine",
        bonemerge = true,
        keepdistance = 400,
        attackrange = 2100,
        offpos = Vector( -2.25, -2.25, -1.5 ),   
        offang = Angle( -12, 0, 0 ),

        clip = 15,
        tracername = "Tracer",
        damage = 7,
        spread = 0.125,
        rateoffire = 0.25,
        muzzleflash = 1,
        shelleject = "ShellEject",
        shelloffpos = Vector( -11, 5, 2 ),
        shelloffang = Angle( -90, 0, 0 ),
        attackanim = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2,
        attacksnd = "lambdaplayers/weapons/dayofdefeat/m1carbine_shoot.mp3",

        reloadtime = 1.7,
        reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        reloadanimspeed = 1,
        reloadsounds = { 
            { 0.3, "lambdaplayers/weapons/dayofdefeat/m1carbine_clipout.mp3" },
            { 0.7, "lambdaplayers/weapons/dayofdefeat/m1carbine_clipin1.mp3" },
            { 1.0, "lambdaplayers/weapons/dayofdefeat/m1carbine_clipin2.mp3" },
            { 1.3, "lambdaplayers/weapons/dayofdefeat/m1carbine_boltback.mp3" },
            { 1.5, "lambdaplayers/weapons/dayofdefeat/m1carbine_boltforward.mp3" }
        },

        islethal = true,
    }

})