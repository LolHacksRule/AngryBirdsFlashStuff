package §4j§
{
   import § !J§.§%M§;
   import § !J§.§`+§;
   import §7F§.§2M§;
   import §8T§.b2BodyDef;
   import §8T§.b2World;
   import §9!§.§9'§;
   import §[!B§.§,]§;
   import §[!B§.§7!N§;
   import §`!n§.Sprite;
   
   public class §@!K§ extends §?u§
   {
      
      protected static const §6!"§:Boolean = false;
      
      protected static const §]!?§:Number = 2000;
      
      protected static const §2!J§:Number = 0.2;
       
      
      private var §@!a§:Number;
      
      protected var §0Q§:Boolean = false;
      
      protected var §%5§:int = 0;
      
      public function §@!K§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §%!$§.mTryToScream = §?!c§.§%R§ + 1;
         }
      }
      
      public static function §;!F§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §2M§.§1?§.particles.§9!-§("STAR_PARTICLE",§,]§.§&!§,§7!N§.§<!Z§,§,]§.§in §,param1,param2,750,"",§,]§.§0!l§("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function get §8![§() : Boolean
      {
         return this.§0Q§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§&!1§ = true;
         _loc3_.§^!E§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§4!6§ < §%!^§ && §7!;§())
         {
            this.§@!a§ += param1;
            if(this.§@!a§ >= §]!?§)
            {
               return true;
            }
         }
         else
         {
            this.§@!a§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§0Q§)
         {
            if(§`!p§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§`!p§.toUpperCase() == "BIRD_YELLOW" || §`!p§.toUpperCase() == "BIRD_GREEN" || §`!p§.toUpperCase() == "BIRD_RED" || §`!p§.toUpperCase() == "BIRD_RED_BIG" || §`!p§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§%!$§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§%!$§.mTryToSpecial)
               {
                  §%!$§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§%!$§.mTryToSpecial)
            {
               §%!$§.mTryToSpecial = false;
               if(§%!$§.mIsSpecial)
               {
                  §%!$§.mIsSpecial = false;
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
         if(§3H§().IsAwake() && §4!6§ == §%!^§)
         {
            if(!§%!$§.mTryToFly)
            {
               §%!$§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§`!p§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§0Q§ ? 2 : 1) * 360 / 1000;
               §7,§(§&!G§() - _loc3_);
            }
            else if(!(§`!p§.toUpperCase() == "BIRD_WHITE" && this.§0Q§))
            {
               if(§6!"§)
               {
                  §>!H§();
               }
               else if(!§@q§() && !§9,§())
               {
                  §7,§(0);
               }
            }
         }
         else if(§%!$§.mTryToFly)
         {
            §%!$§.mTryToFly = false;
            if(§%!$§.mIsFlying)
            {
               §%!$§.mIsFlying = false;
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
         var _loc1_:§%M§ = §2M§.§1?§;
         if(§4!6§ < §%!^§ || §3H§() == null)
         {
            _loc1_.§7g§(this);
            _loc1_.§5L§ = false;
            return;
         }
         var _loc2_:Number = x * §%M§.§'!Y§;
         var _loc3_:Number = y * §%M§.§'!Y§;
         if(_loc1_.§5L§)
         {
            _loc1_.particles.§3X§(§,]§.§@C§,§7!N§.§<E§,§,]§.§#r§,_loc2_,_loc3_,-1,"",§,]§.§!o§);
            _loc1_.§5L§ = false;
            this.§%5§ = 0;
         }
         else if(§@!U§ > 1)
         {
            _loc1_.particles.§3X§(§,]§.§'!4§,§7!N§.§<E§,§,]§.§#r§,_loc2_,_loc3_,-1,"",§,]§.§!o§);
         }
         else
         {
            _loc4_ = §,]§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§%5§ == 1)
            {
               _loc4_ = §,]§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§%5§ == 2)
            {
               _loc4_ = §,]§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§%5§ = (this.§%5§ + 1) % 3;
            _loc1_.particles.§3X§(_loc4_,§7!N§.§<E§,§,]§.§#r§,_loc2_,_loc3_,-1,"",§,]§.§!o§);
         }
         if(_loc1_.slingshot.§>f§())
         {
            §;!F§(_loc2_,_loc3_,0,3,10);
         }
         if(§"g§() > §`+§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §2!J§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§3X§(§,]§.§"@§,§7!N§.§<!Z§,§,]§.§in §,§3H§().GetPosition().x,§3H§().GetPosition().y,1250,"",§,]§.§0!l§(§`!p§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§%!$§.mTryToFly)
         {
            §@!!§(§9'§.§ 4§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§0K§) : Boolean
      {
         if(this.§0Q§)
         {
            return false;
         }
         §@!!§(§9'§.§&!7§);
         this.§0Q§ = true;
         return true;
      }
      
      private function §>!Q§(param1:int) : int
      {
         return Math.min(§2M§.§1?§.§%!K§,param1);
      }
      
      override public function addDestructionParticles(param1:§7!N§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §>+§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§>!Q§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§%!$§.mW * §%M§.§'!Y§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§%!$§.mH * §%M§.§'!Y§) + Math.random() * -_loc8_ * 2;
            param1.§3X§(§,]§.§"@§,§7!N§.§<!Z§,§,]§.§in §,§3H§().GetPosition().x + _loc7_,§3H§().GetPosition().y + _loc8_,1500,"",§,]§.§0!l§(§`!p§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§7!N§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§9,§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §"g§() / 10;
         var _loc4_:int = 1 + _loc3_ * §>+§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§>!Q§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§3X§(§,]§.§3#§,§7!N§.§<!Z§,§,]§.§in §,§3H§().GetPosition().x,§3H§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§3X§(§,]§.§"@§,§7!N§.§<!Z§,§,]§.§in §,§3H§().GetPosition().x,§3H§().GetPosition().y,1250,"",§,]§.§0!l§(§`!p§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
