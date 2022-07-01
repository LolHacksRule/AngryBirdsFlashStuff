package §]!q§
{
   import §-!f§.Sprite;
   import §0I§.§!!p§;
   import §0I§.§3]§;
   import §3g§.§?!d§;
   import §3g§.§`O§;
   import §5!7§.§3!Y§;
   import §5!7§.§7!R§;
   import §6_§.§6k§;
   import §9"5§.b2BodyDef;
   import §9"5§.b2FilterData;
   import §9"5§.b2World;
   import com.angrybirds.§6U§;
   
   public class §,6§ extends §7=§
   {
      
      public static const §>l§:String = "special";
      
      public static const §]!g§:String = "fly";
      
      public static const §^!7§:String = "fly_yell";
      
      protected static const §-!?§:Number = 20000;
      
      protected static const §-!z§:Number = 2000;
      
      protected static const §%e§:Number = 0.2;
       
      
      private var §6" §:Number;
      
      protected var §&!n§:Boolean = false;
      
      protected var §#§:int = 0;
      
      protected var §8!+§:Boolean = false;
      
      protected var §8!b§:int;
      
      protected var §^!T§:Boolean = false;
      
      public function §,6§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param9)
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
         return this.§&!n§;
      }
      
      public function get launchForce() : Number
      {
         return §3]§.§9O§;
      }
      
      public function get §[z§() : Boolean
      {
         if(§4!7§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§1!I§ && !§4!-§ && !this.specialPowerUsed;
      }
      
      public function §&!Y§() : void
      {
         this.§^!T§ = true;
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
         _loc1_.§`!1§ = §>!'§;
         _loc1_.§3L§ = 65535 & ~§0=§;
         return _loc1_;
      }
      
      protected function get canNormalize() : Boolean
      {
         return !this.§&!n§ && getSpecialAnimationProgress() < 0;
      }
      
      override protected function normalize() : void
      {
         if(!this.canNormalize)
         {
            return;
         }
         super.normalize();
      }
      
      protected function get canScream() : Boolean
      {
         return !this.§&!n§ && getSpecialAnimationProgress() < 0;
      }
      
      override public function scream() : void
      {
         if(!this.canScream)
         {
            return;
         }
         super.scream();
         if(this.§[z§)
         {
            §3<§.setAnimation(§^!7§);
         }
      }
      
      protected function get §5O§() : Boolean
      {
         return !this.§&!n§ && getSpecialAnimationProgress() < 0;
      }
      
      override public function blink() : void
      {
         if(!this.§5O§)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §3<§.setAnimation(§]!g§);
      }
      
      protected function specialPower(param1:§5z§, param2:Number = 0, param3:Number = 0) : void
      {
         §3<§.setAnimation(§>l§);
      }
      
      override protected function setDamageState(param1:Number, param2:§5z§) : Boolean
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
         _loc3_.§+5§ = true;
         _loc3_.§!?§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§;0§() || !this.§?"2§))
         {
            this.§6" § += param1;
            if(this.§6" § >= §-!z§)
            {
               return true;
            }
         }
         else
         {
            this.§6" § = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(!this.§^!T§ || health < healthMax || §4!7§() == null)
         {
            return false;
         }
         return true;
      }
      
      override protected function addTrail(param1:§5z§) : Boolean
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         if(!param1)
         {
            return true;
         }
         var _loc2_:Number = x * §!!p§.§6L§;
         var _loc3_:Number = y * §!!p§.§6L§;
         if(this.§8!+§)
         {
            param1.§`q§(§?!d§.§;j§,§`O§.§<s§,§?!d§.§41§,_loc2_,_loc3_,-1,"",§?!d§.§=",§);
            this.§#§ = 0;
            this.§8!+§ = false;
         }
         else if(§#b§ > 1)
         {
            param1.§`q§(§?!d§.§ '§,§`O§.§<s§,§?!d§.§41§,_loc2_,_loc3_,-1,"",§?!d§.§=",§);
         }
         else
         {
            _loc4_ = §?!d§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§#§ == 1)
            {
               _loc4_ = §?!d§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§#§ == 2)
            {
               _loc4_ = §?!d§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§#§ = (this.§#§ + 1) % 3;
            param1.§`q§(_loc4_,§`O§.§<s§,§?!d§.§41§,_loc2_,_loc3_,-1,"",§?!d§.§=",§);
         }
         if(§%=§() > this.launchForce && Math.random() < §%e§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            param1.§`q§(§?!d§.§="+§,§`O§.§#!`§,§?!d§.§!!I§,§4!7§().GetPosition().x,§4!7§().GetPosition().y,1250,"",§?!d§.§ !s§(itemName),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
         return true;
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§[z§)
         {
            §?[§(§7!R§.§5x§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§5z§, param2:Number, param3:Number) : Boolean
      {
         if(this.§&!n§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§&!n§ = true;
            §?[§(§7!R§.§3!f§);
            this.specialPower(param1,param2,param3);
            this.§8!+§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§[z§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §+f§(param1:int) : int
      {
         return Math.min(§6U§.§+_§.§-!t§,param1);
      }
      
      override public function update(param1:Number, param2:§5z§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§[z§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         §5!L§(0);
      }
      
      override public function applyDamage(param1:Number, param2:§5z§, param3:§,[§, param4:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            §@"2§(-1);
         }
         this.addDamageParticles(param2,param1);
         this.setDamageState(0.5,param2);
         if(param1 > defence)
         {
            param1 = defence;
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.§8!b§ = §?6§;
      }
      
      protected function get §?"2§() : Boolean
      {
         return §?6§ - this.§8!b§ < §-!?§;
      }
      
      override protected function addDestructionParticles(param1:§5z§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §3[§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§+f§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§3<§.width * §!!p§.§6L§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§3<§.height * §!!p§.§6L§) + Math.random() * -_loc8_ * 2;
            param1.§`q§(§?!d§.§="+§,§`O§.§#!`§,§?!d§.§!!I§,§4!7§().GetPosition().x + _loc7_,§4!7§().GetPosition().y + _loc8_,1500,"",§?!d§.§ !s§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5z§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §%=§() / 10;
         var _loc4_:int = 1 + _loc3_ * §3[§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§+f§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§`q§(§?!d§.§9%§,§`O§.§#!`§,§?!d§.§!!I§,§4!7§().GetPosition().x,§4!7§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§`q§(§?!d§.§="+§,§`O§.§#!`§,§?!d§.§!!I§,§4!7§().GetPosition().x,§4!7§().GetPosition().y,1250,"",§?!d§.§ !s§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
