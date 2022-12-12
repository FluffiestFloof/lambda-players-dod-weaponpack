table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_thompson = {
        model = "models/lambdaplayers/dayofdefeat/w_thompson.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "M1A1 Thompson",
        holdtype = "ar2",
        killicon = "lambdaplayers/killicons/icon_dod_thompson",
        bonemerge = true,
        keepdistance = 300,
        attackrange = 1500,
        offpos = Vector( -1.8, -2, -1.25 ),   
        offang = Angle( -12, 0, 0 ),

        clip = 30,
        tracername = "Tracer",
        damage = 5,
        spread = 0.135,
        rateoffire = 0.09,
        muzzleflash = 1,
        shelleject = "ShellEject",
        shelloffpos = Vector( -3, 0, 0 ),
        shelloffang = Angle( 0, -180, 0 ),
        attackanim = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2,
        attacksnd = "lambdaplayers/weapons/dayofdefeat/thompson_shoot.mp3",

        reloadtime = 1.5,
        reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        reloadanimspeed = 1.1,
        reloadsounds = { 
            { 0.3, "lambdaplayers/weapons/dayofdefeat/thompson_clipout.mp3" },
            { 0.7, "lambdaplayers/weapons/dayofdefeat/thompson_clipin.mp3" },
            { 1.0, "lambdaplayers/weapons/dayofdefeat/thompson_boltback.mp3" },
            { 1.3, "lambdaplayers/weapons/dayofdefeat/thompson_boltforward.mp3" }
        },

        islethal = true,
    }

})