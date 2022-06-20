package §^0§
{
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2FilterData;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §[#S§ extends §=Q§
   {
       
      
      private var §68§:§#$%§;
      
      private var §'!U§:Boolean;
      
      private var §""k§:Boolean;
      
      public function §[#S§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§'!U§ = true;
         this.§""k§ = true;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§1$3§ = §%#L§;
         _loc1_.§@>§ = 65535;
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 == this.§68§ || param3 && param3.levelItem.specialtyAvailableAfterCollision)
         {
            return health;
         }
         this.§""k§ = false;
         handleLevelEndCheck();
         if(this.§68§)
         {
            this.§68§.§4"6§();
         }
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return !this.§'!U§;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.§""k§ && this.§'!U§;
      }
      
      override public function activateSpecialPower(param1:§>"T§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.§^"g§(param1);
            return true;
         }
         return false;
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         var _loc2_:Number = !!§;"z§ ? Number(2) : Number(1.5);
         §+!p§.§`?§.particles.addSimpleParticle("BOOMBOX_EXPLOSION",§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,750,"",§`#I§.§@!T§,0,0,0,0,_loc2_,8,true);
      }
      
      private function §^"g§(param1:§>"T§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc2_:b2Vec2 = getBody().GetPosition();
         this.§68§ = param1.addObject("PARACHUTE",_loc2_.x,_loc2_.y,0,§%"^§.ID_NEXT_FREE,false,false,false,1,false,false,0,getBody().GetLinearVelocity(),0,4) as §#$%§;
         this.§'!U§ = false;
         this.§68§.§@"`§(this);
         _loc3_ = getBody().GetLinearVelocity();
         _loc3_.x *= 0.5;
         _loc3_.y *= 0.5;
         getBody().SetLinearVelocity(_loc3_);
         §^l§(0);
         var _loc6_:Number = 360 / 20;
         var _loc7_:int = 0;
         while(_loc7_ < 20)
         {
            _loc8_ = 10 + 10 * Math.random();
            _loc9_ = _loc6_ * _loc7_ * Math.PI / 180;
            §+!p§.§`?§.particles.addSimpleParticle("Effect_Trail_Bird1",§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_.x,_loc2_.y - 7,500,"",0,_loc8_ * Math.cos(_loc9_),-_loc8_ * Math.sin(_loc9_),10,400,1);
            _loc7_++;
         }
         §+!p§.§`?§.particles.addSimpleParticle("BLAST_EFFECT","BLAST_EFFECT",§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_STATIC_PARTICLE,_loc2_.x,_loc2_.y - 7,500,"",0,0,0,0,0,1,12,true);
         §]!b§();
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.update(param1,param2);
         if(this.§68§ && !this.§68§.§5"7§)
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
            §^l§(7);
         }
         else
         {
            getBody().SetAngularDamping(0);
            getBody().SetLinearDamping(0);
         }
      }
      
      override public function updateBeforeRemoving(param1:§>"T§, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         super.updateBeforeRemoving(param1,param2);
         if(this.§68§)
         {
            this.§68§.§4"6§();
         }
         if(param1)
         {
            _loc3_ = !!§;"z§ ? int(§1!M§.§;#E§) : int(§1!M§.§="X§);
            param1.addExplosion(_loc3_,getBody().GetPosition().x,getBody().GetPosition().y);
         }
         handleLevelEndCheck();
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         return this.§'!U§ || §#!r§();
      }
   }
}
