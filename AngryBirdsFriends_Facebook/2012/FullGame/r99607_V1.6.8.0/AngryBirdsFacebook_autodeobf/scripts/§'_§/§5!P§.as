package §'_§
{
   import § !k§.b2BodyDef;
   import § !k§.b2World;
   import §+I§.§9!%§;
   import §3!Z§.§,>§;
   import §3!Z§.§5!$§;
   import §3,§.§,!;§;
   import §3,§.§[!;§;
   import §<%§.§9q§;
   import §]&§.Sprite;
   
   public class §5!P§ extends §@1§
   {
      
      protected static const §>w§:Boolean = false;
      
      protected static const §3k§:Number = 2000;
      
      protected static const §""+§:Number = 0.2;
       
      
      private var §@"4§:Number;
      
      private var §[!g§:Boolean = false;
      
      protected var §]!4§:int = 0;
      
      public function §5!P§(param1:§=!&§, param2:Sprite, param3:b2World, param4:§[!;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §@!'§.mTryToScream = §5!;§.§9!8§ + 1;
         }
      }
      
      public function get § p§() : Boolean
      {
         return this.§[!g§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§@!%§ = true;
         _loc3_.§]=§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§9"8§ < § i§ && §'1§())
         {
            this.§@"4§ += param1;
            if(this.§@"4§ >= §3k§)
            {
               return true;
            }
         }
         else
         {
            this.§@"4§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§[!g§)
         {
            if(§+%§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§+%§.toUpperCase() == "BIRD_YELLOW" || §+%§.toUpperCase() == "BIRD_GREEN" || §+%§.toUpperCase() == "BIRD_RED" || §+%§.toUpperCase() == "BIRD_RED_BIG" || §+%§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§@!'§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§@!'§.mTryToSpecial)
               {
                  §@!'§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§@!'§.mTryToSpecial)
            {
               §@!'§.mTryToSpecial = false;
               if(§@!'§.mIsSpecial)
               {
                  §@!'§.mIsSpecial = false;
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
         if(§2"7§().IsAwake() && §9"8§ == § i§)
         {
            if(!§@!'§.mTryToFly)
            {
               §@!'§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§+%§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§[!g§ ? 2 : 1) * 360 / 1000;
               §=!_§(§8O§() - _loc3_);
            }
            else if(!(§+%§.toUpperCase() == "BIRD_WHITE" && this.§[!g§))
            {
               if(§>w§)
               {
                  §+!q§();
               }
               else if(!§!m§() && !§;Y§())
               {
                  §=!_§(0);
               }
            }
         }
         else if(§@!'§.mTryToFly)
         {
            §@!'§.mTryToFly = false;
            if(§@!'§.mIsFlying)
            {
               §@!'§.mIsFlying = false;
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
         var _loc1_:§[!;§ = §9!%§.§!!M§;
         if(§9"8§ < § i§ || §2"7§() == null)
         {
            _loc1_.§4y§(this);
            _loc1_.§=@§ = false;
            return;
         }
         var _loc2_:Number = x * §[!;§.§4!O§;
         var _loc3_:Number = y * §[!;§.§4!O§;
         if(_loc1_.§=@§)
         {
            _loc1_.particles.§&!J§(§5!$§.§]!'§,§,>§.§2"=§,§5!$§.§`"1§,_loc2_,_loc3_,-1,"",§5!$§.§6!'§);
            _loc1_.§=@§ = false;
            this.§]!4§ = 0;
         }
         else if(§62§ > 1)
         {
            _loc1_.particles.§&!J§(§5!$§.§%Q§,§,>§.§2"=§,§5!$§.§`"1§,_loc2_,_loc3_,-1,"",§5!$§.§6!'§);
         }
         else
         {
            _loc4_ = §5!$§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§]!4§ == 1)
            {
               _loc4_ = §5!$§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§]!4§ == 2)
            {
               _loc4_ = §5!$§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§]!4§ = (this.§]!4§ + 1) % 3;
            _loc1_.particles.§&!J§(_loc4_,§,>§.§2"=§,§5!$§.§`"1§,_loc2_,_loc3_,-1,"",§5!$§.§6!'§);
         }
         if(§5y§() > §,!;§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §""+§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§&!J§(§5!$§.§2M§,§,>§.§^!<§,§5!$§.§2!&§,§2"7§().GetPosition().x,§2"7§().GetPosition().y,1250,"",§5!$§.§9!Z§(§+%§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§@!'§.mTryToFly)
         {
            §-H§(§9q§.§]V§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§=!&§) : Boolean
      {
         if(this.§[!g§)
         {
            return false;
         }
         §-H§(§9q§.§!!f§);
         this.§[!g§ = true;
         return true;
      }
      
      private function §'D§(param1:int) : int
      {
         return Math.min(§9!%§.§!!M§.§5!8§,param1);
      }
      
      override public function addDestructionParticles(param1:§,>§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §+"9§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§'D§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§@!'§.mW * §[!;§.§4!O§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§@!'§.mH * §[!;§.§4!O§) + Math.random() * -_loc8_ * 2;
            param1.§&!J§(§5!$§.§2M§,§,>§.§^!<§,§5!$§.§2!&§,§2"7§().GetPosition().x + _loc7_,§2"7§().GetPosition().y + _loc8_,1500,"",§5!$§.§9!Z§(§+%§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§,>§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§;Y§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §5y§() / 10;
         var _loc4_:int = 1 + _loc3_ * §+"9§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§'D§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§&!J§(§5!$§.§>!z§,§,>§.§^!<§,§5!$§.§2!&§,§2"7§().GetPosition().x,§2"7§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§&!J§(§5!$§.§2M§,§,>§.§^!<§,§5!$§.§2!&§,§2"7§().GetPosition().x,§2"7§().GetPosition().y,1250,"",§5!$§.§9!Z§(§+%§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
