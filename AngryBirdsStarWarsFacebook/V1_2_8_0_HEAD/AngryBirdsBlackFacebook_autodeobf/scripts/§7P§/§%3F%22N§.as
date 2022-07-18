package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2BodyDef;
   import §+#$§.b2FilterData;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§'§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §^#>§.§`"]§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   import com.angrybirds.§,!q§;
   
   public class §?"N§ extends §^#$§
   {
      
      public static const §4!8§:String = "special";
      
      public static const §;!U§:String = "fly";
      
      public static const §-"[§:String = "fly_yell";
      
      protected static const §0M§:Number = 20000;
      
      protected static const §??§:Number = 3000;
      
      protected static const §1"U§:Number = 0.2;
       
      
      private var §=#E§:Number;
      
      protected var §[!o§:Boolean = false;
      
      protected var §;!H§:int = 0;
      
      protected var §9"e§:Boolean = false;
      
      protected var §>#R§:int;
      
      private var §6!d§:Boolean = false;
      
      private var §+"0§:Boolean = false;
      
      public function §?"N§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
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
      
      public function set §^u§(param1:Boolean) : void
      {
         this.§+"0§ = param1;
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§[!o§;
      }
      
      public function get launchForce() : Number
      {
         return §`"]§.§8!M§;
      }
      
      public function get §8!_§() : Boolean
      {
         if(§3!t§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§5!+§ && !§;e§ && !this.specialPowerUsed;
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
         _loc1_.§=#0§ = §7!6§;
         _loc1_.§8"A§ = 65535 & ~§!z§;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§[!o§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§[!o§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§8!_§)
         {
            §2N§.setAnimation(§-"[§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§[!o§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §2N§.setAnimation(§;!U§,false);
      }
      
      protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         §2N§.setAnimation(§4!8§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§;$§) : Boolean
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
         _loc3_.§%#2§ = true;
         _loc3_.§>!f§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§+"6§() || !this.§8=§))
         {
            this.§=#E§ += param1;
            if(this.§=#E§ >= §??§)
            {
               return true;
            }
         }
         else
         {
            this.§=#E§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §3!t§() == null)
         {
            return false;
         }
         return this.§6!d§;
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§6!d§ = param1;
      }
      
      override protected function handleInitialCollision() : void
      {
         this.§6!d§ = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:§;$§) : Boolean
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
         var _loc2_:Number = x * §#_§.§8]§;
         var _loc3_:Number = y * §#_§.§8]§;
         if(this.§9"e§)
         {
            param1.§;!0§(§ U§.§[#"§,§,!w§.§9F§,§ U§.§+!Q§,_loc2_,_loc3_,-1,"",§ U§.§9"W§);
            this.§;!H§ = 0;
            this.§9"e§ = false;
         }
         else if(§<z§ > 1)
         {
            param1.§;!0§(§ U§.§1!+§,§,!w§.§9F§,§ U§.§+!Q§,_loc2_,_loc3_,-1,"",§ U§.§9"W§);
         }
         else
         {
            _loc4_ = § U§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§;!H§ == 1)
            {
               _loc4_ = § U§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§;!H§ == 2)
            {
               _loc4_ = § U§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§;!H§ = (this.§;!H§ + 1) % 3;
            param1.§;!0§(_loc4_,§,!w§.§9F§,§ U§.§+!Q§,_loc2_,_loc3_,-1,"",§ U§.§9"W§);
         }
         this.§+#a§(param1);
         return true;
      }
      
      protected function §+#a§(param1:§;$§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §>o§();
         var _loc3_:Number = §`"]§.§6#a§;
         if(_loc2_ > _loc3_ && Math.random() < §1"U§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.§;!0§(§ U§.§7!i§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x,§3!t§().GetPosition().y,1250,"",§ U§.§`"I§(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§8!_§)
         {
            §[v§(§'#2§.§=#C§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         if(this.§[!o§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§[!o§ = true;
            §[v§(§'#2§.§0"@§);
            this.specialPower(param1,param2,param3);
            this.§9"e§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§8!_§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §;#H§(param1:int) : int
      {
         return Math.min(§,!q§.§9!,§.§>_§,param1);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§8!_§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc1_:Number = 0;
         if(this.§+"0§)
         {
            _loc2_ = §3!t§().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         §6#<§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            §?!x§(-1);
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
         this.§>#R§ = §3! §;
      }
      
      protected function get §8=§() : Boolean
      {
         return §3! § - this.§>#R§ < §0M§;
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §0"X§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§;#H§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2N§.width * §#_§.§8]§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2N§.height * §#_§.§8]§) + Math.random() * -_loc8_ * 2;
            param1.§;!0§(§ U§.§7!i§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x + _loc7_,§3!t§().GetPosition().y + _loc8_,1500,"",§ U§.§`"I§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§;$§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §>o§() / 10;
         var _loc4_:int = 1 + _loc3_ * §0"X§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§;#H§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§;!0§(§ U§.§?#;§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x,§3!t§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§;!0§(§ U§.§7!i§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x,§3!t§().GetPosition().y,1250,"",§ U§.§`"I§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
