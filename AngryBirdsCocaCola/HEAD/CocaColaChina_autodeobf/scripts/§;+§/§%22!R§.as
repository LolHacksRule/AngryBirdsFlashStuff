package §;+§
{
   import § !K§.Sprite;
   import §-v§.§,!1§;
   import §3f§.b2BodyDef;
   import §3f§.b2World;
   import §4A§.§&_§;
   import §4A§.§3m§;
   import §;G§.§1D§;
   import §;G§.§;Z§;
   import §^p§.§0u§;
   
   public class §"!R§ extends §&]§
   {
      
      protected static const §7S§:Boolean = false;
      
      protected static const §0!0§:Number = 2000;
      
      protected static const §28§:Number = 0.2;
       
      
      private var §=!Y§:Number;
      
      private var § u§:Boolean = false;
      
      protected var §<n§:int = 0;
      
      public function §"!R§(param1:§+!?§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §4!%§.mTryToScream = §5!P§.§]5§ + 1;
         }
      }
      
      public function get §>!X§() : Boolean
      {
         return this.§ u§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§4E§ = true;
         _loc3_.§+I§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§"!D§ < §?L§ && §]C§())
         {
            this.§=!Y§ += param1;
            if(this.§=!Y§ >= §0!0§)
            {
               return true;
            }
         }
         else
         {
            this.§=!Y§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§ u§)
         {
            if(§1T§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§1T§.toUpperCase() == "BIRD_YELLOW" || §1T§.toUpperCase() == "BIRD_GREEN" || §1T§.toUpperCase() == "BIRD_RED" || §1T§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§4!%§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§4!%§.mTryToSpecial)
               {
                  §4!%§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§4!%§.mTryToSpecial)
            {
               §4!%§.mTryToSpecial = false;
               if(§4!%§.mIsSpecial)
               {
                  §4!%§.mIsSpecial = false;
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
         if(§1!d§().IsAwake() && §"!D§ == §?L§)
         {
            if(!§4!%§.mTryToFly)
            {
               §4!%§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§1T§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§ u§ ? 2 : 1) * 360 / 1000;
               §8l§(§7V§() - _loc3_);
            }
            else if(!(§1T§.toUpperCase() == "BIRD_WHITE" && this.§ u§))
            {
               if(§7S§)
               {
                  §'2§();
               }
               else if(!§=N§() && !§,p§())
               {
                  §8l§(0);
               }
            }
         }
         else if(§4!%§.mTryToFly)
         {
            §4!%§.mTryToFly = false;
            if(§4!%§.mIsFlying)
            {
               §4!%§.mIsFlying = false;
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
         if(§"!D§ < §?L§ || §1!d§() == null)
         {
            _loc1_.§5#§(this);
            _loc1_.§+2§ = false;
            return;
         }
         var _loc2_:Number = x * §&_§.§5-§;
         var _loc3_:Number = y * §&_§.§5-§;
         if(_loc1_.§+2§)
         {
            _loc1_.particles.§#!Q§(§;Z§.§[7§,§1D§.§`!F§,§;Z§.§<!6§,_loc2_,_loc3_,-1,"",§;Z§.§`E§);
            _loc1_.§+2§ = false;
            this.§<n§ = 0;
         }
         else if(§`!H§ > 1)
         {
            _loc1_.particles.§#!Q§(§;Z§.§^V§,§1D§.§`!F§,§;Z§.§<!6§,_loc2_,_loc3_,-1,"",§;Z§.§`E§);
         }
         else
         {
            _loc4_ = §;Z§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§<n§ == 1)
            {
               _loc4_ = §;Z§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§<n§ == 2)
            {
               _loc4_ = §;Z§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§<n§ = (this.§<n§ + 1) % 3;
            _loc1_.particles.§#!Q§(_loc4_,§1D§.§`!F§,§;Z§.§<!6§,_loc2_,_loc3_,-1,"",§;Z§.§`E§);
         }
         if(§=!$§() > §3m§.§`z§ && Math.random() < §28§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§#!Q§(§;Z§.§8+§,§1D§.§%d§,§;Z§.§>!H§,§1!d§().GetPosition().x,§1!d§().GetPosition().y,1250,"",§;Z§.§"!a§(§1T§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§4!%§.mTryToFly)
         {
            §@!@§(§0u§.§#^§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§+!?§) : Boolean
      {
         if(this.§ u§)
         {
            return false;
         }
         §@!@§(§0u§.§4!&§);
         this.§ u§ = true;
         return true;
      }
      
      private function §3L§(param1:int) : int
      {
         return Math.min(§,!1§.§2T§.§-a§,param1);
      }
      
      override public function addDestructionParticles(param1:§1D§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §!!W§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§3L§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§4!%§.mW * §&_§.§5-§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§4!%§.mH * §&_§.§5-§) + Math.random() * -_loc8_ * 2;
            param1.§#!Q§(§;Z§.§8+§,§1D§.§%d§,§;Z§.§>!H§,§1!d§().GetPosition().x + _loc7_,§1!d§().GetPosition().y + _loc8_,1500,"",§;Z§.§"!a§(§1T§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§1D§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§,p§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §=!$§() / 10;
         var _loc4_:int = 1 + _loc3_ * §!!W§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§3L§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§#!Q§(§;Z§.§%!B§,§1D§.§%d§,§;Z§.§>!H§,§1!d§().GetPosition().x,§1!d§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§#!Q§(§;Z§.§8+§,§1D§.§%d§,§;Z§.§>!H§,§1!d§().GetPosition().x,§1!d§().GetPosition().y,1250,"",§;Z§.§"!a§(§1T§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
