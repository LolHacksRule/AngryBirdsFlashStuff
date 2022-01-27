package §9"!§
{
   import §&!]§.Sprite;
   import §1"?§.§4R§;
   import §1"?§.§switch§;
   import §3"#§.§'"&§;
   import §3"#§.§`"8§;
   import §3>§.§-"8§;
   import §3>§.§=!Z§;
   import §9!K§.b2BodyDef;
   import §9!K§.b2FilterData;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   import §>"2§.§8k§;
   
   public class §!!H§ extends §,K§
   {
      
      public static const §3r§:String = "special";
      
      public static const §+_§:String = "fly";
      
      public static const §&"&§:String = "fly_yell";
      
      protected static const §[]§:Number = 20000;
      
      protected static const §""3§:Number = 2000;
      
      protected static const §;X§:Number = 0.2;
       
      
      private var §]!#§:Number;
      
      protected var §9!V§:Boolean = false;
      
      protected var §+>§:int = 0;
      
      protected var §,Q§:Boolean = false;
      
      protected var §4!7§:int;
      
      public function §!!H§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
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
         return this.§9!V§;
      }
      
      public function get launchForce() : Number
      {
         return §'"&§.§ O§;
      }
      
      public function get §8"?§() : Boolean
      {
         if(§`I§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§?"%§ && !§7!n§ && !this.specialPowerUsed;
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
         _loc1_.§7"C§ = §;!z§;
         _loc1_.§1!"§ = 65535 & ~§!!$§;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§9!V§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§9!V§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§8"?§)
         {
            §"j§.setAnimation(§&"&§);
         }
      }
      
      override public function blink() : void
      {
         if(this.§9!V§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §"j§.setAnimation(§+_§);
      }
      
      protected function specialPower(param1:§0!s§, param2:Number = 0, param3:Number = 0) : void
      {
         §"j§.setAnimation(§3r§);
      }
      
      override protected function setDamageState(param1:Number, param2:§0!s§) : Boolean
      {
         return false;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§=!l§ = true;
         _loc3_.§+!H§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§ !W§() || !this.§7E§))
         {
            this.§]!#§ += param1;
            if(this.§]!#§ >= §""3§)
            {
               return true;
            }
         }
         else
         {
            this.§]!#§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §`I§() == null)
         {
            return false;
         }
         return true;
      }
      
      override protected function addTrail(param1:§0!s§) : Boolean
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         var _loc2_:Number = x * §`"8§.§3!=§;
         var _loc3_:Number = y * §`"8§.§3!=§;
         if(this.§,Q§)
         {
            param1.§'"-§(§4R§.§9!8§,§switch§.§^"&§,§4R§.§-F§,_loc2_,_loc3_,-1,"",§4R§.§!!8§);
            this.§+>§ = 0;
            this.§,Q§ = false;
         }
         else if(§'_§ > 1)
         {
            param1.§'"-§(§4R§.§1!i§,§switch§.§^"&§,§4R§.§-F§,_loc2_,_loc3_,-1,"",§4R§.§!!8§);
         }
         else
         {
            _loc4_ = §4R§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§+>§ == 1)
            {
               _loc4_ = §4R§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§+>§ == 2)
            {
               _loc4_ = §4R§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§+>§ = (this.§+>§ + 1) % 3;
            param1.§'"-§(_loc4_,§switch§.§^"&§,§4R§.§-F§,_loc2_,_loc3_,-1,"",§4R§.§!!8§);
         }
         if(§4T§() > this.launchForce && Math.random() < §;X§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            param1.§'"-§(§4R§.§6"!§,§switch§.§%!y§,§4R§.§!o§,§`I§().GetPosition().x,§`I§().GetPosition().y,1250,"",§4R§.§#!y§(itemName),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
         return true;
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§8"?§)
         {
            §6!7§(§=!Z§.§"@§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§0!s§, param2:Number, param3:Number) : Boolean
      {
         if(this.§9!V§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§9!V§ = true;
            §6!7§(§=!Z§.§3^§);
            this.specialPower(param1,param2,param3);
            this.§,Q§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§8"?§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §,b§(param1:int) : int
      {
         return Math.min(§8k§.§;!]§.§'m§,param1);
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§8"?§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         §3",§(0);
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         if(param1 <= defence || defence == 0)
         {
            if(health == healthMax)
            {
               §[",§(-1);
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
         this.§4!7§ = §`!L§;
      }
      
      protected function get §7E§() : Boolean
      {
         return §`!L§ - this.§4!7§ < §[]§;
      }
      
      override protected function addDestructionParticles(param1:§0!s§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §0!B§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§,b§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§"j§.width * §`"8§.§3!=§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§"j§.height * §`"8§.§3!=§) + Math.random() * -_loc8_ * 2;
            param1.§'"-§(§4R§.§6"!§,§switch§.§%!y§,§4R§.§!o§,§`I§().GetPosition().x + _loc7_,§`I§().GetPosition().y + _loc8_,1500,"",§4R§.§#!y§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§0!s§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §4T§() / 10;
         var _loc4_:int = 1 + _loc3_ * §0!B§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§,b§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§'"-§(§4R§.§0!C§,§switch§.§%!y§,§4R§.§!o§,§`I§().GetPosition().x,§`I§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§'"-§(§4R§.§6"!§,§switch§.§%!y§,§4R§.§!o§,§`I§().GetPosition().x,§`I§().GetPosition().y,1250,"",§4R§.§#!y§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
