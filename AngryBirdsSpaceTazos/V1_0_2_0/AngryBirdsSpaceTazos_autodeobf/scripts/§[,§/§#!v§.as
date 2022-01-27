package §[,§
{
   import §#!X§.b2BodyDef;
   import §#!X§.b2FilterData;
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §+!9§.§;0§;
   import §,7§.§9!v§;
   import §,7§.§?L§;
   import §8o§.§]!U§;
   import §;"=§.§"!Y§;
   import §;"=§.§]"<§;
   import §?!<§.§'!1§;
   import §?!<§.§6"3§;
   
   public class §#!v§ extends §'y§
   {
      
      public static const §%$§:String = "special";
      
      public static const §3!Q§:String = "fly";
      
      public static const §,E§:String = "fly_yell";
      
      protected static const §"!K§:Number = 20000;
      
      protected static const §3N§:Number = 2000;
      
      protected static const § !^§:Number = 0.2;
       
      
      private var §!T§:Number;
      
      protected var set:Boolean = false;
      
      protected var §"!y§:int = 0;
      
      protected var §<?§:Boolean = false;
      
      protected var §+A§:int;
      
      public function §#!v§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param9)
         {
            this.scream();
         }
         else
         {
            this.fly();
         }
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.set;
      }
      
      public function get launchForce() : Number
      {
         return §6"3§.§>"A§;
      }
      
      public function get §!!K§() : Boolean
      {
         if(§ <§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§-q§ && !§#P§ && !this.specialPowerUsed;
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
         _loc1_.§5!x§ = §"!B§;
         _loc1_.§]!z§ = 65535 & ~§0!=§;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.set || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.set || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§!!K§)
         {
            §&"C§.setAnimation(§,E§);
         }
      }
      
      override public function blink() : void
      {
         if(this.set || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §&"C§.setAnimation(§3!Q§);
      }
      
      protected function specialPower(param1:§class§, param2:Number = 0, param3:Number = 0) : void
      {
         §&"C§.setAnimation(§%$§);
      }
      
      override protected function setDamageState(param1:Number, param2:§class§) : Boolean
      {
         return false;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§-!G§ = true;
         _loc3_.§9!Q§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§#"%§() || !this.§="C§))
         {
            this.§!T§ += param1;
            if(this.§!T§ >= §3N§)
            {
               return true;
            }
         }
         else
         {
            this.§!T§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || § <§() == null)
         {
            return false;
         }
         return true;
      }
      
      override protected function addTrail(param1:§class§) : Boolean
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         var _loc2_:Number = x * §'!1§.§<!@§;
         var _loc3_:Number = y * §'!1§.§<!@§;
         if(this.§<?§)
         {
            param1.§=J§(§9!v§.§3!x§,§?L§.§!S§,§9!v§.§;"0§,_loc2_,_loc3_,-1,"",§9!v§.§2!@§);
            this.§"!y§ = 0;
            this.§<?§ = false;
         }
         else if(§2"A§ > 1)
         {
            param1.§=J§(§9!v§.§8"0§,§?L§.§!S§,§9!v§.§;"0§,_loc2_,_loc3_,-1,"",§9!v§.§2!@§);
         }
         else
         {
            _loc4_ = §9!v§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§"!y§ == 1)
            {
               _loc4_ = §9!v§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§"!y§ == 2)
            {
               _loc4_ = §9!v§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§"!y§ = (this.§"!y§ + 1) % 3;
            param1.§=J§(_loc4_,§?L§.§!S§,§9!v§.§;"0§,_loc2_,_loc3_,-1,"",§9!v§.§2!@§);
         }
         if(§"D§() > this.launchForce && Math.random() < § !^§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            param1.§=J§(§9!v§.§=!`§,§?L§.§7!B§,§9!v§.§7!@§,§ <§().GetPosition().x,§ <§().GetPosition().y,1250,"",§9!v§.§'!Y§(itemName),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
         return true;
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§!!K§)
         {
            §<">§(§"!Y§.§@";§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§class§, param2:Number, param3:Number) : Boolean
      {
         if(this.set)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.set = true;
            §<">§(§"!Y§.§-<§);
            this.specialPower(param1,param2,param3);
            this.§<?§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§!!K§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §%0§(param1:int) : int
      {
         return Math.min(§;0§.§@!^§.§2i§,param1);
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§!!K§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         §[!9§(0);
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
      {
         if(param1 <= defence || defence == 0)
         {
            if(health == healthMax)
            {
               §`"1§(-1);
            }
         }
         else
         {
            param1 = defence;
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.§+A§ = §8Y§;
      }
      
      protected function get §="C§() : Boolean
      {
         return §8Y§ - this.§+A§ < §"!K§;
      }
      
      override protected function addDestructionParticles(param1:§class§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §&!Q§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§%0§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§&"C§.width * §'!1§.§<!@§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§&"C§.height * §'!1§.§<!@§) + Math.random() * -_loc8_ * 2;
            param1.§=J§(§9!v§.§=!`§,§?L§.§7!B§,§9!v§.§7!@§,§ <§().GetPosition().x + _loc7_,§ <§().GetPosition().y + _loc8_,1500,"",§9!v§.§'!Y§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§class§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §"D§() / 10;
         var _loc4_:int = 1 + _loc3_ * §&!Q§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§%0§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§=J§(§9!v§.§"a§,§?L§.§7!B§,§9!v§.§7!@§,§ <§().GetPosition().x,§ <§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§=J§(§9!v§.§=!`§,§?L§.§7!B§,§9!v§.§7!@§,§ <§().GetPosition().x,§ <§().GetPosition().y,1250,"",§9!v§.§'!Y§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
