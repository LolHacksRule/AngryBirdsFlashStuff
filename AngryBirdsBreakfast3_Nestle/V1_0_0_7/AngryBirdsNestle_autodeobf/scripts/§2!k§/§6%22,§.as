package §2!k§
{
   import § !=§.Sprite;
   import §0!j§.b2BodyDef;
   import §0!j§.b2FilterData;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §;Z§.§3?§;
   import §;Z§.§@!`§;
   import §[^§.§>"§;
   import §[^§.§`!M§;
   import §]A§.§0n§;
   import §]A§.§[d§;
   import com.angrybirds.§#Z§;
   
   public class §6",§ extends §>-§
   {
      
      public static const §0!g§:String = "special";
      
      public static const §%R§:String = "fly";
      
      public static const §?"&§:String = "fly_yell";
      
      protected static const §-!-§:Number = 20000;
      
      protected static const § try§:Number = 2000;
      
      protected static const §"!e§:Number = 0.2;
       
      
      private var § "§:Number;
      
      protected var §[!s§:Boolean = false;
      
      protected var §[I§:int = 0;
      
      protected var § 1§:Boolean = false;
      
      protected var §3s§:int;
      
      protected var §#!,§:Boolean = false;
      
      public function §6",§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
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
         return this.§[!s§;
      }
      
      public function get launchForce() : Number
      {
         return §0n§.§9B§;
      }
      
      public function get §>!?§() : Boolean
      {
         if(§ 2§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§86§ && !§[u§ && !this.specialPowerUsed;
      }
      
      public function §=!D§() : void
      {
         this.§#!,§ = true;
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
         _loc1_.§+!j§ = §>"'§;
         _loc1_.§8F§ = 65535 & ~§ 8§;
         return _loc1_;
      }
      
      protected function get canNormalize() : Boolean
      {
         return !this.§[!s§ && getSpecialAnimationProgress() < 0;
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
         return !this.§[!s§ && getSpecialAnimationProgress() < 0;
      }
      
      override public function scream() : void
      {
         if(!this.canScream)
         {
            return;
         }
         super.scream();
         if(this.§>!?§)
         {
            § !@§.setAnimation(§?"&§,false);
         }
      }
      
      protected function get §`N§() : Boolean
      {
         return !this.§[!s§ && getSpecialAnimationProgress() < 0;
      }
      
      override public function blink() : void
      {
         if(!this.§`N§)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         § !@§.setAnimation(§%R§,false);
      }
      
      protected function specialPower(param1:§?N§, param2:Number = 0, param3:Number = 0) : void
      {
         § !@§.setAnimation(§0!g§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§?N§) : Boolean
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
         _loc3_.§8!O§ = true;
         _loc3_.§?r§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§>!m§() || !this.§else§))
         {
            this.§ "§ += param1;
            if(this.§ "§ >= § try§)
            {
               return true;
            }
         }
         else
         {
            this.§ "§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(!this.§#!,§ || health < healthMax || § 2§() == null)
         {
            return false;
         }
         return true;
      }
      
      override protected function addTrail(param1:§?N§) : Boolean
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
         var _loc2_:Number = x * §[d§.§]!U§;
         var _loc3_:Number = y * §[d§.§]!U§;
         if(this.§ 1§)
         {
            param1.§;$§(§3?§.§%j§,§@!`§.§?M§,§3?§.§5!!§,_loc2_,_loc3_,-1,"",§3?§.§"!H§);
            this.§[I§ = 0;
            this.§ 1§ = false;
         }
         else if(§5" § > 1)
         {
            param1.§;$§(§3?§.§ set§,§@!`§.§?M§,§3?§.§5!!§,_loc2_,_loc3_,-1,"",§3?§.§"!H§);
         }
         else
         {
            _loc4_ = §3?§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§[I§ == 1)
            {
               _loc4_ = §3?§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§[I§ == 2)
            {
               _loc4_ = §3?§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§[I§ = (this.§[I§ + 1) % 3;
            param1.§;$§(_loc4_,§@!`§.§?M§,§3?§.§5!!§,_loc2_,_loc3_,-1,"",§3?§.§"!H§);
         }
         this.§5a§(param1);
         return true;
      }
      
      protected function §5a§(param1:§?N§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §'!v§();
         var _loc3_:Number = §0n§.§`B§;
         if(_loc2_ > _loc3_ && Math.random() < §"!e§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.§;$§(§3?§.§3f§,§@!`§.§<<§,§3?§.§72§,§ 2§().GetPosition().x,§ 2§().GetPosition().y,1250,"",§3?§.§"N§(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§>!?§)
         {
            §,y§(§>"§.§;!&§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§?N§, param2:Number, param3:Number) : Boolean
      {
         if(this.§[!s§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§[!s§ = true;
            §,y§(§>"§.§%"!§);
            this.specialPower(param1,param2,param3);
            this.§ 1§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§>!?§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §[!O§(param1:int) : int
      {
         return Math.min(§#Z§.§'0§.§,!;§,param1);
      }
      
      override public function update(param1:Number, param2:§?N§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§>!?§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         §9Z§(0);
      }
      
      override public function applyDamage(param1:Number, param2:§?N§, param3:§;;§, param4:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            §2!@§(-1);
         }
         this.addDamageParticles(param2,param1);
         this.setDamageState(0.5,param2);
         if(param1 > defence)
         {
            param1 = defence;
         }
         §3!&§();
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.§3s§ = §]!H§;
      }
      
      protected function get §else§() : Boolean
      {
         return §]!H§ - this.§3s§ < §-!-§;
      }
      
      override protected function addDestructionParticles(param1:§?N§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §0!s§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§[!O§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§ !@§.width * §[d§.§]!U§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§ !@§.height * §[d§.§]!U§) + Math.random() * -_loc8_ * 2;
            param1.§;$§(§3?§.§3f§,§@!`§.§<<§,§3?§.§72§,§ 2§().GetPosition().x + _loc7_,§ 2§().GetPosition().y + _loc8_,1500,"",§3?§.§"N§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§?N§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §'!v§() / 10;
         var _loc4_:int = 1 + _loc3_ * §0!s§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§[!O§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§;$§(§3?§.§#!I§,§@!`§.§<<§,§3?§.§72§,§ 2§().GetPosition().x,§ 2§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§;$§(§3?§.§3f§,§@!`§.§<<§,§3?§.§72§,§ 2§().GetPosition().x,§ 2§().GetPosition().y,1250,"",§3?§.§"N§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
