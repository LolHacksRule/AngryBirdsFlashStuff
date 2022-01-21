package §5!G§
{
   import §!!e§.§]!S§;
   import §&!K§.§3b§;
   import §&!K§.§^!3§;
   import §1B§.b2BodyDef;
   import §1B§.b2World;
   import §2!g§.Sprite;
   import §2o§.§<H§;
   import §@!b§.§%!'§;
   import §@!b§.§@!k§;
   
   public class §'!1§ extends §!<§
   {
      
      protected static const §"!N§:Boolean = false;
      
      protected static const §-!e§:Number = 2000;
      
      protected static const §=!X§:Number = 0.2;
       
      
      private var §-![§:Number;
      
      private var §`X§:Boolean = false;
      
      protected var §^!>§:int = 0;
      
      public function §'!1§(param1:§8+§, param2:Sprite, param3:b2World, param4:§@!k§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §8!J§.mTryToScream = §]^§.§@X§ + 1;
         }
      }
      
      public function get §=!F§() : Boolean
      {
         return this.§`X§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§<!2§ = true;
         _loc3_.§!!5§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§%!C§ < §#!2§ && §`=§())
         {
            this.§-![§ += param1;
            if(this.§-![§ >= §-!e§)
            {
               return true;
            }
         }
         else
         {
            this.§-![§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§`X§)
         {
            if(§@!i§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§@!i§.toUpperCase() == "BIRD_YELLOW" || §@!i§.toUpperCase() == "BIRD_GREEN" || §@!i§.toUpperCase() == "BIRD_RED" || §@!i§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§8!J§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§8!J§.mTryToSpecial)
               {
                  §8!J§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§8!J§.mTryToSpecial)
            {
               §8!J§.mTryToSpecial = false;
               if(§8!J§.mIsSpecial)
               {
                  §8!J§.mIsSpecial = false;
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
         if(§>j§().IsAwake() && §%!C§ == §#!2§)
         {
            if(!§8!J§.mTryToFly)
            {
               §8!J§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§@!i§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§`X§ ? 2 : 1) * 360 / 1000;
               §1-§(§^c§() - _loc3_);
            }
            else if(!(§@!i§.toUpperCase() == "BIRD_WHITE" && this.§`X§))
            {
               if(§"!N§)
               {
                  §,!c§();
               }
               else if(!§"!`§() && !§3!]§())
               {
                  §1-§(0);
               }
            }
         }
         else if(§8!J§.mTryToFly)
         {
            §8!J§.mTryToFly = false;
            if(§8!J§.mIsFlying)
            {
               §8!J§.mIsFlying = false;
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
         var _loc1_:§@!k§ = §<H§.§=3§;
         if(§%!C§ < §#!2§ || §>j§() == null)
         {
            _loc1_.§8!0§(this);
            _loc1_.§;U§ = false;
            return;
         }
         var _loc2_:Number = x * §@!k§.§2!J§;
         var _loc3_:Number = y * §@!k§.§2!J§;
         if(_loc1_.§;U§)
         {
            _loc1_.particles.§"!S§(§^!3§.§^g§,§3b§.§8]§,§^!3§.§6§,_loc2_,_loc3_,-1,"",§^!3§.§4g§);
            _loc1_.§;U§ = false;
            this.§^!>§ = 0;
         }
         else if(§6z§ > 1)
         {
            _loc1_.particles.§"!S§(§^!3§.§7$§,§3b§.§8]§,§^!3§.§6§,_loc2_,_loc3_,-1,"",§^!3§.§4g§);
         }
         else
         {
            _loc4_ = §^!3§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§^!>§ == 1)
            {
               _loc4_ = §^!3§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§^!>§ == 2)
            {
               _loc4_ = §^!3§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§^!>§ = (this.§^!>§ + 1) % 3;
            _loc1_.particles.§"!S§(_loc4_,§3b§.§8]§,§^!3§.§6§,_loc2_,_loc3_,-1,"",§^!3§.§4g§);
         }
         if(§=!W§() > §%!'§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §=!X§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§"!S§(§^!3§.§!!d§,§3b§.§;-§,§^!3§.§@<§,§>j§().GetPosition().x,§>j§().GetPosition().y,1250,"",§^!3§.§ !N§(§@!i§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§8!J§.mTryToFly)
         {
            §"z§(§]!S§.§<,§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§8+§) : Boolean
      {
         if(this.§`X§)
         {
            return false;
         }
         §"z§(§]!S§.§&!%§);
         this.§`X§ = true;
         return true;
      }
      
      private function §>n§(param1:int) : int
      {
         return Math.min(§<H§.§=3§.§[6§,param1);
      }
      
      override public function addDestructionParticles(param1:§3b§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §+?§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§>n§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§8!J§.mW * §@!k§.§2!J§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§8!J§.mH * §@!k§.§2!J§) + Math.random() * -_loc8_ * 2;
            param1.§"!S§(§^!3§.§!!d§,§3b§.§;-§,§^!3§.§@<§,§>j§().GetPosition().x + _loc7_,§>j§().GetPosition().y + _loc8_,1500,"",§^!3§.§ !N§(§@!i§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§3b§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§3!]§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §=!W§() / 10;
         var _loc4_:int = 1 + _loc3_ * §+?§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§>n§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§"!S§(§^!3§.§=X§,§3b§.§;-§,§^!3§.§@<§,§>j§().GetPosition().x,§>j§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§"!S§(§^!3§.§!!d§,§3b§.§;-§,§^!3§.§@<§,§>j§().GetPosition().x,§>j§().GetPosition().y,1250,"",§^!3§.§ !N§(§@!i§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
