package §'!`§
{
   import §%!5§.§7;§;
   import §-0§.b2BodyDef;
   import §-0§.b2World;
   import §0@§.Sprite;
   import §3G§.§9! §;
   import §55§.§"!P§;
   import §55§.§>![§;
   import §9!C§.§,!j§;
   import §9!C§.§3!f§;
   
   public class §3C§ extends §]!§
   {
      
      protected static const §5q§:Boolean = false;
      
      protected static const §[%§:Number = 2000;
      
      protected static const §+!!§:Number = 0.2;
       
      
      private var §7!_§:Number;
      
      private var §>u§:Boolean = false;
      
      protected var §%y§:int = 0;
      
      public function §3C§(param1:§for§, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §@!5§.mTryToScream = §-!W§.§3!]§ + 1;
         }
      }
      
      public function get §%!Y§() : Boolean
      {
         return this.§>u§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§"5§ = true;
         _loc3_.§1!=§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§0!8§ < §6w§ && §1-§())
         {
            this.§7!_§ += param1;
            if(this.§7!_§ >= §[%§)
            {
               return true;
            }
         }
         else
         {
            this.§7!_§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§>u§)
         {
            if(§8+§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§8+§.toUpperCase() == "BIRD_YELLOW" || §8+§.toUpperCase() == "BIRD_GREEN" || §8+§.toUpperCase() == "BIRD_RED" || §8+§.toUpperCase() == "BIRD_RED_BIG" || §8+§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§@!5§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§@!5§.mTryToSpecial)
               {
                  §@!5§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§@!5§.mTryToSpecial)
            {
               §@!5§.mTryToSpecial = false;
               if(§@!5§.mIsSpecial)
               {
                  §@!5§.mIsSpecial = false;
                  _loc2_ = true;
               }
            }
         }
         return _loc2_;
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:Boolean = false;
         if(§&!p§().IsAwake() && §0!8§ == §6w§)
         {
            if(!§@!5§.mTryToFly)
            {
               §@!5§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§8+§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§>u§ ? 2 : 1) * 360 / 1000;
               §>!$§(§#!$§() - _loc3_);
            }
            else if(!(§8+§.toUpperCase() == "BIRD_WHITE" && this.§>u§))
            {
               if(§5q§)
               {
                  §'O§();
               }
               else if(!§3!!§() && !§=B§())
               {
                  §>!$§(0);
               }
            }
         }
         else if(§@!5§.mTryToFly)
         {
            §@!5§.mTryToFly = false;
            if(§@!5§.mIsFlying)
            {
               §@!5§.mIsFlying = false;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§>![§ = §7;§.§1h§;
         if(§0!8§ < §6w§ || §&!p§() == null)
         {
            _loc1_.§!E§(this);
            _loc1_.§`!a§ = false;
            return;
         }
         var _loc2_:Number = x * §>![§.§%!k§;
         var _loc3_:Number = y * §>![§.§%!k§;
         if(_loc1_.§`!a§)
         {
            _loc1_.particles.§4!2§(§3!f§.§;§,§,!j§.§`!F§,§3!f§.§%<§,_loc2_,_loc3_,-1,"",§3!f§.§[0§);
            _loc1_.§`!a§ = false;
            this.§%y§ = 0;
         }
         else if(§-A§ > 1)
         {
            _loc1_.particles.§4!2§(§3!f§.§]O§,§,!j§.§`!F§,§3!f§.§%<§,_loc2_,_loc3_,-1,"",§3!f§.§[0§);
         }
         else
         {
            _loc4_ = §3!f§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§%y§ == 1)
            {
               _loc4_ = §3!f§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§%y§ == 2)
            {
               _loc4_ = §3!f§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§%y§ = (this.§%y§ + 1) % 3;
            _loc1_.particles.§4!2§(_loc4_,§,!j§.§`!F§,§3!f§.§%<§,_loc2_,_loc3_,-1,"",§3!f§.§[0§);
         }
         if(§,8§() > §"!P§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §+!!§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§4!2§(§3!f§.§1w§,§,!j§.§++§,§3!f§.§"!&§,§&!p§().GetPosition().x,§&!p§().GetPosition().y,1250,"",§3!f§.§-!Z§(§8+§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§@!5§.mTryToFly)
         {
            §0!"§(§9! §.§`w§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§for§) : Boolean
      {
         if(this.§>u§)
         {
            return false;
         }
         §0!"§(§9! §.§,!l§);
         this.§>u§ = true;
         return true;
      }
      
      private function §>I§(param1:int) : int
      {
         return Math.min(§7;§.§1h§.§,q§,param1);
      }
      
      override public function addDestructionParticles(param1:§,!j§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = § !$§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§>I§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§@!5§.mW * §>![§.§%!k§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§@!5§.mH * §>![§.§%!k§) + Math.random() * -_loc8_ * 2;
            param1.§4!2§(§3!f§.§1w§,§,!j§.§++§,§3!f§.§"!&§,§&!p§().GetPosition().x + _loc7_,§&!p§().GetPosition().y + _loc8_,1500,"",§3!f§.§-!Z§(§8+§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§,!j§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§=B§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §,8§() / 10;
         var _loc4_:int = 1 + _loc3_ * § !$§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§>I§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§4!2§(§3!f§.§>v§,§,!j§.§++§,§3!f§.§"!&§,§&!p§().GetPosition().x,§&!p§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§4!2§(§3!f§.§1w§,§,!j§.§++§,§3!f§.§"!&§,§&!p§().GetPosition().x,§&!p§().GetPosition().y,1250,"",§3!f§.§-!Z§(§8+§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
