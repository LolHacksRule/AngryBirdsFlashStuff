package §6!3§
{
   import §!H§.b2CircleShape;
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §>2§.§!6§;
   import §>2§.§>#!§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2BodyDef;
   import §@!S§.b2FilterData;
   import §@!S§.b2Fixture;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §,s§ extends §,#f§
   {
      
      public static const §'![§:String = "special";
      
      public static const §#!h§:String = "fly";
      
      public static const §!"3§:String = "fly_yell";
      
      protected static const §!#U§:Number = 20000;
      
      protected static const § c§:Number = 3000;
      
      protected static const §,"S§:Number = 0.2;
       
      
      private var §,$E§:Number;
      
      protected var §8#Y§:Boolean = false;
      
      protected var §]$;§:int;
      
      private var §0"c§:Boolean = false;
      
      public function §,s§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         if(param7)
         {
            this.scream();
            this.§ !1§();
         }
         else
         {
            this.fly();
         }
         §]#[§ = §?!"§;
      }
      
      public function set §=#U§(param1:Boolean) : void
      {
         this.§0"c§ = param1;
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return this.§8#Y§;
      }
      
      public function get launchForce() : Number
      {
         return §>#!§.§&"R§;
      }
      
      override public function get isFlying() : Boolean
      {
         if(getBody().IsAwake() && health == §6"k§)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§]"R§ && !§2&§ && !this.specialPowerUsed;
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
            _loc2_ = §"#6§.getItemDensity();
            _loc3_ = (§ "8§.GetFixtureList().GetShape() as b2CircleShape).§[§();
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
         _loc1_.§`"!§ = §!!_§;
         _loc1_.§#!+§ = 65535;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§8#Y§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§8#Y§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.isFlying)
         {
            §="!§.setAnimation(§!"3§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§8#Y§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §="!§.setAnimation(§#!h§,false);
      }
      
      protected function specialPower(param1:§8$B§, param2:Number = 0, param3:Number = 0) : void
      {
         §="!§.setAnimation(§'![§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§8$B§) : Boolean
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
         _loc3_.§`#J§ = true;
         _loc3_.angularDamping = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < §6"k§ && (§>"@§() || !this.§+!]§))
         {
            this.§,$E§ += param1;
            if(this.§,$E§ >= § c§)
            {
               return true;
            }
         }
         else
         {
            this.§,$E§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < §6"k§ || getBody() == null)
         {
            return false;
         }
         if(§1`§)
         {
            return false;
         }
         return §""I§;
      }
      
      override protected function handleInitialCollision() : void
      {
         §""I§ = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:§8$B§) : Boolean
      {
         var _loc2_:Boolean = super.addTrail(param1);
         this.§+[§(param1);
         return _loc2_;
      }
      
      protected function §+[§(param1:§8$B§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §4">§();
         var _loc3_:Number = §>#!§.§`>§;
         if(_loc2_ > _loc3_ && Math.random() < §,"S§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.addParticle(§6!9§.§?!R§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§6!9§.getParticleMaterialFromEngineMaterial(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      protected function § !1§() : void
      {
         if(this.isFlying)
         {
            §-#"§();
         }
      }
      
      override public function activateSpecialPower(param1:§8$B§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.§8#Y§ = true;
            §[#w§();
            this.specialPower(param1,param2,param3);
            if(this.shouldShowCloudOnSpecialPowerUse)
            {
               §4$7§();
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
      
      private function §%#f§(param1:int) : int
      {
         return Math.min(§7n§.§6#K§.§9!i§,param1);
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
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
         if(this.§0"c§)
         {
            _loc2_ = getBody().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         §9"p§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 && param3.levelItem && param3.levelItem.specialtyAvailableAfterCollision)
         {
            return health;
         }
         if(health == §6"k§)
         {
            §`!?§(-1);
         }
         this.addDamageParticles(param2,param1);
         §9##§(param1,param2);
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
         this.§]$;§ = §7$;§;
      }
      
      protected function get §+!]§() : Boolean
      {
         return §7$;§ - this.§]$;§ < §!#U§;
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §'"l§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§%#f§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§="!§.width * §!6§.§[#v§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§="!§.height * §!6§.§[#v§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§6!9§.§?!R§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§6!9§.getParticleMaterialFromEngineMaterial(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§8$B§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §4">§() / 10;
         var _loc4_:int = 1 + _loc3_ * §'"l§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§%#f§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§[#5§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§6!9§.§?!R§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§6!9§.getParticleMaterialFromEngineMaterial(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
      
      override public function updateBeforeRemoving(param1:§8$B§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         handleLevelEndCheck();
      }
   }
}
