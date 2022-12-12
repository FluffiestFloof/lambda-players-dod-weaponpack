table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_30cal = {
        model = "models/lambdaplayers/dayofdefeat/w_30cal.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "Browning M1919A6",
        holdtype = "crossbow",
        killicon = "lambdaplayers/killicons/icon_dod_30cal",
        bonemerge = true,
        keepdistance = 300,
        attackrange = 1300,
        addspeed = -50,
        offpos = Vector( -2.2, -2.2, 0.75 ),
        offang = Angle( -5, 0, 5 ),

        clip = 150,
        tracername = "Tracer",
        damage = 8,
        spread = 0.18,
        rateoffire = 0.1,
        muzzleflash = 1,
        shelleject = "RifleShellEject",
        shelloffpos = Vector( -19, 8, 0 ),
        shelloffang = Angle( 0, -180, 0 ),
        attackanim = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2,
        attacksnd = "lambdaplayers/weapons/dayofdefeat/30cal_shoot.mp3",

        reloadtime = 2,
        reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        reloadanimspeed = 1,
        reloadsounds = { 
            { 0, "lambdaplayers/weapons/dayofdefeat/30cal_coverup.mp3" },
            { 0.7, "lambdaplayers/weapons/dayofdefeat/30cal_bulletchain1.mp3" },
            { 1.25, "lambdaplayers/weapons/dayofdefeat/30cal_bulletchain2.mp3" },
            { 1.4, "lambdaplayers/weapons/dayofdefeat/30cal_coverdown.mp3" },
            { 1.6, "lambdaplayers/weapons/dayofdefeat/30cal_boltback.mp3" },
            { 1.75, "lambdaplayers/weapons/dayofdefeat/30cal_boltforward.mp3" }
        },

        islethal = true,
    }

})