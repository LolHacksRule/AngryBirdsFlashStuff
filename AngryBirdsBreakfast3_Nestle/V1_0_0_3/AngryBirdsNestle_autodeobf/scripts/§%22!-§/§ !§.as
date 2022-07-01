package §"!-§
{
   import §!!<§.§>"4§;
   import §!!<§.§[!L§;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §82§.§%v§;
   import §82§.§8W§;
   import §;'§.b2BodyDef;
   import §;'§.b2FilterData;
   import §;'§.b2World;
   import §@"1§.§"h§;
   import §@"1§.§8L§;
   import com.angrybirds.§4!l§;
   
   public class § !§ extends §8!#§
   {
      
      public static const §>!U§:String = "special";
      
      public static const §?!a§:String = "fly";
      
      public static const §4"+§:String = "fly_yell";
      
      protected static const §5!m§:Number = 20000;
      
      protected static const §[#§:Number = 2000;
      
      protected static const §@!c§:Number = 0.2;
       
      
      private var §]"1§:Number;
      
      protected var §6"§:Boolean = false;
      
      protected var §[@§:int = 0;
      
      protected var §[!"§:Boolean = false;
      
      protected var §74§:int;
      
      protected var §+M§:Boolean = false;
      
      public function § !§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
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
         return this.§6"§;
      }
      
      public function get launchForce() : Number
      {
         return §8L§.§-;§;
      }
      
      public function get §&!J§() : Boolean
      {
         if(§9l§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§6X§ && !§<p§ && !this.specialPowerUsed;
      }
      
      public function §`d§() : void
      {
         this.§+M§ = true;
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
         _loc1_.§]!-§ = §,Z§;
         _loc1_.§]!=§ = 65535 & ~§"!t§;
         return _loc1_;
      }
      
      protected function get canNormalize() : Boolean
      {
         return !this.§6"§ && getSpecialAnimationProgress() < 0;
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
         return !this.§6"§ && getSpecialAnimationProgress() < 0;
      }
      
      override public function scream() : void
      {
         if(!this.canScream)
         {
            return;
         }
         super.scream();
         if(this.§&!J§)
         {
            §[c§.setAnimation(§4"+§);
         }
      }
      
      protected function get §4_§() : Boolean
      {
         return !this.§6"§ && getSpecialAnimationProgress() < 0;
      }
      
      override public function blink() : void
      {
         if(!this.§4_§)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §[c§.setAnimation(§?!a§);
      }
      
      protected function specialPower(param1:§!l§, param2:Number = 0, param3:Number = 0) : void
      {
         §[c§.setAnimation(§>!U§);
      }
      
      override protected function setDamageState(param1:Number, param2:§!l§) : Boolean
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
         _loc3_.§[K§ = true;
         _loc3_.§5!R§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§]!<§() || !this.§?!Y§))
         {
            this.§]"1§ += param1;
            if(this.§]"1§ >= §[#§)
            {
               return true;
            }
         }
         else
         {
            this.§]"1§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(!this.§+M§ || health < healthMax || §9l§() == null)
         {
            return false;
         }
         return true;
      }
      
      override protected function addTrail(param1:§!l§) : Boolean
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
         var _loc2_:Number = x * §"h§.§4<§;
         var _loc3_:Number = y * §"h§.§4<§;
         if(this.§[!"§)
         {
            param1.§;!9§(§%v§.§#r§,§8W§.§,!A§,§%v§.§0!O§,_loc2_,_loc3_,-1,"",§%v§.§5!§);
            this.§[@§ = 0;
            this.§[!"§ = false;
         }
         else if(§?!A§ > 1)
         {
            param1.§;!9§(§%v§.§6F§,§8W§.§,!A§,§%v§.§0!O§,_loc2_,_loc3_,-1,"",§%v§.§5!§);
         }
         else
         {
            _loc4_ = §%v§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§[@§ == 1)
            {
               _loc4_ = §%v§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§[@§ == 2)
            {
               _loc4_ = §%v§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§[@§ = (this.§[@§ + 1) % 3;
            param1.§;!9§(_loc4_,§8W§.§,!A§,§%v§.§0!O§,_loc2_,_loc3_,-1,"",§%v§.§5!§);
         }
         if(§2b§() > this.launchForce && Math.random() < §@!c§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            param1.§;!9§(§%v§.§!"3§,§8W§.§8!C§,§%v§.§!-§,§9l§().GetPosition().x,§9l§().GetPosition().y,1250,"",§%v§.§#S§(itemName),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
         return true;
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§&!J§)
         {
            §0z§(§[!L§.§+!4§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§!l§, param2:Number, param3:Number) : Boolean
      {
         if(this.§6"§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§6"§ = true;
            §0z§(§[!L§.§'!0§);
            this.specialPower(param1,param2,param3);
            this.§[!"§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§&!J§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §9"'§(param1:int) : int
      {
         return Math.min(§4!l§.§,!8§.§!§,param1);
      }
      
      override public function update(param1:Number, param2:§!l§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§&!J§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         §'!!§(0);
      }
      
      override public function applyDamage(param1:Number, param2:§!l§, param3:§[-§, param4:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            §#?§(-1);
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
         this.§74§ = §5!4§;
      }
      
      protected function get §?!Y§() : Boolean
      {
         return §5!4§ - this.§74§ < §5!m§;
      }
      
      override protected function addDestructionParticles(param1:§!l§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §'J§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§9"'§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§[c§.width * §"h§.§4<§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§[c§.height * §"h§.§4<§) + Math.random() * -_loc8_ * 2;
            param1.§;!9§(§%v§.§!"3§,§8W§.§8!C§,§%v§.§!-§,§9l§().GetPosition().x + _loc7_,§9l§().GetPosition().y + _loc8_,1500,"",§%v§.§#S§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§!l§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §2b§() / 10;
         var _loc4_:int = 1 + _loc3_ * §'J§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§9"'§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§;!9§(§%v§.§'"$§,§8W§.§8!C§,§%v§.§!-§,§9l§().GetPosition().x,§9l§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§;!9§(§%v§.§!"3§,§8W§.§8!C§,§%v§.§!-§,§9l§().GetPosition().x,§9l§().GetPosition().y,1250,"",§%v§.§#S§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
