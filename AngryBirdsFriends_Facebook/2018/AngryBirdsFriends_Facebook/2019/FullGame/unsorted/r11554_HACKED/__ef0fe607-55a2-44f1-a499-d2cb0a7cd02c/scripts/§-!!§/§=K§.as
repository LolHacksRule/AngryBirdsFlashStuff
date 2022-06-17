package §-!!§
{
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §8#t§.b2FilterData;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §=K§ extends §8"J§
   {
       
      
      private var §'$"§:§21§;
      
      private var §["Y§:Boolean;
      
      private var §-$=§:Boolean;
      
      public function §=K§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§["Y§ = true;
         this.§-$=§ = true;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§`!+§ = §[!n§;
         _loc1_.§#"5§ = 65535;
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 == this.§'$"§ || param3 && param3.levelItem.specialtyAvailableAfterCollision)
         {
            return health;
         }
         this.§-$=§ = false;
         handleLevelEndCheck();
         if(this.§'$"§)
         {
            this.§'$"§.§=#Z§();
         }
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return !this.§["Y§;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.§-$=§ && this.§["Y§;
      }
      
      override public function activateSpecialPower(param1:§ #'§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.§-!S§(param1);
            return true;
         }
         return false;
      }
      
      override protected function addDestructionParticles(param1:§ #'§) : void
      {
         var _loc2_:Number = !!§@$&§ ? Number(2) : Number(1.5);
         §%"T§.§;`§.particles.addSimpleParticle("BOOMBOX_EXPLOSION",§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,750,"",§'Y§.§2d§,0,0,0,0,_loc2_,8,true);
      }
      
      private function §-!S§(param1:§ #'§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc2_:b2Vec2 = getBody().GetPosition();
         this.§'$"§ = param1.addObject("PARACHUTE",_loc2_.x,_loc2_.y,0,§7S§.ID_NEXT_FREE,false,false,false,1,false,false,0,getBody().GetLinearVelocity(),0,4) as §21§;
         this.§["Y§ = false;
         this.§'$"§.§`#l§(this);
         _loc3_ = getBody().GetLinearVelocity();
         _loc3_.x *= 0.5;
         _loc3_.y *= 0.5;
         getBody().SetLinearVelocity(_loc3_);
         §6-§(0);
         var _loc6_:Number = 360 / 20;
         var _loc7_:int = 0;
         while(_loc7_ < 20)
         {
            _loc8_ = 10 + 10 * Math.random();
            _loc9_ = _loc6_ * _loc7_ * Math.PI / 180;
            §%"T§.§;`§.particles.addSimpleParticle("Effect_Trail_Bird1",§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_.x,_loc2_.y - 7,500,"",0,_loc8_ * Math.cos(_loc9_),-_loc8_ * Math.sin(_loc9_),10,400,1);
            _loc7_++;
         }
         §%"T§.§;`§.particles.addSimpleParticle("BLAST_EFFECT","BLAST_EFFECT",§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_STATIC_PARTICLE,_loc2_.x,_loc2_.y - 7,500,"",0,0,0,0,0,1,12,true);
         §-!o§();
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.update(param1,param2);
         if(this.§'$"§ && !this.§'$"§.§<"3§)
         {
            _loc3_ = getBody().GetAngle();
            if(_loc3_ < 0)
            {
               _loc3_ += Math.PI * 2;
            }
            _loc4_ = (_loc4_ = (_loc4_ = 1 - param1 / 10) < -0.01 ? Number(-0.01) : Number(_loc4_)) > 1 ? Number(1) : Number(_loc4_);
            if(_loc3_ < Math.PI)
            {
               _loc3_ *= _loc4_;
            }
            else
            {
               _loc3_ = Math.PI * 4 - (Math.PI * 2 - _loc3_) * _loc4_;
            }
            getBody().SetAngle(_loc3_);
            getBody().SetAngularDamping(1);
            getBody().SetLinearDamping(1);
         }
         else if(this.canActivateSpecialPower)
         {
            §6-§(7);
         }
         else
         {
            getBody().SetAngularDamping(0);
            getBody().SetLinearDamping(0);
         }
      }
      
      override public function updateBeforeRemoving(param1:§ #'§, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         super.updateBeforeRemoving(param1,param2);
         if(this.§'$"§)
         {
            this.§'$"§.§=#Z§();
         }
         if(param1)
         {
            _loc3_ = !!§@$&§ ? int(§"#6§.§`"#§) : int(§"#6§.§6#]§);
            param1.addExplosion(_loc3_,getBody().GetPosition().x,getBody().GetPosition().y);
         }
         handleLevelEndCheck();
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         return this.§["Y§ || §>"O§();
      }
   }
}
