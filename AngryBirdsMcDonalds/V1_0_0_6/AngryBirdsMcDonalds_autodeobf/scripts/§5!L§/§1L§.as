package §5!L§
{
   import §#M§.§+!Z§;
   import §2![§.Sprite;
   import §7!5§.b2BodyDef;
   import §7!5§.b2World;
   import §8!§.§'F§;
   import §8!§.§9!-§;
   import §<L§.§!!G§;
   import §<L§.§7!4§;
   import §?!'§.§3!^§;
   
   public class §1L§ extends §^!P§
   {
      
      protected static const §#1§:Boolean = false;
      
      protected static const §]s§:Number = 2000;
      
      protected static const §>!8§:Number = 0.2;
       
      
      private var §"!I§:Number;
      
      private var §]7§:Boolean = false;
      
      protected var §@! §:int = 0;
      
      public function §1L§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §<i§.mTryToScream = §+!+§.§'!0§ + 1;
         }
      }
      
      public function get §=!h§() : Boolean
      {
         return this.§]7§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§!!O§ = true;
         _loc3_.§3!-§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§3o§ < §'6§ && §?E§())
         {
            this.§"!I§ += param1;
            if(this.§"!I§ >= §]s§)
            {
               return true;
            }
         }
         else
         {
            this.§"!I§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§]7§)
         {
            if(§%!O§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§%!O§.toUpperCase() == "BIRD_YELLOW" || §%!O§.toUpperCase() == "BIRD_GREEN" || §%!O§.toUpperCase() == "BIRD_RED" || §%!O§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§<i§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§<i§.mTryToSpecial)
               {
                  §<i§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§<i§.mTryToSpecial)
            {
               §<i§.mTryToSpecial = false;
               if(§<i§.mIsSpecial)
               {
                  §<i§.mIsSpecial = false;
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
         if(§;G§().IsAwake() && §3o§ == §'6§)
         {
            if(!§<i§.mTryToFly)
            {
               §<i§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§%!O§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§]7§ ? 2 : 1) * 360 / 1000;
               §'!M§(§3E§() - _loc3_);
            }
            else if(!(§%!O§.toUpperCase() == "BIRD_WHITE" && this.§]7§))
            {
               if(§#1§)
               {
                  §9z§();
               }
               else if(!§!p§() && !§]!+§())
               {
                  §'!M§(0);
               }
            }
         }
         else if(§<i§.mTryToFly)
         {
            §<i§.mTryToFly = false;
            if(§<i§.mIsFlying)
            {
               §<i§.mIsFlying = false;
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
         var _loc1_:§!!G§ = §+!Z§.§?!<§;
         if(§3o§ < §'6§ || §;G§() == null)
         {
            _loc1_.§7$§(this);
            _loc1_.§7]§ = false;
            return;
         }
         var _loc2_:Number = x * §!!G§.§ !E§;
         var _loc3_:Number = y * §!!G§.§ !E§;
         if(_loc1_.§7]§)
         {
            _loc1_.particles.§]!5§(§9!-§.§-!P§,§'F§.§"^§,§9!-§.§92§,_loc2_,_loc3_,-1,"",§9!-§.§>5§);
            _loc1_.§7]§ = false;
            this.§@! § = 0;
         }
         else if(§9Z§ > 1)
         {
            _loc1_.particles.§]!5§(§9!-§.§<!O§,§'F§.§"^§,§9!-§.§92§,_loc2_,_loc3_,-1,"",§9!-§.§>5§);
         }
         else
         {
            _loc4_ = §9!-§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§@! § == 1)
            {
               _loc4_ = §9!-§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§@! § == 2)
            {
               _loc4_ = §9!-§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§@! § = (this.§@! § + 1) % 3;
            _loc1_.particles.§]!5§(_loc4_,§'F§.§"^§,§9!-§.§92§,_loc2_,_loc3_,-1,"",§9!-§.§>5§);
         }
         if(§]!N§() > §7!4§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §>!8§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§]!5§(§9!-§.§`!f§,§'F§.§8e§,§9!-§.§7=§,§;G§().GetPosition().x,§;G§().GetPosition().y,1250,"",§9!-§.§4!^§(§%!O§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§<i§.mTryToFly)
         {
            §=W§(§3!^§.§;y§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§?8§) : Boolean
      {
         if(this.§]7§)
         {
            return false;
         }
         §=W§(§3!^§.§+!9§);
         this.§]7§ = true;
         return true;
      }
      
      private function §=!^§(param1:int) : int
      {
         return Math.min(§+!Z§.§?!<§.§#E§,param1);
      }
      
      override public function addDestructionParticles(param1:§'F§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §6k§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§=!^§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§<i§.mW * §!!G§.§ !E§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§<i§.mH * §!!G§.§ !E§) + Math.random() * -_loc8_ * 2;
            param1.§]!5§(§9!-§.§`!f§,§'F§.§8e§,§9!-§.§7=§,§;G§().GetPosition().x + _loc7_,§;G§().GetPosition().y + _loc8_,1500,"",§9!-§.§4!^§(§%!O§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§'F§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§]!+§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §]!N§() / 10;
         var _loc4_:int = 1 + _loc3_ * §6k§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§=!^§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§]!5§(§9!-§.§0!?§,§'F§.§8e§,§9!-§.§7=§,§;G§().GetPosition().x,§;G§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§]!5§(§9!-§.§`!f§,§'F§.§8e§,§9!-§.§7=§,§;G§().GetPosition().x,§;G§().GetPosition().y,1250,"",§9!-§.§4!^§(§%!O§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
