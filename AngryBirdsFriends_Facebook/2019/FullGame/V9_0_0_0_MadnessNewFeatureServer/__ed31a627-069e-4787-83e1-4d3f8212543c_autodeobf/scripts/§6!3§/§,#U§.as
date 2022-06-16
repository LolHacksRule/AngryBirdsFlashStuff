package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2FilterData;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §,#U§ extends §;!U§
   {
       
      
      private var §!!k§:§"9§;
      
      private var §2"-§:Boolean;
      
      private var §!C§:Boolean;
      
      public function §,#U§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§2"-§ = true;
         this.§!C§ = true;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§`"!§ = §1"r§;
         _loc1_.§#!+§ = 65535;
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 == this.§!!k§ || param3 && param3.levelItem.specialtyAvailableAfterCollision)
         {
            return health;
         }
         this.§!C§ = false;
         handleLevelEndCheck();
         if(this.§!!k§)
         {
            this.§!!k§.§ !s§();
         }
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return !this.§2"-§;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.§!C§ && this.§2"-§;
      }
      
      override public function activateSpecialPower(param1:§8$B§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.§;$B§(param1);
            return true;
         }
         return false;
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         var _loc2_:Number = !!§;!`§ ? Number(2) : Number(1.5);
         §7n§.§6#K§.particles.addSimpleParticle("BOOMBOX_EXPLOSION",§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,750,"",§6!9§.§^!+§,0,0,0,0,_loc2_,8,true);
      }
      
      private function §;$B§(param1:§8$B§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc2_:b2Vec2 = getBody().GetPosition();
         this.§!!k§ = param1.addObject("PARACHUTE",_loc2_.x,_loc2_.y,0,§'!§.ID_NEXT_FREE,false,false,false,1,false,false,0,getBody().GetLinearVelocity(),0,4) as §"9§;
         this.§2"-§ = false;
         this.§!!k§.§+Q§(this);
         _loc3_ = getBody().GetLinearVelocity();
         _loc3_.x *= 0.5;
         _loc3_.y *= 0.5;
         getBody().SetLinearVelocity(_loc3_);
         §9"&§(0);
         var _loc6_:Number = 360 / 20;
         var _loc7_:int = 0;
         while(_loc7_ < 20)
         {
            _loc8_ = 10 + 10 * Math.random();
            _loc9_ = _loc6_ * _loc7_ * Math.PI / 180;
            §7n§.§6#K§.particles.addSimpleParticle("Effect_Trail_Bird1",§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_.x,_loc2_.y - 7,500,"",0,_loc8_ * Math.cos(_loc9_),-_loc8_ * Math.sin(_loc9_),10,400,1);
            _loc7_++;
         }
         §7n§.§6#K§.particles.addSimpleParticle("BLAST_EFFECT","BLAST_EFFECT",§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_STATIC_PARTICLE,_loc2_.x,_loc2_.y - 7,500,"",0,0,0,0,0,1,12,true);
         §4$7§();
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.update(param1,param2);
         if(this.§!!k§ && !this.§!!k§.§0"k§)
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
            §9"&§(7);
         }
         else
         {
            getBody().SetAngularDamping(0);
            getBody().SetLinearDamping(0);
         }
      }
      
      override public function updateBeforeRemoving(param1:§8$B§, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         super.updateBeforeRemoving(param1,param2);
         if(this.§!!k§)
         {
            this.§!!k§.§ !s§();
         }
         if(param1)
         {
            _loc3_ = !!§;!`§ ? int(§@"e§.§61§) : int(§@"e§.§=$B§);
            param1.addExplosion(_loc3_,getBody().GetPosition().x,getBody().GetPosition().y);
         }
         handleLevelEndCheck();
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         return this.§2"-§ || §5!f§();
      }
   }
}
