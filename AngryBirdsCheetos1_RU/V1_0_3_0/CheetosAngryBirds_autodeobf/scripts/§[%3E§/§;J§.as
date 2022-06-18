package §[>§
{
   import §'G§.§5e§;
   import §+!^§.§'Y§;
   import §4]§.b2BodyDef;
   import §4]§.b2World;
   import §8!C§.§%v§;
   import §8!C§.§2!4§;
   import §9!a§.Sprite;
   import §9T§.§#!4§;
   import §9T§.§=!^§;
   
   public class §;J§ extends §[!;§
   {
      
      protected static const §8!=§:Boolean = false;
      
      protected static const §[!§:Number = 2000;
      
      protected static const §";§:Number = 0.2;
       
      
      private var §;?§:Number;
      
      private var §#!3§:Boolean = false;
      
      protected var §1y§:int = 0;
      
      public function §;J§(param1:§'!'§, param2:Sprite, param3:b2World, param4:§=!^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §#!9§.mTryToScream = §]S§.§]T§ + 1;
         }
      }
      
      public function get §`!K§() : Boolean
      {
         return this.§#!3§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§%X§ = true;
         _loc3_.§3!F§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§8!?§ < §6!_§ && §'[§())
         {
            this.§;?§ += param1;
            if(this.§;?§ >= §[!§)
            {
               return true;
            }
         }
         else
         {
            this.§;?§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§#!3§)
         {
            if(§@!]§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§@!]§.toUpperCase() == "BIRD_YELLOW" || §@!]§.toUpperCase() == "BIRD_GREEN" || §@!]§.toUpperCase() == "BIRD_RED" || §@!]§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§#!9§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§#!9§.mTryToSpecial)
               {
                  §#!9§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§#!9§.mTryToSpecial)
            {
               §#!9§.mTryToSpecial = false;
               if(§#!9§.mIsSpecial)
               {
                  §#!9§.mIsSpecial = false;
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
         if(§7!<§().IsAwake() && §8!?§ == §6!_§)
         {
            if(!§#!9§.mTryToFly)
            {
               §#!9§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§@!]§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§#!3§ ? 2 : 1) * 360 / 1000;
               §[q§(§9!4§() - _loc3_);
            }
            else if(!(§@!]§.toUpperCase() == "BIRD_WHITE" && this.§#!3§))
            {
               if(§8!=§)
               {
                  §]2§();
               }
               else if(!§throw§() && !§8!<§())
               {
                  §[q§(0);
               }
            }
         }
         else if(§#!9§.mTryToFly)
         {
            §#!9§.mTryToFly = false;
            if(§#!9§.mIsFlying)
            {
               §#!9§.mIsFlying = false;
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
         var _loc1_:§=!^§ = §'Y§.§@j§;
         if(§8!?§ < §6!_§ || §7!<§() == null)
         {
            _loc1_.§3r§(this);
            _loc1_.§?!2§ = false;
            return;
         }
         var _loc2_:Number = x * §=!^§.§4#§;
         var _loc3_:Number = y * §=!^§.§4#§;
         if(_loc1_.§?!2§)
         {
            _loc1_.particles.addParticle(§%v§.§-D§,§2!4§.§ !N§,§%v§.§&!0§,_loc2_,_loc3_,-1,"",§%v§.§`<§);
            _loc1_.§?!2§ = false;
            this.§1y§ = 0;
         }
         else if(§@!X§ > 1)
         {
            _loc1_.particles.addParticle(§%v§.§`'§,§2!4§.§ !N§,§%v§.§&!0§,_loc2_,_loc3_,-1,"",§%v§.§`<§);
         }
         else
         {
            _loc4_ = §%v§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§1y§ == 1)
            {
               _loc4_ = §%v§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§1y§ == 2)
            {
               _loc4_ = §%v§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§1y§ = (this.§1y§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§2!4§.§ !N§,§%v§.§&!0§,_loc2_,_loc3_,-1,"",§%v§.§`<§);
         }
         if(§5z§() > §#!4§.§>K§ && Math.random() < §";§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§%v§.§4!W§,§2!4§.§8!Q§,§%v§.§[H§,§7!<§().GetPosition().x,§7!<§().GetPosition().y,1250,"",§%v§.§!v§(§@!]§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§#!9§.mTryToFly)
         {
            §]!%§(§5e§.§?K§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§'!'§) : Boolean
      {
         if(this.§#!3§)
         {
            return false;
         }
         §]!%§(§5e§.§!!<§);
         this.§#!3§ = true;
         return true;
      }
      
      private function §%!#§(param1:int) : int
      {
         return Math.min(§'Y§.§@j§.§2v§,param1);
      }
      
      override public function addDestructionParticles(param1:§2!4§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §`!<§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§%!#§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§#!9§.mW * §=!^§.§4#§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§#!9§.mH * §=!^§.§4#§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§%v§.§4!W§,§2!4§.§8!Q§,§%v§.§[H§,§7!<§().GetPosition().x + _loc7_,§7!<§().GetPosition().y + _loc8_,1500,"",§%v§.§!v§(§@!]§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§2!4§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§8!<§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §5z§() / 10;
         var _loc4_:int = 1 + _loc3_ * §`!<§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§%!#§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§%v§.§6!8§,§2!4§.§8!Q§,§%v§.§[H§,§7!<§().GetPosition().x,§7!<§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§%v§.§4!W§,§2!4§.§8!Q§,§%v§.§[H§,§7!<§().GetPosition().x,§7!<§().GetPosition().y,1250,"",§%v§.§!v§(§@!]§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
