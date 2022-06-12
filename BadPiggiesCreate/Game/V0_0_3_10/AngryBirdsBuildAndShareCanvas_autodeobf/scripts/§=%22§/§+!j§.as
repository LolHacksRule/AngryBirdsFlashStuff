package §="§
{
   import §&!s§.§!m§;
   import §1U§.§"!V§;
   import §4!s§.§%I§;
   import §4!s§.§4^§;
   import §<f§.§3!8§;
   import §<f§.§7!0§;
   import §^I§.Sprite;
   import §`]§.b2BodyDef;
   import §`]§.b2World;
   
   public class §+!j§ extends §#!&§
   {
      
      protected static const §1!h§:Boolean = false;
      
      protected static const §5!M§:Number = 2000;
      
      protected static const §^!P§:Number = 0.2;
       
      
      private var §'!1§:Number;
      
      private var §%r§:Boolean = false;
      
      protected var §=g§:int = 0;
      
      public function §+!j§(param1:§="-§, param2:Sprite, param3:b2World, param4:§%I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §7!w§.mTryToScream = §<!e§.§@!v§ + 1;
         }
      }
      
      public function get §?!3§() : Boolean
      {
         return this.§%r§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§!e§ = true;
         _loc3_.§"x§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§+!_§ < §4>§ && §!!`§())
         {
            this.§'!1§ += param1;
            if(this.§'!1§ >= §5!M§)
            {
               return true;
            }
         }
         else
         {
            this.§'!1§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§%r§)
         {
            if(§'!l§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§'!l§.toUpperCase() == "BIRD_YELLOW" || §'!l§.toUpperCase() == "BIRD_GREEN" || §'!l§.toUpperCase() == "BIRD_RED" || §'!l§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§7!w§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§7!w§.mTryToSpecial)
               {
                  §7!w§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§7!w§.mTryToSpecial)
            {
               §7!w§.mTryToSpecial = false;
               if(§7!w§.mIsSpecial)
               {
                  §7!w§.mIsSpecial = false;
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
         if(getBody().IsAwake() && §+!_§ == §4>§)
         {
            if(!§7!w§.mTryToFly)
            {
               §7!w§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§'!l§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§%r§ ? 2 : 1) * 360 / 1000;
               §-O§(§'k§() - _loc3_);
            }
            else if(!(§'!l§.toUpperCase() == "BIRD_WHITE" && this.§%r§))
            {
               if(§1!h§)
               {
                  §3!D§();
               }
               else if(!§6C§() && !§]J§())
               {
                  §-O§(0);
               }
            }
         }
         else if(§7!w§.mTryToFly)
         {
            §7!w§.mTryToFly = false;
            if(§7!w§.mIsFlying)
            {
               §7!w§.mIsFlying = false;
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
         var _loc1_:§%I§ = §"!V§.§!j§;
         if(§+!_§ < §4>§ || getBody() == null)
         {
            _loc1_.§-!N§(this);
            _loc1_.§9q§ = false;
            return;
         }
         var _loc2_:Number = x * §%I§.§9"4§;
         var _loc3_:Number = y * §%I§.§9"4§;
         if(_loc1_.§9q§)
         {
            _loc1_.particles.§`!N§(§7!0§.§[>§,§3!8§.§-!#§,§7!0§.§&i§,_loc2_,_loc3_,-1,"",§7!0§.§+!2§);
            _loc1_.§9q§ = false;
            this.§=g§ = 0;
         }
         else if(§6u§ > 1)
         {
            _loc1_.particles.§`!N§(§7!0§.§]v§,§3!8§.§-!#§,§7!0§.§&i§,_loc2_,_loc3_,-1,"",§7!0§.§+!2§);
         }
         else
         {
            _loc4_ = §7!0§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§=g§ == 1)
            {
               _loc4_ = §7!0§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§=g§ == 2)
            {
               _loc4_ = §7!0§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§=g§ = (this.§=g§ + 1) % 3;
            _loc1_.particles.§`!N§(_loc4_,§3!8§.§-!#§,§7!0§.§&i§,_loc2_,_loc3_,-1,"",§7!0§.§+!2§);
         }
         if(§[!l§() > §4^§.§#!7§ && Math.random() < §^!P§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§`!N§(§7!0§.§+_§,§3!8§.§^D§,§7!0§.§3!!§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§7!0§.§@",§(§'!l§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§7!w§.mTryToFly)
         {
            §0!B§(§!m§.§[k§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§="-§) : Boolean
      {
         if(this.§%r§)
         {
            return false;
         }
         §0!B§(§!m§.§-"1§);
         this.§%r§ = true;
         return true;
      }
      
      private function §0G§(param1:int) : int
      {
         return Math.min(§"!V§.§!j§.§"!-§,param1);
      }
      
      override public function addDestructionParticles(param1:§3!8§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §9p§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§0G§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§7!w§.mW * §%I§.§9"4§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§7!w§.mH * §%I§.§9"4§) + Math.random() * -_loc8_ * 2;
            param1.§`!N§(§7!0§.§+_§,§3!8§.§^D§,§7!0§.§3!!§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§7!0§.§@",§(§'!l§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§3!8§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§]J§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §[!l§() / 10;
         var _loc4_:int = 1 + _loc3_ * §9p§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§0G§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§`!N§(§7!0§.§7!3§,§3!8§.§^D§,§7!0§.§3!!§,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§`!N§(§7!0§.§+_§,§3!8§.§^D§,§7!0§.§3!!§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§7!0§.§@",§(§'!l§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
