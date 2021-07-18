package §-!7§
{
   import §!J§.§[&§;
   import §&!"§.b2BodyDef;
   import §&!"§.b2World;
   import §9N§.§9!%§;
   import §9N§.§;c§;
   import §?7§.§=!5§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §`a§.Sprite;
   
   public class §^!1§ extends §!!!§
   {
      
      protected static const §5^§:Boolean = false;
      
      protected static const §`Q§:Number = 2000;
      
      private static const §1Y§:int = 20;
      
      private static const §<v§:Number = 0.2;
       
      
      private var §=p§:Number;
      
      private var §9f§:Boolean = false;
      
      private var §@A§:int = 0;
      
      public function §^!1§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §%n§.mTryToScream = §'x§.§ H§ + 1;
         }
      }
      
      public function get §]Z§() : Boolean
      {
         return this.§9f§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§ Q§ = true;
         _loc3_.§='§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§4^§ < §,>§ && §5!@§())
         {
            this.§=p§ += param1;
            if(this.§=p§ >= §`Q§)
            {
               return true;
            }
         }
         else
         {
            this.§=p§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§9f§)
         {
            if(§ h§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§ h§.toUpperCase() == "BIRD_YELLOW" || § h§.toUpperCase() == "BIRD_GREEN" || § h§.toUpperCase() == "BIRD_RED" || § h§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§%n§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§%n§.mTryToSpecial)
               {
                  §%n§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§%n§.mTryToSpecial)
            {
               §%n§.mTryToSpecial = false;
               if(§%n§.mIsSpecial)
               {
                  §%n§.mIsSpecial = false;
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
         if(§`!#§().IsAwake() && §4^§ == §,>§)
         {
            if(!§%n§.mTryToFly)
            {
               §%n§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§ h§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§9f§ ? 2 : 1) * 360 / 1000;
               §@L§(§?!"§() - _loc3_);
            }
            else if(!(§ h§.toUpperCase() == "BIRD_WHITE" && this.§9f§))
            {
               if(§5^§)
               {
                  §3!=§();
               }
               else if(!§;!B§() && !§?u§())
               {
                  §@L§(0);
               }
            }
         }
         else if(§%n§.mTryToFly)
         {
            §%n§.mTryToFly = false;
            if(§%n§.mIsFlying)
            {
               §%n§.mIsFlying = false;
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
         var _loc1_:§9!%§ = §[&§.§&!'§;
         if(§4^§ < §,>§ || §`!#§() == null)
         {
            _loc1_.§ c§(this);
            _loc1_.§%w§ = false;
            return;
         }
         var _loc2_:Number = x * §9!%§.§catch§;
         var _loc3_:Number = y * §9!%§.§catch§;
         if(_loc1_.§%w§)
         {
            _loc1_.particles.addParticle(§-&§.§%8§,§,v§.§`!+§,§-&§.§<6§,_loc2_,_loc3_,-1,"",§-&§.§[!$§);
            _loc1_.§%w§ = false;
            this.§@A§ = 0;
         }
         else if(§"6§ > 1)
         {
            _loc1_.particles.addParticle(§-&§.§#%§,§,v§.§`!+§,§-&§.§<6§,_loc2_,_loc3_,-1,"",§-&§.§[!$§);
         }
         else
         {
            _loc4_ = §-&§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§@A§ == 1)
            {
               _loc4_ = §-&§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§@A§ == 2)
            {
               _loc4_ = §-&§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§@A§ = (this.§@A§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§,v§.§`!+§,§-&§.§<6§,_loc2_,_loc3_,-1,"",§-&§.§[!$§);
         }
         if(§0K§() > §;c§.§-O§ && Math.random() < §<v§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§-&§.§+H§,§,v§.§-!;§,§-&§.§ ,§,§`!#§().GetPosition().x,§`!#§().GetPosition().y,1250,"",§-&§.§%6§(§ h§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§%n§.mTryToFly)
         {
            §,!L§(§=!5§.§#j§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§&$§) : Boolean
      {
         if(this.§9f§)
         {
            return false;
         }
         §,!L§(§=!5§.§`X§);
         this.§9f§ = true;
         return true;
      }
      
      private function §2!C§(param1:int) : int
      {
         return Math.min(§1Y§,param1);
      }
      
      override public function addDestructionParticles(param1:§,v§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §>!&§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§2!C§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§%n§.mW * §9!%§.§catch§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§%n§.mH * §9!%§.§catch§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§-&§.§+H§,§,v§.§-!;§,§-&§.§ ,§,§`!#§().GetPosition().x + _loc7_,§`!#§().GetPosition().y + _loc8_,1500,"",§-&§.§%6§(§ h§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§,v§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§?u§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §0K§() / 10;
         var _loc4_:int = 1 + _loc3_ * §>!&§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§2!C§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§-&§.§1U§,§,v§.§-!;§,§-&§.§ ,§,§`!#§().GetPosition().x,§`!#§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§-&§.§+H§,§,v§.§-!;§,§-&§.§ ,§,§`!#§().GetPosition().x,§`!#§().GetPosition().y,1250,"",§-&§.§%6§(§ h§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
