table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_mg42 = {
        model = "models/lambdaplayers/dayofdefeat/w_mg42bu.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "Maschinengewehr 42",
        holdtype = "crossbow",
        killicon = "lambdaplayers/killicons/icon_dod_mg42bu",
        bonemerge = true,
        keepdistance = 250,
        attackrange = 1250,
        addspeed = -50,
        offpos = Vector( -2.2, -2, -1.5 ),   
        offang = Angle( -5, 0, 5 ),

        clip = 250,
        tracername = "Tracer",
        damage = 9,
        spread = 0.2,
        rateoffire = 0.065,
        muzzleflash = 1,
        shelleject = "RifleShellEject",
        shelloffpos = Vector( -15, 8, 0 ),
        shelloffang = Angle( 0, -180, 0 ),
        attackanim = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2,
        attacksnd = "lambdaplayers/weapons/dayofdefeat/mg42_shoot.mp3",

        reloadtime = 2,
        reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        reloadanimspeed = 1,
        reloadsounds = { 
            { 0, "lambdaplayers/weapons/dayofdefeat/mg42_coverup.mp3" },
            { 0.7, "lambdaplayers/weapons/dayofdefeat/mg42_bulletchain1.mp3" },
            { 1.25, "lambdaplayers/weapons/dayofdefeat/mg42_bulletchain2.mp3" },
            { 1.4, "lambdaplayers/weapons/dayofdefeat/mg42_coverdown.mp3" },
            { 1.6, "lambdaplayers/weapons/dayofdefeat/mg42_boltback.mp3" },
            { 1.75, "lambdaplayers/weapons/dayofdefeat/mg42_boltforward.mp3" }
        },

        islethal = true,
    }

})