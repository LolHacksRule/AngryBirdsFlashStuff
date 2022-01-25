package §9C§
{
   import §#m§.§`5§;
   import §,!Q§.Sprite;
   import §,M§.§%C§;
   import §,M§.§,!;§;
   import §-v§.§,!1§;
   import §4A§.§&_§;
   import §4A§.§,!^§;
   import §4U§.b2BodyDef;
   import §4U§.b2World;
   
   public class §&]§ extends §[>§
   {
      
      protected static const §3L§:Boolean = false;
      
      protected static const §7S§:Number = 2000;
      
      protected static const §0!0§:Number = 0.2;
       
      
      private var §"!R§:Number;
      
      private var §=!Y§:Boolean = false;
      
      protected var § u§:int = 0;
      
      public function §&]§(param1:§;,§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §5U§.mTryToScream = §9!@§.§;X§ + 1;
         }
      }
      
      public function get §<n§() : Boolean
      {
         return this.§=!Y§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§`!]§ = true;
         _loc3_.§ o§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§ b§ < §&=§ && §]!<§())
         {
            this.§"!R§ += param1;
            if(this.§"!R§ >= §7S§)
            {
               return true;
            }
         }
         else
         {
            this.§"!R§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§=!Y§)
         {
            if(§!I§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§!I§.toUpperCase() == "BIRD_YELLOW" || §!I§.toUpperCase() == "BIRD_GREEN" || §!I§.toUpperCase() == "BIRD_RED" || §!I§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§5U§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§5U§.mTryToSpecial)
               {
                  §5U§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§5U§.mTryToSpecial)
            {
               §5U§.mTryToSpecial = false;
               if(§5U§.mIsSpecial)
               {
                  §5U§.mIsSpecial = false;
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
         if(§@!?§().IsAwake() && § b§ == §&=§)
         {
            if(!§5U§.mTryToFly)
            {
               §5U§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§!I§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§=!Y§ ? 2 : 1) * 360 / 1000;
               §-!!§(§'v§() - _loc3_);
            }
            else if(!(§!I§.toUpperCase() == "BIRD_WHITE" && this.§=!Y§))
            {
               if(§3L§)
               {
                  §7!2§();
               }
               else if(!§&!,§() && !§[!U§())
               {
                  §-!!§(0);
               }
            }
         }
         else if(§5U§.mTryToFly)
         {
            §5U§.mTryToFly = false;
            if(§5U§.mIsFlying)
            {
               §5U§.mIsFlying = false;
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
         var _loc1_:§&_§ = §,!1§.§2T§;
         if(§ b§ < §&=§ || §@!?§() == null)
         {
            _loc1_.§5#§(this);
            _loc1_.§+2§ = false;
            return;
         }
         var _loc2_:Number = x * §&_§.§5-§;
         var _loc3_:Number = y * §&_§.§5-§;
         if(_loc1_.§+2§)
         {
            _loc1_.particles.§<%§(§,!;§.§4!P§,§%C§.§6%§,§,!;§.§;q§,_loc2_,_loc3_,-1,"",§,!;§.§@E§);
            _loc1_.§+2§ = false;
            this.§ u§ = 0;
         }
         else if(§`!H§ > 1)
         {
            _loc1_.particles.§<%§(§,!;§.§-U§,§%C§.§6%§,§,!;§.§;q§,_loc2_,_loc3_,-1,"",§,!;§.§@E§);
         }
         else
         {
            _loc4_ = §,!;§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§ u§ == 1)
            {
               _loc4_ = §,!;§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§ u§ == 2)
            {
               _loc4_ = §,!;§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§ u§ = (this.§ u§ + 1) % 3;
            _loc1_.particles.§<%§(_loc4_,§%C§.§6%§,§,!;§.§;q§,_loc2_,_loc3_,-1,"",§,!;§.§@E§);
         }
         if(§]e§() > §,!^§.§93§ && Math.random() < §0!0§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§<%§(§,!;§.§<!6§,§%C§.§5l§,§,!;§.§7s§,§@!?§().GetPosition().x,§@!?§().GetPosition().y,1250,"",§,!;§.§%!$§(§!I§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§5U§.mTryToFly)
         {
            §;Y§(§`5§.§1!3§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§;,§) : Boolean
      {
         if(this.§=!Y§)
         {
            return false;
         }
         §;Y§(§`5§.§]!Q§);
         this.§=!Y§ = true;
         return true;
      }
      
      private function §>!X§(param1:int) : int
      {
         return Math.min(§,!1§.§2T§.§-a§,param1);
      }
      
      override public function addDestructionParticles(param1:§%C§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §!i§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§>!X§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§5U§.mW * §&_§.§5-§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§5U§.mH * §&_§.§5-§) + Math.random() * -_loc8_ * 2;
            param1.§<%§(§,!;§.§<!6§,§%C§.§5l§,§,!;§.§7s§,§@!?§().GetPosition().x + _loc7_,§@!?§().GetPosition().y + _loc8_,1500,"",§,!;§.§%!$§(§!I§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§%C§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§[!U§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §]e§() / 10;
         var _loc4_:int = 1 + _loc3_ * §!i§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§>!X§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§<%§(§,!;§.§^V§,§%C§.§5l§,§,!;§.§7s§,§@!?§().GetPosition().x,§@!?§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§<%§(§,!;§.§<!6§,§%C§.§5l§,§,!;§.§7s§,§@!?§().GetPosition().x,§@!?§().GetPosition().y,1250,"",§,!;§.§%!$§(§!I§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
