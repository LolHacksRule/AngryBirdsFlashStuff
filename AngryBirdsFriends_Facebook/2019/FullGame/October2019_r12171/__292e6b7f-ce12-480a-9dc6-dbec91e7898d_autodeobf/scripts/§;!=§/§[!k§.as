package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§1§;
   import §#g§.§8§;
   import §'#K§.b2BodyDef;
   import §'#K§.b2FilterData;
   import §'#K§.b2Fixture;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §1#I§.b2CircleShape;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   
   public class §[!k§ extends §-#9§
   {
      
      public static const §-#h§:String = "special";
      
      public static const §&!V§:String = "fly";
      
      public static const §5"-§:String = "fly_yell";
      
      protected static const §2#`§:Number = 20000;
      
      protected static const §7!d§:Number = 3000;
      
      protected static const §?!c§:Number = 0.2;
       
      
      private var §!#3§:Number;
      
      protected var §5#T§:Boolean = false;
      
      protected var §%"`§:int;
      
      private var §@#!§:Boolean = false;
      
      public function §[!k§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         if(param7)
         {
            this.scream();
            this.§]7§();
         }
         else
         {
            this.fly();
         }
         §+#V§ = §8$,§;
      }
      
      public function set §;!q§(param1:Boolean) : void
      {
         this.§@#!§ = param1;
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return this.§5#T§;
      }
      
      public function get launchForce() : Number
      {
         return §1#0§.§5#d§;
      }
      
      override public function get isFlying() : Boolean
      {
         if(getBody().IsAwake() && health == §+#_§)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§,#o§ && !§3f§ && !this.specialPowerUsed;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:b2Fixture = super.createFixture();
         if(scale > 1)
         {
            _loc2_ = §]h§.getItemDensity();
            _loc3_ = (§2"j§.GetFixtureList().GetShape() as b2CircleShape).§0#Y§();
            _loc4_ = _loc3_ / scale;
            _loc6_ = (_loc5_ = _loc2_ * Math.PI * _loc4_ * _loc4_) / (Math.PI * _loc3_ * _loc3_);
            _loc1_.SetDensity(_loc6_);
            _loc1_.GetBody().ResetMassData();
         }
         return _loc1_;
      }
      
      override protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 2)
         {
            param1 = 2;
         }
         super.initializeHealth(param1);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§'#`§ = §+#N§;
         _loc1_.§<L§ = 65535;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§5#T§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§5#T§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.isFlying)
         {
            §]$"§.setAnimation(§5"-§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§5#T§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §]$"§.setAnimation(§&!V§,false);
      }
      
      protected function specialPower(param1:§]!m§, param2:Number = 0, param3:Number = 0) : void
      {
         §]$"§.setAnimation(§-#h§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§]!m§) : Boolean
      {
         if(param1 > 0)
         {
            param1 = 1;
         }
         return super.setDamageState(param1,param2);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§8!1§ = true;
         _loc3_.angularDamping = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < §+#_§ && (§4A§() || !this.§>"B§))
         {
            this.§!#3§ += param1;
            if(this.§!#3§ >= §7!d§)
            {
               return true;
            }
         }
         else
         {
            this.§!#3§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < §+#_§ || getBody() == null)
         {
            return false;
         }
         if(§7#N§)
         {
            return false;
         }
         return §3#s§;
      }
      
      override protected function handleInitialCollision() : void
      {
         §3#s§ = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:§]!m§) : Boolean
      {
         var _loc2_:Boolean = super.addTrail(param1);
         this.§]Z§(param1);
         return _loc2_;
      }
      
      protected function §]Z§(param1:§]!m§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §2#z§();
         var _loc3_:Number = §1#0§.§]$&§;
         if(_loc2_ > _loc3_ && Math.random() < §?!c§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.addParticle(§=,§.§^#Y§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§=,§.getParticleMaterialFromEngineMaterial(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      protected function §]7§() : void
      {
         if(this.isFlying)
         {
            §]!?§();
         }
      }
      
      override public function activateSpecialPower(param1:§]!m§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.§5#T§ = true;
            §%$%§();
            this.specialPower(param1,param2,param3);
            if(this.shouldShowCloudOnSpecialPowerUse)
            {
               §="H§();
            }
            return true;
         }
         return false;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.isFlying && !this.specialPowerUsed;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §[k§(param1:int) : int
      {
         return Math.min(§]$?§.§2#§.§>#G§,param1);
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.isFlying)
         {
            this.updateFlying();
         }
      }
      
      protected function updateFlying() : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc1_:Number = 0;
         if(this.§@#!§)
         {
            _loc2_ = getBody().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         §#"&§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 && param3.levelItem && param3.levelItem.specialtyAvailableAfterCollision)
         {
            return health;
         }
         if(health == §+#_§)
         {
            §>"V§(-1);
         }
         this.addDamageParticles(param2,param1);
         §0#C§(param1,param2);
         this.setDamageState(0.5,param2);
         if(param1 > 3)
         {
            playCollisionSound();
         }
         if(param1 > defence)
         {
            param1 = defence;
         }
         handleLevelEndCheck();
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.§%"`§ = §1!j§;
      }
      
      protected function get §>"B§() : Boolean
      {
         return §1!j§ - this.§%"`§ < §2#`§;
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §>#@§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§[k§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§]$"§.width * §8#3§.§2K§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§]$"§.height * §8#3§.§2K§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§=,§.§^#Y§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§=,§.getParticleMaterialFromEngineMaterial(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§]!m§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §2#z§() / 10;
         var _loc4_:int = 1 + _loc3_ * §>#@§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§[k§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§?#r§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§=,§.§^#Y§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§=,§.getParticleMaterialFromEngineMaterial(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
      
      override public function updateBeforeRemoving(param1:§]!m§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         handleLevelEndCheck();
      }
   }
}
