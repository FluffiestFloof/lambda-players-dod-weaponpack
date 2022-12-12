local random = math.random
local CurTime = CurTime

table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_knife = {
        model = "models/lambdaplayers/dayofdefeat/w_amerk.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "M1918 Trench Knife",
        holdtype = "knife",
        killicon = "lambdaplayers/killicons/icon_dod_amerk",
        ismelee = true,
        bonemerge = true,
        keepdistance = 10,
        attackrange = 50,
        offpos = Vector( -2.5, -2, 0 ),

        damage = 15,
        rateoffire = 0.5,
        attackanim = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE,
        attacksnd = "Weapon_Crowbar.Single",
        hitsnd = "Weapon_Knife.Hit",

        OnEquip = function( lambda, wepent )
            wepent:EmitSound( "Weapon_Knife.Deploy" )
        end,

        islethal = true
    }

})