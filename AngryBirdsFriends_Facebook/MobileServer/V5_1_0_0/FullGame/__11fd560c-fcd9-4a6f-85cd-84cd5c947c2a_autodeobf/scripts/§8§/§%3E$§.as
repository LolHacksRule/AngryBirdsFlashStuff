package §8§#8
{
   import § "%§.b2Vec2;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §4"O§.b2FilterData;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §>$§ extends §4!y§
   {
       
      
      private var §5"D§:§ $<§;
      
      private var §-!4§:Boolean;
      
      private var § "q§:Boolean;
      
      public function §>$§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§-!4§ = true;
         this.§ "q§ = true;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§+"p§ = §+"'§;
         _loc1_.§5!H§ = 65535;
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         if(param3 == this.§5"D§)
         {
            return health;
         }
         this.§ "q§ = false;
         handleLevelEndCheck();
         if(this.§5"D§)
         {
            this.§5"D§.§^#t§();
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return !this.§-!4§;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.§ "q§ && this.§-!4§;
      }
      
      override public function activateSpecialPower(param1:§&#V§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.§=#f§(param1);
            return true;
         }
         return false;
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         var _loc2_:Number = !!§9$&§ ? Number(2) : Number(1.5);
         §3#U§.§#$4§.particles.addSimpleParticle("BOOMBOX_EXPLOSION",§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,750,"",§@>§.§9#9§,0,0,0,0,_loc2_,8,true);
      }
      
      private function §=#f§(param1:§&#V§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc2_:b2Vec2 = getBody().GetPosition();
         this.§5"D§ = param1.addObject("PARACHUTE",_loc2_.x,_loc2_.y,0,§!#L§.ID_NEXT_FREE,false,false,false,1,false,false,0,getBody().GetLinearVelocity(),0,4) as § $<§;
         this.§-!4§ = false;
         this.§5"D§.§0#7§(this);
         _loc3_ = getBody().GetLinearVelocity();
         _loc3_.x *= 0.5;
         _loc3_.y *= 0.5;
         getBody().SetLinearVelocity(_loc3_);
         §`#o§(0);
         var _loc6_:Number = 360 / 20;
         var _loc7_:int = 0;
         while(_loc7_ < 20)
         {
            _loc8_ = 10 + 10 * Math.random();
            _loc9_ = _loc6_ * _loc7_ * Math.PI / 180;
            §3#U§.§#$4§.particles.addSimpleParticle("Effect_Trail_Bird1",§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_.x,_loc2_.y - 7,500,"",0,_loc8_ * Math.cos(_loc9_),-_loc8_ * Math.sin(_loc9_),10,400,1);
            _loc7_++;
         }
         §3#U§.§#$4§.particles.addSimpleParticle("BLAST_EFFECT","BLAST_EFFECT",§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_STATIC_PARTICLE,_loc2_.x,_loc2_.y - 7,500,"",0,0,0,0,0,1,12,true);
         § !A§();
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.update(param1,param2);
         if(this.§5"D§ && !this.§5"D§.§[P§)
         {
            _loc3_ = getBody().GetAngle();
            if(_loc3_ < 0)
            {
               _loc3_ += Math.PI * 2;
            }
            _loc4_ = (_loc4_ = Number((_loc4_ = Number(1 - param1 / 10)) < -0.01 ? Number(-0.01) : Number(_loc4_))) > 1 ? Number(1) : Number(_loc4_);
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
            §`#o§(7);
         }
         else
         {
            getBody().SetAngularDamping(0);
            getBody().SetLinearDamping(0);
         }
      }
      
      override public function updateBeforeRemoving(param1:§&#V§, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         super.updateBeforeRemoving(param1,param2);
         if(this.§5"D§)
         {
            this.§5"D§.§^#t§();
         }
         if(param1)
         {
            _loc3_ = !!§9$&§ ? int(§7"L§.§<"r§) : int(§7"L§.§^"%§);
            param1.addExplosion(_loc3_,getBody().GetPosition().x,getBody().GetPosition().y);
         }
         handleLevelEndCheck();
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         return this.§-!4§ || §!"o§();
      }
   }
}
