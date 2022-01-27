package §5"D§
{
   import §!u§.§'!X§;
   import §!u§.§8"#§;
   import §3R§.§1!R§;
   import §3R§.§;!h§;
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §6!M§.§=!P§;
   import §7!C§.§8!w§;
   import §;`§.b2BodyDef;
   import §;`§.b2FilterData;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §1"G§ extends §&!v§
   {
      
      public static const §'!e§:String = "special";
      
      public static const §9!i§:String = "fly";
      
      public static const §^s§:String = "fly_yell";
      
      protected static const §;1§:Number = 20000;
      
      protected static const §#B§:Number = 3000;
      
      protected static const §`!z§:Number = 0.2;
       
      
      private var §6!g§:Number;
      
      protected var §6"5§:Boolean = false;
      
      protected var §9!]§:int = 0;
      
      protected var §&#§:Boolean = false;
      
      protected var §^>§:int;
      
      public function §1"G§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
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
         return this.§6"5§;
      }
      
      public function get launchForce() : Number
      {
         return §;!h§.§=o§;
      }
      
      public function get §!!a§() : Boolean
      {
         if(§9B§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§8!x§ && !§-C§ && !this.specialPowerUsed;
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
         _loc1_.§@W§ = §6!6§;
         _loc1_.§`!`§ = 65535 & ~§6t§;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§6"5§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§6"5§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§!!a§)
         {
            §;!5§.setAnimation(§^s§);
         }
      }
      
      override public function blink() : void
      {
         if(this.§6"5§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §;!5§.setAnimation(§9!i§);
      }
      
      protected function specialPower(param1:§0!5§, param2:Number = 0, param3:Number = 0) : void
      {
         §;!5§.setAnimation(§'!e§);
      }
      
      override protected function setDamageState(param1:Number, param2:§0!5§) : Boolean
      {
         return false;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§!"H§ = true;
         _loc3_.§'"§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§8!Y§() || !this.§%E§))
         {
            this.§6!g§ += param1;
            if(this.§6!g§ >= §#B§)
            {
               return true;
            }
         }
         else
         {
            this.§6!g§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §9B§() == null)
         {
            return false;
         }
         return true;
      }
      
      override protected function addTrail(param1:§0!5§) : Boolean
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         var _loc2_:Number = x * §1!R§.§00§;
         var _loc3_:Number = y * §1!R§.§00§;
         if(this.§&#§)
         {
            param1.§'!f§(§8"#§.§2!L§,§'!X§.§0!8§,§8"#§.§0]§,_loc2_,_loc3_,-1,"",§8"#§.§3!-§);
            this.§9!]§ = 0;
            this.§&#§ = false;
         }
         else if(§ ",§ > 1)
         {
            param1.§'!f§(§8"#§.§<!t§,§'!X§.§0!8§,§8"#§.§0]§,_loc2_,_loc3_,-1,"",§8"#§.§3!-§);
         }
         else
         {
            _loc4_ = §8"#§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§9!]§ == 1)
            {
               _loc4_ = §8"#§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§9!]§ == 2)
            {
               _loc4_ = §8"#§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§9!]§ = (this.§9!]§ + 1) % 3;
            param1.§'!f§(_loc4_,§'!X§.§0!8§,§8"#§.§0]§,_loc2_,_loc3_,-1,"",§8"#§.§3!-§);
         }
         if(§<Z§() > this.launchForce && Math.random() < §`!z§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            param1.§'!f§(§8"#§.§1q§,§'!X§.§=!O§,§8"#§.§^;§,§9B§().GetPosition().x,§9B§().GetPosition().y,1250,"",§8"#§.§3!j§(itemName),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
         return true;
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§!!a§)
         {
            §2!;§(§=!P§.§!d§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§0!5§, param2:Number, param3:Number) : Boolean
      {
         if(this.§6"5§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§6"5§ = true;
            §2!;§(§=!P§.§&j§);
            this.specialPower(param1,param2,param3);
            this.§&#§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§!!a§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §1"'§(param1:int) : int
      {
         return Math.min(§8!w§.§5!V§.§7"D§,param1);
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§!!a§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         §"!C§(0);
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
      {
         if(param1 <= defence || defence == 0)
         {
            if(health == healthMax)
            {
               §3!m§(-1);
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
         this.§^>§ = §7J§;
      }
      
      protected function get §%E§() : Boolean
      {
         return §7J§ - this.§^>§ < §;1§;
      }
      
      override protected function addDestructionParticles(param1:§0!5§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §`!%§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§1"'§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§;!5§.width * §1!R§.§00§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§;!5§.height * §1!R§.§00§) + Math.random() * -_loc8_ * 2;
            param1.§'!f§(§8"#§.§1q§,§'!X§.§=!O§,§8"#§.§^;§,§9B§().GetPosition().x + _loc7_,§9B§().GetPosition().y + _loc8_,1500,"",§8"#§.§3!j§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§0!5§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §<Z§() / 10;
         var _loc4_:int = 1 + _loc3_ * §`!%§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§1"'§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§'!f§(§8"#§.§-'§,§'!X§.§=!O§,§8"#§.§^;§,§9B§().GetPosition().x,§9B§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§'!f§(§8"#§.§1q§,§'!X§.§=!O§,§8"#§.§^;§,§9B§().GetPosition().x,§9B§().GetPosition().y,1250,"",§8"#§.§3!j§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
