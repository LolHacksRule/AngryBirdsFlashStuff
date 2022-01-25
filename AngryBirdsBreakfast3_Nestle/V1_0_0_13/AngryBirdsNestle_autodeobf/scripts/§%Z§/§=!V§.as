package §%Z§
{
   import § 2§.§=+§;
   import § 2§.§`!d§;
   import §!m§.§'!P§;
   import §!m§.§2!k§;
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §2!s§.§2!_§;
   import §3!0§.§`i§;
   import §8+§.§5"-§;
   import §9!Z§.b2BodyDef;
   import §9!Z§.b2FilterData;
   import §9!Z§.b2World;
   import §?"'§.b2Vec2;
   import §`!B§.Sprite;
   
   public class §=!V§ extends §"K§
   {
      
      public static const §'!=§:String = "special";
      
      public static const §5!B§:String = "fly";
      
      public static const §=!N§:String = "fly_yell";
      
      protected static const §""+§:Number = 20000;
      
      protected static const §29§:Number = 3000;
      
      protected static const §,X§:Number = 0.2;
       
      
      private var §'M§:Number;
      
      protected var §1A§:Boolean = false;
      
      protected var § !m§:int = 0;
      
      protected var §[m§:Boolean = false;
      
      protected var §[%§:int;
      
      private var §9-§:Boolean = false;
      
      private var §+F§:Boolean = false;
      
      protected var § u§:Boolean;
      
      public function §=!V§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         if(param7)
         {
            this.scream();
            this.playScreamingSoundEffect();
         }
         else
         {
            this.fly();
         }
         if(§`i§.§&!L§ && §`i§.§&!L§.slingshot)
         {
            this.§ u§ = §`i§.§&!L§.slingshot.§0=§;
         }
         else
         {
            this.§ u§ = false;
         }
      }
      
      public static function §?!9§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §`i§.§&!L§.particles.§>D§("STAR_PARTICLE",§'!P§.§>!^§,§2!k§.§ g§,§'!P§.§>]§,param1,param2,750,"",§'!P§.§&%§("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function set §&8§(param1:Boolean) : void
      {
         this.§+F§ = param1;
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§1A§;
      }
      
      public function get launchForce() : Number
      {
         return §`!d§.§#!z§;
      }
      
      public function get §4c§() : Boolean
      {
         if(§-!N§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§ !B§ && !§'!f§ && !this.specialPowerUsed;
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
         _loc1_.§"!7§ = §0!M§;
         _loc1_.§ <§ = 65535 & ~§!",§;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§1A§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§1A§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§4c§)
         {
            §41§.setAnimation(§=!N§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§1A§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §41§.setAnimation(§5!B§,false);
      }
      
      protected function specialPower(param1:§8!m§, param2:Number = 0, param3:Number = 0) : void
      {
         §41§.setAnimation(§'!=§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§8!m§) : Boolean
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
         _loc3_.§`!$§ = true;
         _loc3_.§]!c§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§7G§() || !this.§-Q§))
         {
            this.§'M§ += param1;
            if(this.§'M§ >= §29§)
            {
               return true;
            }
         }
         else
         {
            this.§'M§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §-!N§() == null)
         {
            return false;
         }
         return this.§9-§;
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§9-§ = param1;
      }
      
      override protected function handleInitialCollision() : void
      {
         this.§9-§ = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:§8!m§) : Boolean
      {
         var _loc4_:String = null;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         if(!param1)
         {
            return true;
         }
         var _loc2_:Number = x * §=+§.§5!w§;
         var _loc3_:Number = y * §=+§.§5!w§;
         if(this.§[m§)
         {
            param1.§+<§(§'!P§.§1[§,§2!k§.§`]§,§'!P§.§?+§,_loc2_,_loc3_,-1,"",§'!P§.§]!R§);
            this.§ !m§ = 0;
            this.§[m§ = false;
         }
         else if(§=",§ > 1)
         {
            param1.§+<§(§'!P§.§"T§,§2!k§.§`]§,§'!P§.§?+§,_loc2_,_loc3_,-1,"",§'!P§.§]!R§);
         }
         else
         {
            _loc4_ = §'!P§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§ !m§ == 1)
            {
               _loc4_ = §'!P§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§ !m§ == 2)
            {
               _loc4_ = §'!P§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§ !m§ = (this.§ !m§ + 1) % 3;
            param1.§+<§(_loc4_,§2!k§.§`]§,§'!P§.§?+§,_loc2_,_loc3_,-1,"",§'!P§.§]!R§);
         }
         this.§]!M§(param1);
         if(this.§ u§)
         {
            §?!9§(_loc2_,_loc3_,0,3,10);
         }
         return true;
      }
      
      protected function §]!M§(param1:§8!m§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §@!d§();
         var _loc3_:Number = §`!d§.§7#§;
         if(_loc2_ > _loc3_ && Math.random() < §,X§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.§+<§(§'!P§.§^3§,§2!k§.§ g§,§'!P§.§>]§,§-!N§().GetPosition().x,§-!N§().GetPosition().y,1250,"",§'!P§.§&%§(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§4c§)
         {
            §9!9§(§2!_§.§8%§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§8!m§, param2:Number, param3:Number) : Boolean
      {
         if(this.§1A§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§1A§ = true;
            §9!9§(§2!_§.§8!=§);
            this.specialPower(param1,param2,param3);
            this.§[m§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§4c§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §[`§(param1:int) : int
      {
         return Math.min(§`i§.§&!L§.§"!M§,param1);
      }
      
      override public function update(param1:Number, param2:§8!m§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§4c§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc1_:Number = 0;
         if(this.§+F§)
         {
            _loc2_ = §-!N§().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         §+V§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§8!m§, param3:§&!-§, param4:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            §`!g§(-1);
         }
         this.addDamageParticles(param2,param1);
         this.setDamageState(0.5,param2);
         if(param1 > defence)
         {
            param1 = defence;
         }
         §,z§();
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.§[%§ = §54§;
      }
      
      protected function get §-Q§() : Boolean
      {
         return §54§ - this.§[%§ < §""+§;
      }
      
      override protected function addDestructionParticles(param1:§8!m§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §3!K§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§[`§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§41§.width * §=+§.§5!w§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§41§.height * §=+§.§5!w§) + Math.random() * -_loc8_ * 2;
            param1.§+<§(§'!P§.§^3§,§2!k§.§ g§,§'!P§.§>]§,§-!N§().GetPosition().x + _loc7_,§-!N§().GetPosition().y + _loc8_,1500,"",§'!P§.§&%§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§8!m§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §@!d§() / 10;
         var _loc4_:int = 1 + _loc3_ * §3!K§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§[`§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§+<§(§'!P§.§#!G§,§2!k§.§ g§,§'!P§.§>]§,§-!N§().GetPosition().x,§-!N§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§+<§(§'!P§.§^3§,§2!k§.§ g§,§'!P§.§>]§,§-!N§().GetPosition().x,§-!N§().GetPosition().y,1250,"",§'!P§.§&%§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
