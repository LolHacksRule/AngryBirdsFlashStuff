package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2FilterData;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   
   public class §+#v§ extends §>"G§
   {
       
      
      private var §,&§:§`G§;
      
      private var §9#J§:Boolean;
      
      private var §%"e§:Boolean;
      
      public function §+#v§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§9#J§ = true;
         this.§%"e§ = true;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§'#`§ = §[!u§;
         _loc1_.§<L§ = 65535;
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 == this.§,&§ || param3 && param3.levelItem.specialtyAvailableAfterCollision)
         {
            return health;
         }
         this.§%"e§ = false;
         handleLevelEndCheck();
         if(this.§,&§)
         {
            this.§,&§.§]#Y§();
         }
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return !this.§9#J§;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.§%"e§ && this.§9#J§;
      }
      
      override public function activateSpecialPower(param1:§]!m§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.§@@§(param1);
            return true;
         }
         return false;
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
      {
         var _loc2_:Number = !!§?"[§ ? Number(2) : Number(1.5);
         §]$?§.§2#§.particles.addSimpleParticle("BOOMBOX_EXPLOSION",§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,750,"",§=,§.§?E§,0,0,0,0,_loc2_,8,true);
      }
      
      private function §@@§(param1:§]!m§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc2_:b2Vec2 = getBody().GetPosition();
         this.§,&§ = param1.addObject("PARACHUTE",_loc2_.x,_loc2_.y,0,§ !i§.ID_NEXT_FREE,false,false,false,1,false,false,0,getBody().GetLinearVelocity(),0,4) as §`G§;
         this.§9#J§ = false;
         this.§,&§.§9#,§(this);
         _loc3_ = getBody().GetLinearVelocity();
         _loc3_.x *= 0.5;
         _loc3_.y *= 0.5;
         getBody().SetLinearVelocity(_loc3_);
         §-"m§(0);
         var _loc6_:Number = 360 / 20;
         var _loc7_:int = 0;
         while(_loc7_ < 20)
         {
            _loc8_ = 10 + 10 * Math.random();
            _loc9_ = _loc6_ * _loc7_ * Math.PI / 180;
            §]$?§.§2#§.particles.addSimpleParticle("Effect_Trail_Bird1",§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_.x,_loc2_.y - 7,500,"",0,_loc8_ * Math.cos(_loc9_),-_loc8_ * Math.sin(_loc9_),10,400,1);
            _loc7_++;
         }
         §]$?§.§2#§.particles.addSimpleParticle("BLAST_EFFECT","BLAST_EFFECT",§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_STATIC_PARTICLE,_loc2_.x,_loc2_.y - 7,500,"",0,0,0,0,0,1,12,true);
         §="H§();
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.update(param1,param2);
         if(this.§,&§ && !this.§,&§.§,#J§)
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
            §-"m§(7);
         }
         else
         {
            getBody().SetAngularDamping(0);
            getBody().SetLinearDamping(0);
         }
      }
      
      override public function updateBeforeRemoving(param1:§]!m§, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         super.updateBeforeRemoving(param1,param2);
         if(this.§,&§)
         {
            this.§,&§.§]#Y§();
         }
         if(param1)
         {
            _loc3_ = !!§?"[§ ? int(§,c§.§&l§) : int(§,c§.§<"o§);
            param1.addExplosion(_loc3_,getBody().GetPosition().x,getBody().GetPosition().y);
         }
         handleLevelEndCheck();
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         return this.§9#J§ || §'N§();
      }
   }
}
