package §-!!§
{
   import § !D§.§'"u§;
   import § !D§.§;M§;
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §8#t§.b2BodyDef;
   import §8#t§.b2FilterData;
   import §8#t§.b2Fixture;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §?§.§,Y§;
   import §]!o§.b2CircleShape;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §5"W§ extends §`6§
   {
      
      public static const §5S§:String = "special";
      
      public static const §1"F§:String = "fly";
      
      public static const §4#Z§:String = "fly_yell";
      
      protected static const §;y§:Number = 20000;
      
      protected static const §8!h§:Number = 3000;
      
      protected static const §8O§:Number = 0.2;
       
      
      private var §!#=§:Number;
      
      protected var §,"W§:Boolean = false;
      
      protected var §-"]§:int;
      
      private var §'!<§:Boolean = false;
      
      public function §5"W§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         if(param7)
         {
            this.scream();
            this.§'#R§();
         }
         else
         {
            this.fly();
         }
         §0U§ = §5I§;
      }
      
      public function set §3H§(param1:Boolean) : void
      {
         this.§'!<§ = param1;
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return this.§,"W§;
      }
      
      public function get launchForce() : Number
      {
         return §;M§.§7#3§;
      }
      
      override public function get isFlying() : Boolean
      {
         if(getBody().IsAwake() && health == §1#H§)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§3"P§ && !§"!i§ && !this.specialPowerUsed;
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
            _loc2_ = §!!H§.getItemDensity();
            _loc3_ = (§=#w§.GetFixtureList().GetShape() as b2CircleShape).§7"z§();
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
         _loc1_.§`!+§ = §2!F§;
         _loc1_.§#"5§ = 65535;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§,"W§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§,"W§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.isFlying)
         {
            §]+§.setAnimation(§4#Z§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§,"W§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §]+§.setAnimation(§1"F§,false);
      }
      
      protected function specialPower(param1:§ #'§, param2:Number = 0, param3:Number = 0) : void
      {
         §]+§.setAnimation(§5S§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§ #'§) : Boolean
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
         _loc3_.§`#+§ = true;
         _loc3_.angularDamping = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < §1#H§ && (§=!a§() || !this.§@![§))
         {
            this.§!#=§ += param1;
            if(this.§!#=§ >= §8!h§)
            {
               return true;
            }
         }
         else
         {
            this.§!#=§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < §1#H§ || getBody() == null)
         {
            return false;
         }
         if(§^$@§)
         {
            return false;
         }
         return §3$%§;
      }
      
      override protected function handleInitialCollision() : void
      {
         §3$%§ = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:§ #'§) : Boolean
      {
         var _loc2_:Boolean = super.addTrail(param1);
         this.§,#d§(param1);
         return _loc2_;
      }
      
      protected function §,#d§(param1:§ #'§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §?#R§();
         var _loc3_:Number = §;M§.§&#y§;
         if(_loc2_ > _loc3_ && Math.random() < §8O§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.addParticle(§'Y§.§7!s§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§'Y§.getParticleMaterialFromEngineMaterial(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      protected function §'#R§() : void
      {
         if(this.isFlying)
         {
            § !W§();
         }
      }
      
      override public function activateSpecialPower(param1:§ #'§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.§,"W§ = true;
            §7#?§();
            this.specialPower(param1,param2,param3);
            if(this.shouldShowCloudOnSpecialPowerUse)
            {
               §-!o§();
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
      
      private function §#"&§(param1:int) : int
      {
         return Math.min(§%"T§.§;`§.§@"H§,param1);
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
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
         if(this.§'!<§)
         {
            _loc2_ = getBody().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         §=z§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 && param3.levelItem && param3.levelItem.specialtyAvailableAfterCollision)
         {
            return health;
         }
         if(health == §1#H§)
         {
            §&!+§(-1);
         }
         this.addDamageParticles(param2,param1);
         §1c§(param1,param2);
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
         this.§-"]§ = §>"&§;
      }
      
      protected function get §@![§() : Boolean
      {
         return §>"&§ - this.§-"]§ < §;y§;
      }
      
      override protected function addDestructionParticles(param1:§ #'§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §`$5§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§#"&§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§]+§.width * §'"u§.§'#e§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§]+§.height * §'"u§.§'#e§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§'Y§.§7!s§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§'Y§.getParticleMaterialFromEngineMaterial(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§ #'§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §?#R§() / 10;
         var _loc4_:int = 1 + _loc3_ * §`$5§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§#"&§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§<#r§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§'Y§.§7!s§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§'Y§.getParticleMaterialFromEngineMaterial(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
      
      override public function updateBeforeRemoving(param1:§ #'§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         handleLevelEndCheck();
      }
   }
}
