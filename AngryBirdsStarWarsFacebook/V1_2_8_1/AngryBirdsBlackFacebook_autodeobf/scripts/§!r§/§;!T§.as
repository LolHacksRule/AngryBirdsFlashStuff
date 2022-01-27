package §!r§
{
   import §!!k§.§1!^§;
   import §"§.§1!T§;
   import §"§.§;!E§;
   import §#g§.§["%§;
   import §#g§.§^i§;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2BodyDef;
   import §>"_§.b2FilterData;
   import §>"_§.b2World;
   import §^9§.§?"E§;
   import §^9§.§^#'§;
   import com.angrybirds.§<!J§;
   import §use§.Sprite;
   
   public class §;!T§ extends §<"R§
   {
      
      public static const §3_§:String = "special";
      
      public static const §@T§:String = "fly";
      
      public static const §9z§:String = "fly_yell";
      
      protected static const §[]§:Number = 20000;
      
      protected static const §^?§:Number = 3000;
      
      protected static const §@!T§:Number = 0.2;
       
      
      private var §<"6§:Number;
      
      protected var §63§:Boolean = false;
      
      protected var §8"6§:int = 0;
      
      protected var §'l§:Boolean = false;
      
      protected var §-!k§:int;
      
      private var §'##§:Boolean = false;
      
      private var §!A§:Boolean = false;
      
      public function §;!T§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
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
      
      public function set §="§(param1:Boolean) : void
      {
         this.§!A§ = param1;
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§63§;
      }
      
      public function get launchForce() : Number
      {
         return §1!T§.§]"n§;
      }
      
      public function get §[X§() : Boolean
      {
         if(§3"s§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§53§ && !§++§ && !this.specialPowerUsed;
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
         _loc1_.§3!$§ = §9V§;
         _loc1_.§ "b§ = 65535 & ~§9!t§;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§63§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§63§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§[X§)
         {
            §]!g§.setAnimation(§9z§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§63§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §]!g§.setAnimation(§@T§,false);
      }
      
      protected function specialPower(param1:§'=§, param2:Number = 0, param3:Number = 0) : void
      {
         §]!g§.setAnimation(§3_§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§'=§) : Boolean
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
         _loc3_.§^!Z§ = true;
         _loc3_.§-#0§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§;!K§() || !this.§;!=§))
         {
            this.§<"6§ += param1;
            if(this.§<"6§ >= §^?§)
            {
               return true;
            }
         }
         else
         {
            this.§<"6§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §3"s§() == null)
         {
            return false;
         }
         return this.§'##§;
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§'##§ = param1;
      }
      
      override protected function handleInitialCollision() : void
      {
         this.§'##§ = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:§'=§) : Boolean
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
         var _loc2_:Number = x * §;!E§.§0"?§;
         var _loc3_:Number = y * §;!E§.§0"?§;
         if(this.§'l§)
         {
            param1.§>#1§(§?"E§.§]"B§,§^#'§.§set §,§?"E§.§["4§,_loc2_,_loc3_,-1,"",§?"E§.§0!P§);
            this.§8"6§ = 0;
            this.§'l§ = false;
         }
         else if(§<!T§ > 1)
         {
            param1.§>#1§(§?"E§.§ #5§,§^#'§.§set §,§?"E§.§["4§,_loc2_,_loc3_,-1,"",§?"E§.§0!P§);
         }
         else
         {
            _loc4_ = §?"E§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§8"6§ == 1)
            {
               _loc4_ = §?"E§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§8"6§ == 2)
            {
               _loc4_ = §?"E§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§8"6§ = (this.§8"6§ + 1) % 3;
            param1.§>#1§(_loc4_,§^#'§.§set §,§?"E§.§["4§,_loc2_,_loc3_,-1,"",§?"E§.§0!P§);
         }
         this.§6"6§(param1);
         return true;
      }
      
      protected function §6"6§(param1:§'=§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §+"9§();
         var _loc3_:Number = §1!T§.§9"y§;
         if(_loc2_ > _loc3_ && Math.random() < §@!T§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.§>#1§(§?"E§.§[J§,§^#'§.§&5§,§?"E§.§3y§,§3"s§().GetPosition().x,§3"s§().GetPosition().y,1250,"",§?"E§.§##+§(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§[X§)
         {
            §!5§(§^i§.§@!L§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§'=§, param2:Number, param3:Number) : Boolean
      {
         if(this.§63§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§63§ = true;
            §!5§(§^i§.§%!H§);
            this.specialPower(param1,param2,param3);
            this.§'l§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§[X§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §3F§(param1:int) : int
      {
         return Math.min(§<!J§.§=!%§.§38§,param1);
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§[X§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc1_:Number = 0;
         if(this.§!A§)
         {
            _loc2_ = §3"s§().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         § "H§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§'=§, param3:§0N§, param4:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            §%"&§(-1);
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
         this.§-!k§ = §<!"§;
      }
      
      protected function get §;!=§() : Boolean
      {
         return §<!"§ - this.§-!k§ < §[]§;
      }
      
      override protected function addDestructionParticles(param1:§'=§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §0"-§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§3F§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§]!g§.width * §;!E§.§0"?§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§]!g§.height * §;!E§.§0"?§) + Math.random() * -_loc8_ * 2;
            param1.§>#1§(§?"E§.§[J§,§^#'§.§&5§,§?"E§.§3y§,§3"s§().GetPosition().x + _loc7_,§3"s§().GetPosition().y + _loc8_,1500,"",§?"E§.§##+§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§'=§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §+"9§() / 10;
         var _loc4_:int = 1 + _loc3_ * §0"-§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§3F§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§>#1§(§?"E§.§+"1§,§^#'§.§&5§,§?"E§.§3y§,§3"s§().GetPosition().x,§3"s§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§>#1§(§?"E§.§[J§,§^#'§.§&5§,§?"E§.§3y§,§3"s§().GetPosition().x,§3"s§().GetPosition().y,1250,"",§?"E§.§##+§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
