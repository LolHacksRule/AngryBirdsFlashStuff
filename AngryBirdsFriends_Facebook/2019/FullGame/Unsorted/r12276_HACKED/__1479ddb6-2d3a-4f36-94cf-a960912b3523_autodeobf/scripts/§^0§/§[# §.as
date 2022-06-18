package §^0§
{
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §,!T§.b2CircleShape;
   import §-!j§.§-"8§;
   import §3#h§.b2BodyDef;
   import §3#h§.b2FilterData;
   import §3#h§.b2Fixture;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §?$#§.§;![§;
   import §?$#§.§<d§;
   import §@"v§.§@$<§;
   
   public class §[# § extends §[$?§
   {
      
      public static const §^#@§:String = "special";
      
      public static const §]"$§:String = "fly";
      
      public static const §,"U§:String = "fly_yell";
      
      protected static const §4#D§:Number = 20000;
      
      protected static const §?!d§:Number = 3000;
      
      protected static const §9$&§:Number = 0.2;
       
      
      private var §'"I§:Number;
      
      protected var §8#n§:Boolean = false;
      
      protected var §]"y§:int;
      
      private var §2"a§:Boolean = false;
      
      public function §[# §(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         if(param7)
         {
            this.scream();
            this.§##L§();
         }
         else
         {
            this.fly();
         }
         §4"'§ = §,"o§;
      }
      
      public function set §!"x§(param1:Boolean) : void
      {
         this.§2"a§ = param1;
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return this.§8#n§;
      }
      
      public function get launchForce() : Number
      {
         return §;![§.§^",§;
      }
      
      override public function get isFlying() : Boolean
      {
         if(getBody().IsAwake() && health == §,D§)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§-#8§ && !§#$8§ && !this.specialPowerUsed;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:b2Fixture = super.createFixture();
         if(scale > 1)
         {
            _loc2_ = §8!'§.getItemDensity();
            _loc3_ = (§%#b§.GetFixtureList().GetShape() as b2CircleShape).§]$-§();
            _loc4_ = _loc3_ / scale;
            _loc6_ = Number(_loc2_ * Math.PI * _loc4_ * _loc4_) / (Math.PI * _loc3_ * _loc3_);
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
         _loc1_.§1$3§ = §?M§;
         _loc1_.§@>§ = 65535;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§8#n§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§8#n§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.isFlying)
         {
            §-"p§.setAnimation(§,"U§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§8#n§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §-"p§.setAnimation(§]"$§,false);
      }
      
      protected function specialPower(param1:§>"T§, param2:Number = 0, param3:Number = 0) : void
      {
         §-"p§.setAnimation(§^#@§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§>"T§) : Boolean
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
         _loc3_.§#s§ = true;
         _loc3_.angularDamping = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < §,D§ && (§ A§() || !this.§0"N§))
         {
            this.§'"I§ += param1;
            if(this.§'"I§ >= §?!d§)
            {
               return true;
            }
         }
         else
         {
            this.§'"I§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < §,D§ || getBody() == null)
         {
            return false;
         }
         if(§8<§)
         {
            return false;
         }
         return §<#?§;
      }
      
      override protected function handleInitialCollision() : void
      {
         §<#?§ = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:§>"T§) : Boolean
      {
         var _loc2_:Boolean = super.addTrail(param1);
         this.§&!J§(param1);
         return _loc2_;
      }
      
      protected function §&!J§(param1:§>"T§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §,$<§();
         var _loc3_:Number = §;![§.§"#C§;
         if(_loc2_ > _loc3_ && Math.random() < §9$&§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.addParticle(§`#I§.§5$"§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§`#I§.getParticleMaterialFromEngineMaterial(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      protected function §##L§() : void
      {
         if(this.isFlying)
         {
            §&"?§();
         }
      }
      
      override public function activateSpecialPower(param1:§>"T§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.§8#n§ = true;
            §9$ §();
            this.specialPower(param1,param2,param3);
            if(this.shouldShowCloudOnSpecialPowerUse)
            {
               §]!b§();
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
      
      private function § !@§(param1:int) : int
      {
         return Math.min(§+!p§.§`?§.§@"b§,param1);
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
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
         if(this.§2"a§)
         {
            _loc2_ = getBody().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         §%"C§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 && param3.levelItem && param3.levelItem.specialtyAvailableAfterCollision)
         {
            return health;
         }
         if(health == §,D§)
         {
            §;!`§(-1);
         }
         this.addDamageParticles(param2,param1);
         §4$"§(param1,param2);
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
         this.§]"y§ = §<K§;
      }
      
      protected function get §0"N§() : Boolean
      {
         return §<K§ - this.§]"y§ < §4#D§;
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §%$$§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§ !@§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§-"p§.width * §<d§.§6@§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§-"p§.height * §<d§.§6@§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§`#I§.§5$"§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§`#I§.getParticleMaterialFromEngineMaterial(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§>"T§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §,$<§() / 10;
         var _loc4_:int = 1 + _loc3_ * §%$$§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§ !@§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§##M§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§`#I§.§5$"§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§`#I§.getParticleMaterialFromEngineMaterial(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
      
      override public function updateBeforeRemoving(param1:§>"T§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         handleLevelEndCheck();
      }
   }
}
