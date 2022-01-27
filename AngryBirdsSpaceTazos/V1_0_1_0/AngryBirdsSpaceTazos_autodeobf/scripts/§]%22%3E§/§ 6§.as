package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.§=C§;
   import §'!&§.b2BodyDef;
   import §'!&§.b2FilterData;
   import §'!&§.b2World;
   import §'4§.§-T§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class § 6§ extends §5=§
   {
      
      public static const §]" §:String = "special";
      
      public static const §>E§:String = "fly";
      
      public static const §#D§:String = "fly_yell";
      
      protected static const §6"#§:Number = 20000;
      
      protected static const §for§:Number = 2000;
      
      protected static const § =§:Number = 0.2;
       
      
      private var §&8§:Number;
      
      protected var §-?§:Boolean = false;
      
      protected var §=!b§:int = 0;
      
      protected var §6!J§:Boolean = false;
      
      protected var §4"F§:int;
      
      public function § 6§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
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
         return this.§-?§;
      }
      
      public function get launchForce() : Number
      {
         return §-T§.§;x§;
      }
      
      public function get §?!d§() : Boolean
      {
         if(§^!z§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§`u§ && !§">§ && !this.specialPowerUsed;
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
         _loc1_.§ #§ = §>!C§;
         _loc1_.§5!@§ = 65535 & ~§-"#§;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§-?§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§-?§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§?!d§)
         {
            §'%§.setAnimation(§#D§);
         }
      }
      
      override public function blink() : void
      {
         if(this.§-?§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §'%§.setAnimation(§>E§);
      }
      
      protected function specialPower(param1:§;U§, param2:Number = 0, param3:Number = 0) : void
      {
         §'%§.setAnimation(§]" §);
      }
      
      override protected function setDamageState(param1:Number, param2:§;U§) : Boolean
      {
         return false;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§<!F§ = true;
         _loc3_.§@0§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§%!8§() || !this.§>""§))
         {
            this.§&8§ += param1;
            if(this.§&8§ >= §for§)
            {
               return true;
            }
         }
         else
         {
            this.§&8§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §^!z§() == null)
         {
            return false;
         }
         return true;
      }
      
      override protected function addTrail(param1:§;U§) : Boolean
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         var _loc2_:Number = x * §^g§.§5!-§;
         var _loc3_:Number = y * §^g§.§5!-§;
         if(this.§6!J§)
         {
            param1.§%!y§(§2!V§.§^"F§,§0"@§.§8!%§,§2!V§.§'"$§,_loc2_,_loc3_,-1,"",§2!V§.§3j§);
            this.§=!b§ = 0;
            this.§6!J§ = false;
         }
         else if(§ !K§ > 1)
         {
            param1.§%!y§(§2!V§.§`!f§,§0"@§.§8!%§,§2!V§.§'"$§,_loc2_,_loc3_,-1,"",§2!V§.§3j§);
         }
         else
         {
            _loc4_ = §2!V§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§=!b§ == 1)
            {
               _loc4_ = §2!V§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§=!b§ == 2)
            {
               _loc4_ = §2!V§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§=!b§ = (this.§=!b§ + 1) % 3;
            param1.§%!y§(_loc4_,§0"@§.§8!%§,§2!V§.§'"$§,_loc2_,_loc3_,-1,"",§2!V§.§3j§);
         }
         if(§=!k§() > this.launchForce && Math.random() < § =§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            param1.§%!y§(§2!V§.§^"9§,§0"@§.§3!W§,§2!V§.§#!N§,§^!z§().GetPosition().x,§^!z§().GetPosition().y,1250,"",§2!V§.§+9§(itemName),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
         return true;
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§?!d§)
         {
            §'!p§(§=C§.§8!U§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         if(this.§-?§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§-?§ = true;
            §'!p§(§=C§.§8"=§);
            this.specialPower(param1,param2,param3);
            this.§6!J§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§?!d§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §6`§(param1:int) : int
      {
         return Math.min(§9q§.§>!L§.§+r§,param1);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§?!d§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         §^e§(0);
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         if(param1 <= defence || defence == 0)
         {
            if(health == healthMax)
            {
               § N§(-1);
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
         this.§4"F§ = §=!c§;
      }
      
      protected function get §>""§() : Boolean
      {
         return §=!c§ - this.§4"F§ < §6"#§;
      }
      
      override protected function addDestructionParticles(param1:§;U§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §+<§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§6`§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§'%§.width * §^g§.§5!-§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§'%§.height * §^g§.§5!-§) + Math.random() * -_loc8_ * 2;
            param1.§%!y§(§2!V§.§^"9§,§0"@§.§3!W§,§2!V§.§#!N§,§^!z§().GetPosition().x + _loc7_,§^!z§().GetPosition().y + _loc8_,1500,"",§2!V§.§+9§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§;U§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §=!k§() / 10;
         var _loc4_:int = 1 + _loc3_ * §+<§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§6`§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§%!y§(§2!V§.§7G§,§0"@§.§3!W§,§2!V§.§#!N§,§^!z§().GetPosition().x,§^!z§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§%!y§(§2!V§.§^"9§,§0"@§.§3!W§,§2!V§.§#!N§,§^!z§().GetPosition().x,§^!z§().GetPosition().y,1250,"",§2!V§.§+9§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
