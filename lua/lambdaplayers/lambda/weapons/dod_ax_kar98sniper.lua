local CurTime = CurTime
local bulletInfo = {}

table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_kar98s = {
        model = "models/lambdaplayers/dayofdefeat/w_k98s.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "Mauser Karabiner 98 Kurz (with scope)",
        holdtype = "ar2",
        killicon = "lambdaplayers/killicons/icon_dod_k98s",
        bonemerge = true,
        keepdistance = 800,
        attackrange = 4500,
        offpos = Vector( -2.5, -2.25, -1.65 ),   
        offang = Angle( -10.9, 0, 0 ),

        clip = 5,

        reloadtime = 1.7,
        reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        reloadanimspeed = 1,
        reloadsounds = { 
            { 0.0, "lambdaplayers/weapons/dayofdefeat/k98_clipout.mp3" },
            { 0.6, "lambdaplayers/weapons/dayofdefeat/k98_clipin.mp3" },
            { 1.2, "lambdaplayers/weapons/dayofdefeat/k98_clipin2.mp3" },
            { 1.6, "lambdaplayers/weapons/dayofdefeat/k98_boltpull" }
        },

        callback = function( self, wepent, target )
            if self.l_Clip <= 0 then self:ReloadWeapon() return end

            self.l_WeaponUseCooldown = CurTime() + 1.5

            wepent:EmitSound( "lambdaplayers/weapons/dayofdefeat/k98_shoot.mp3" )

            self:HandleMuzzleFlash( 1 )

            bulletInfo.Attacker = self
            bulletInfo.Damage = 21
            bulletInfo.Force = 21
            bulletInfo.HullSize = 5
            bulletInfo.Num = 1
            bulletInfo.TracerName = "Tracer"
            bulletInfo.Dir = ( target:WorldSpaceCenter() - wepent:GetPos() ):GetNormalized()
            bulletInfo.Src = wepent:GetPos()
            bulletInfo.Spread = Vector( 0.075, 0.075, 0 )
            bulletInfo.IgnoreEntity = self
            wepent:FireBullets( bulletInfo )

            self:RemoveGesture( ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER )
            self:AddGesture( ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER )
            
            self:SimpleTimer( 0.2, function()
                wepent:EmitSound( "lambdaplayers/weapons/dayofdefeat/k98_boltpull.mp3" )
                self:HandleShellEject( "RifleShellEject", Vector( -6, -1, 6 ), Angle( 0, -180, 0 ) )
            end)

            self.l_Clip = self.l_Clip - 1

            return true
        end,

        islethal = true,
    }

})