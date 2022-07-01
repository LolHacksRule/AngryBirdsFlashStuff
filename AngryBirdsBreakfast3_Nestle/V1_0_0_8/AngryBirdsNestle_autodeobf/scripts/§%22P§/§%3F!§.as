package §"P§
{
   import §!"+§.§!o§;
   import §!"+§.§'!7§;
   import §!f§.§>!s§;
   import §!f§.§@"§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §9G§.§1!a§;
   import §9G§.§2F§;
   import §=!c§.b2BodyDef;
   import §=!c§.b2FilterData;
   import §=!c§.b2World;
   import com.angrybirds.§4"6§;
   
   public class §?!§ extends §2!5§
   {
      
      public static const §%k§:String = "special";
      
      public static const §6,§:String = "fly";
      
      public static const §=;§:String = "fly_yell";
      
      protected static const §<"4§:Number = 20000;
      
      protected static const §[!§:Number = 3000;
      
      protected static const §?o§:Number = 0.2;
       
      
      private var §+!;§:Number;
      
      protected var §=!O§:Boolean = false;
      
      protected var §%!c§:int = 0;
      
      protected var §4!h§:Boolean = false;
      
      protected var §[!+§:int;
      
      private var §^T§:Boolean = false;
      
      public function §?!§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number = 1.0, param7:Boolean = true)
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
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§=!O§;
      }
      
      public function get launchForce() : Number
      {
         return §1!a§.§!=§;
      }
      
      public function get § !G§() : Boolean
      {
         if(§7J§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§ !k§ && !§1!A§ && !this.specialPowerUsed;
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
         _loc1_.§^!s§ = §""3§;
         _loc1_.§!G§ = 65535 & ~§<J§;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§=!O§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§=!O§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§ !G§)
         {
            §9!t§.setAnimation(§=;§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§=!O§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §9!t§.setAnimation(§6,§,false);
      }
      
      protected function specialPower(param1:§0w§, param2:Number = 0, param3:Number = 0) : void
      {
         §9!t§.setAnimation(§%k§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§0w§) : Boolean
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
         _loc3_.§#!9§ = true;
         _loc3_.§,!2§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§%!;§() || !this.§%! §))
         {
            this.§+!;§ += param1;
            if(this.§+!;§ >= §[!§)
            {
               return true;
            }
         }
         else
         {
            this.§+!;§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §7J§() == null)
         {
            return false;
         }
         return this.§^T§;
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§^T§ = param1;
      }
      
      override protected function handleInitialCollision() : void
      {
         this.§^T§ = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:§0w§) : Boolean
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
         var _loc2_:Number = x * §2F§.§6+§;
         var _loc3_:Number = y * §2F§.§6+§;
         if(this.§4!h§)
         {
            param1.§8" §(§@"§.§&L§,§>!s§.§3e§,§@"§.§6!^§,_loc2_,_loc3_,-1,"",§@"§.§7a§);
            this.§%!c§ = 0;
            this.§4!h§ = false;
         }
         else if(§ !L§ > 1)
         {
            param1.§8" §(§@"§.§<!,§,§>!s§.§3e§,§@"§.§6!^§,_loc2_,_loc3_,-1,"",§@"§.§7a§);
         }
         else
         {
            _loc4_ = §@"§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§%!c§ == 1)
            {
               _loc4_ = §@"§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§%!c§ == 2)
            {
               _loc4_ = §@"§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§%!c§ = (this.§%!c§ + 1) % 3;
            param1.§8" §(_loc4_,§>!s§.§3e§,§@"§.§6!^§,_loc2_,_loc3_,-1,"",§@"§.§7a§);
         }
         this.§7"#§(param1);
         return true;
      }
      
      protected function §7"#§(param1:§0w§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §+!@§();
         var _loc3_:Number = §1!a§.§0R§;
         if(_loc2_ > _loc3_ && Math.random() < §?o§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.§8" §(§@"§.§]!w§,§>!s§.§>M§,§@"§.§7![§,§7J§().GetPosition().x,§7J§().GetPosition().y,1250,"",§@"§.§?"1§(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§ !G§)
         {
            §5E§(§'!7§.§5-§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§0w§, param2:Number, param3:Number) : Boolean
      {
         if(this.§=!O§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§=!O§ = true;
            §5E§(§'!7§.§5!h§);
            this.specialPower(param1,param2,param3);
            this.§4!h§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§ !G§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function § case§(param1:int) : int
      {
         return Math.min(§4"6§.§;!k§.§?!5§,param1);
      }
      
      override public function update(param1:Number, param2:§0w§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§ !G§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         §%"8§(0);
      }
      
      override public function applyDamage(param1:Number, param2:§0w§, param3:§^!x§, param4:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            §01§(-1);
         }
         this.addDamageParticles(param2,param1);
         this.setDamageState(0.5,param2);
         if(param1 > defence)
         {
            param1 = defence;
         }
         §<T§();
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.§[!+§ = § +§;
      }
      
      protected function get §%! §() : Boolean
      {
         return § +§ - this.§[!+§ < §<"4§;
      }
      
      override protected function addDestructionParticles(param1:§0w§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §`z§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§ case§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§9!t§.width * §2F§.§6+§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§9!t§.height * §2F§.§6+§) + Math.random() * -_loc8_ * 2;
            param1.§8" §(§@"§.§]!w§,§>!s§.§>M§,§@"§.§7![§,§7J§().GetPosition().x + _loc7_,§7J§().GetPosition().y + _loc8_,1500,"",§@"§.§?"1§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§0w§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §+!@§() / 10;
         var _loc4_:int = 1 + _loc3_ * §`z§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§ case§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§8" §(§@"§.§^V§,§>!s§.§>M§,§@"§.§7![§,§7J§().GetPosition().x,§7J§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§8" §(§@"§.§]!w§,§>!s§.§>M§,§@"§.§7![§,§7J§().GetPosition().x,§7J§().GetPosition().y,1250,"",§@"§.§?"1§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
