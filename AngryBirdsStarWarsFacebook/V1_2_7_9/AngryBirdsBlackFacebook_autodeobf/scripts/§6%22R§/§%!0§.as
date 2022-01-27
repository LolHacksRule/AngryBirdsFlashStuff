package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2BodyDef;
   import §1x§.b2FilterData;
   import §1x§.b2World;
   import §2!`§.§#"m§;
   import §2!`§.§;6§;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §5!q§.§+e§;
   import §5!q§.§3"X§;
   import §>P§.§&s§;
   import §>P§.§=!,§;
   import §^>§.b2Vec2;
   import com.angrybirds.§;!e§;
   
   public class §%!0§ extends §[!Z§
   {
      
      public static const §-$§:String = "special";
      
      public static const §4O§:String = "fly";
      
      public static const §4!?§:String = "fly_yell";
      
      protected static const §<# §:Number = 20000;
      
      protected static const §>#0§:Number = 3000;
      
      protected static const §4!-§:Number = 0.2;
       
      
      private var §=!H§:Number;
      
      protected var §`!8§:Boolean = false;
      
      protected var §0"m§:int = 0;
      
      protected var §9#!§:Boolean = false;
      
      protected var §2"f§:int;
      
      private var §9!F§:Boolean = false;
      
      private var §"&§:Boolean = false;
      
      public function §%!0§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
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
      }
      
      public function set §[P§(param1:Boolean) : void
      {
         this.§"&§ = param1;
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§`!8§;
      }
      
      public function get launchForce() : Number
      {
         return §+e§.§'z§;
      }
      
      public function get §@"e§() : Boolean
      {
         if(§?"Z§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§!!r§ && !§"!J§ && !this.specialPowerUsed;
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
         _loc1_.§=^§ = §@"3§;
         _loc1_.§'"5§ = 65535 & ~§5"4§;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§`!8§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§`!8§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§@"e§)
         {
            §]h§.setAnimation(§4!?§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§`!8§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §]h§.setAnimation(§4O§,false);
      }
      
      protected function specialPower(param1:§""M§, param2:Number = 0, param3:Number = 0) : void
      {
         §]h§.setAnimation(§-$§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§""M§) : Boolean
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
         _loc3_.§9"a§ = true;
         _loc3_.§]"H§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§[d§() || !this.§9"#§))
         {
            this.§=!H§ += param1;
            if(this.§=!H§ >= §>#0§)
            {
               return true;
            }
         }
         else
         {
            this.§=!H§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §?"Z§() == null)
         {
            return false;
         }
         return this.§9!F§;
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§9!F§ = param1;
      }
      
      override protected function handleInitialCollision() : void
      {
         this.§9!F§ = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:§""M§) : Boolean
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
         var _loc2_:Number = x * §3"X§.§;"l§;
         var _loc3_:Number = y * §3"X§.§;"l§;
         if(this.§9#!§)
         {
            param1.§[#$§(§;6§.§[!A§,§#"m§.§["A§,§;6§.§3!1§,_loc2_,_loc3_,-1,"",§;6§.§+![§);
            this.§0"m§ = 0;
            this.§9#!§ = false;
         }
         else if(§,"a§ > 1)
         {
            param1.§[#$§(§;6§.§%!E§,§#"m§.§["A§,§;6§.§3!1§,_loc2_,_loc3_,-1,"",§;6§.§+![§);
         }
         else
         {
            _loc4_ = §;6§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§0"m§ == 1)
            {
               _loc4_ = §;6§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§0"m§ == 2)
            {
               _loc4_ = §;6§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§0"m§ = (this.§0"m§ + 1) % 3;
            param1.§[#$§(_loc4_,§#"m§.§["A§,§;6§.§3!1§,_loc2_,_loc3_,-1,"",§;6§.§+![§);
         }
         this.§-"c§(param1);
         return true;
      }
      
      protected function §-"c§(param1:§""M§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §@H§();
         var _loc3_:Number = §+e§.§!!"§;
         if(_loc2_ > _loc3_ && Math.random() < §4!-§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.§[#$§(§;6§.§>!B§,§#"m§.§=!"§,§;6§.§7'§,§?"Z§().GetPosition().x,§?"Z§().GetPosition().y,1250,"",§;6§.§ "'§(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§@"e§)
         {
            §#!D§(§&s§.§;"q§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§""M§, param2:Number, param3:Number) : Boolean
      {
         if(this.§`!8§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§`!8§ = true;
            §#!D§(§&s§.§;m§);
            this.specialPower(param1,param2,param3);
            this.§9#!§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§@"e§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §#"7§(param1:int) : int
      {
         return Math.min(§;!e§.§<x§.§4!e§,param1);
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§@"e§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc1_:Number = 0;
         if(this.§"&§)
         {
            _loc2_ = §?"Z§().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         §#"c§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§""M§, param3:§4!w§, param4:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            §="N§(-1);
         }
         this.addDamageParticles(param2,param1);
         this.setDamageState(0.5,param2);
         if(param1 > defence)
         {
            param1 = defence;
         }
         playDamagedSound();
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.§2"f§ = §-=§;
      }
      
      protected function get §9"#§() : Boolean
      {
         return §-=§ - this.§2"f§ < §<# §;
      }
      
      override protected function addDestructionParticles(param1:§""M§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §!!D§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§#"7§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§]h§.width * §3"X§.§;"l§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§]h§.height * §3"X§.§;"l§) + Math.random() * -_loc8_ * 2;
            param1.§[#$§(§;6§.§>!B§,§#"m§.§=!"§,§;6§.§7'§,§?"Z§().GetPosition().x + _loc7_,§?"Z§().GetPosition().y + _loc8_,1500,"",§;6§.§ "'§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§""M§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §@H§() / 10;
         var _loc4_:int = 1 + _loc3_ * §!!D§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§#"7§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§[#$§(§;6§.§1"`§,§#"m§.§=!"§,§;6§.§7'§,§?"Z§().GetPosition().x,§?"Z§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§[#$§(§;6§.§>!B§,§#"m§.§=!"§,§;6§.§7'§,§?"Z§().GetPosition().x,§?"Z§().GetPosition().y,1250,"",§;6§.§ "'§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
