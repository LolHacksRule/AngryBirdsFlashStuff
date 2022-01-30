package §=!`§
{
   import §#!4§.§0!q§;
   import §#!4§.§=f§;
   import §%z§.§9!n§;
   import §%z§.§;#§;
   import §,!q§.Sprite;
   import §,v§.b2BodyDef;
   import §,v§.b2FilterData;
   import §,v§.b2World;
   import §-!b§.§<W§;
   import §]k§.§-! §;
   import §]k§.§<S§;
   import com.angrybirds.§6!E§;
   
   public class §6!-§ extends §;!j§
   {
      
      public static const §7!j§:String = "special";
      
      public static const §%"'§:String = "fly";
      
      public static const §0'§:String = "fly_yell";
      
      protected static const §7T§:Number = 20000;
      
      protected static const §4!`§:Number = 2000;
      
      protected static const §3"-§:Number = 0.2;
       
      
      private var § j§:Number;
      
      protected var §?,§:Boolean = false;
      
      protected var §?!b§:int = 0;
      
      protected var §#!§:Boolean = false;
      
      protected var §8F§:int;
      
      protected var §@d§:Boolean = false;
      
      public function §6!-§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
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
         return this.§?,§;
      }
      
      public function get launchForce() : Number
      {
         return §-! §.§3§;
      }
      
      public function get §0#§() : Boolean
      {
         if(§^",§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§3!G§ && !§5!;§ && !this.specialPowerUsed;
      }
      
      public function §%E§() : void
      {
         this.§@d§ = true;
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
         _loc1_.§]!x§ = §1[§;
         _loc1_.§+!l§ = 65535 & ~§8E§;
         return _loc1_;
      }
      
      protected function get canNormalize() : Boolean
      {
         return !this.§?,§ && getSpecialAnimationProgress() < 0;
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
         return !this.§?,§ && getSpecialAnimationProgress() < 0;
      }
      
      override public function scream() : void
      {
         if(!this.canScream)
         {
            return;
         }
         super.scream();
         if(this.§0#§)
         {
            §8!p§.setAnimation(§0'§);
         }
      }
      
      protected function get §!!l§() : Boolean
      {
         return !this.§?,§ && getSpecialAnimationProgress() < 0;
      }
      
      override public function blink() : void
      {
         if(!this.§!!l§)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §8!p§.setAnimation(§%"'§);
      }
      
      protected function specialPower(param1:§'`§, param2:Number = 0, param3:Number = 0) : void
      {
         §8!p§.setAnimation(§7!j§);
      }
      
      override protected function setDamageState(param1:Number, param2:§'`§) : Boolean
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
         _loc3_.§#!6§ = true;
         _loc3_.§8!H§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§@,§() || !this.§%Y§))
         {
            this.§ j§ += param1;
            if(this.§ j§ >= §4!`§)
            {
               return true;
            }
         }
         else
         {
            this.§ j§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(!this.§@d§ || health < healthMax || §^",§() == null)
         {
            return false;
         }
         return true;
      }
      
      override protected function addTrail(param1:§'`§) : Boolean
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
         var _loc2_:Number = x * §<S§.§;!Q§;
         var _loc3_:Number = y * §<S§.§;!Q§;
         if(this.§#!§)
         {
            param1.§6!=§(§=f§.§>!A§,§0!q§.§-g§,§=f§.§"!Y§,_loc2_,_loc3_,-1,"",§=f§.§"!2§);
            this.§?!b§ = 0;
            this.§#!§ = false;
         }
         else if(§-"-§ > 1)
         {
            param1.§6!=§(§=f§.§^l§,§0!q§.§-g§,§=f§.§"!Y§,_loc2_,_loc3_,-1,"",§=f§.§"!2§);
         }
         else
         {
            _loc4_ = §=f§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§?!b§ == 1)
            {
               _loc4_ = §=f§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§?!b§ == 2)
            {
               _loc4_ = §=f§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§?!b§ = (this.§?!b§ + 1) % 3;
            param1.§6!=§(_loc4_,§0!q§.§-g§,§=f§.§"!Y§,_loc2_,_loc3_,-1,"",§=f§.§"!2§);
         }
         this.§6U§(param1);
         return true;
      }
      
      protected function §6U§(param1:§'`§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §0!a§();
         var _loc3_:Number = §-! §.§[!i§;
         if(_loc2_ > _loc3_ && Math.random() < §3"-§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.§6!=§(§=f§.§,!3§,§0!q§.§[!V§,§=f§.§@m§,§^",§().GetPosition().x,§^",§().GetPosition().y,1250,"",§=f§.§6!M§(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§0#§)
         {
            §&!z§(§;#§.§`!I§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§'`§, param2:Number, param3:Number) : Boolean
      {
         if(this.§?,§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§?,§ = true;
            §&!z§(§;#§.§4!D§);
            this.specialPower(param1,param2,param3);
            this.§#!§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§0#§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §!]§(param1:int) : int
      {
         return Math.min(§6!E§.§7I§.§6F§,param1);
      }
      
      override public function update(param1:Number, param2:§'`§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§0#§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         §@T§(0);
      }
      
      override public function applyDamage(param1:Number, param2:§'`§, param3:§^^§, param4:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            §4!n§(-1);
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
         this.§8F§ = §&"4§;
      }
      
      protected function get §%Y§() : Boolean
      {
         return §&"4§ - this.§8F§ < §7T§;
      }
      
      override protected function addDestructionParticles(param1:§'`§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §@0§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§!]§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§8!p§.width * §<S§.§;!Q§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§8!p§.height * §<S§.§;!Q§) + Math.random() * -_loc8_ * 2;
            param1.§6!=§(§=f§.§,!3§,§0!q§.§[!V§,§=f§.§@m§,§^",§().GetPosition().x + _loc7_,§^",§().GetPosition().y + _loc8_,1500,"",§=f§.§6!M§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§'`§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §0!a§() / 10;
         var _loc4_:int = 1 + _loc3_ * §@0§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§!]§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§6!=§(§=f§.§<#§,§0!q§.§[!V§,§=f§.§@m§,§^",§().GetPosition().x,§^",§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§6!=§(§=f§.§,!3§,§0!q§.§[!V§,§=f§.§@m§,§^",§().GetPosition().x,§^",§().GetPosition().y,1250,"",§=f§.§6!M§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
