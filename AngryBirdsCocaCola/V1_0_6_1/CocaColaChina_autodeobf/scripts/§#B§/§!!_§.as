package §#B§
{
   import § y§.b2BodyDef;
   import § y§.b2World;
   import §,-§.§#o§;
   import §-V§.§&!^§;
   import §-V§.§]s§;
   import §2!G§.§ U§;
   import §2!G§.§2!V§;
   import §;A§.§7!K§;
   import §<!$§.Sprite;
   
   public class §!!_§ extends §@p§
   {
      
      protected static const §9Y§:Boolean = false;
      
      protected static const §try §:Number = 2000;
      
      protected static const §,!b§:Number = 0.2;
       
      
      private var §<V§:Number;
      
      private var §"!C§:Boolean = false;
      
      protected var §5!a§:int = 0;
      
      public function §!!_§(param1:§ ! §, param2:Sprite, param3:b2World, param4:§2!V§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §#8§.mTryToScream = §-!I§.§49§ + 1;
         }
      }
      
      public function get §;M§() : Boolean
      {
         return this.§"!C§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§=R§ = true;
         _loc3_.§`k§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§=1§ < §?G§ && §9!T§())
         {
            this.§<V§ += param1;
            if(this.§<V§ >= §try §)
            {
               return true;
            }
         }
         else
         {
            this.§<V§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§"!C§)
         {
            if(§3a§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§3a§.toUpperCase() == "BIRD_YELLOW" || §3a§.toUpperCase() == "BIRD_GREEN" || §3a§.toUpperCase() == "BIRD_RED" || §3a§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§#8§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§#8§.mTryToSpecial)
               {
                  §#8§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§#8§.mTryToSpecial)
            {
               §#8§.mTryToSpecial = false;
               if(§#8§.mIsSpecial)
               {
                  §#8§.mIsSpecial = false;
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
         if(§4g§().IsAwake() && §=1§ == §?G§)
         {
            if(!§#8§.mTryToFly)
            {
               §#8§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§3a§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§"!C§ ? 2 : 1) * 360 / 1000;
               §?J§(§;]§() - _loc3_);
            }
            else if(!(§3a§.toUpperCase() == "BIRD_WHITE" && this.§"!C§))
            {
               if(§9Y§)
               {
                  §4N§();
               }
               else if(!§2R§() && !§6!"§())
               {
                  §?J§(0);
               }
            }
         }
         else if(§#8§.mTryToFly)
         {
            §#8§.mTryToFly = false;
            if(§#8§.mIsFlying)
            {
               §#8§.mIsFlying = false;
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
         var _loc1_:§2!V§ = §7!K§.§=j§;
         if(§=1§ < §?G§ || §4g§() == null)
         {
            _loc1_.§7D§(this);
            _loc1_.§1!#§ = false;
            return;
         }
         var _loc2_:Number = x * §2!V§.§-!3§;
         var _loc3_:Number = y * §2!V§.§-!3§;
         if(_loc1_.§1!#§)
         {
            _loc1_.particles.§;!V§(§&!^§.§7=§,§]s§.§'!Z§,§&!^§.§>k§,_loc2_,_loc3_,-1,"",§&!^§.§%u§);
            _loc1_.§1!#§ = false;
            this.§5!a§ = 0;
         }
         else if(§'!V§ > 1)
         {
            _loc1_.particles.§;!V§(§&!^§.§7!1§,§]s§.§'!Z§,§&!^§.§>k§,_loc2_,_loc3_,-1,"",§&!^§.§%u§);
         }
         else
         {
            _loc4_ = §&!^§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§5!a§ == 1)
            {
               _loc4_ = §&!^§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§5!a§ == 2)
            {
               _loc4_ = §&!^§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§5!a§ = (this.§5!a§ + 1) % 3;
            _loc1_.particles.§;!V§(_loc4_,§]s§.§'!Z§,§&!^§.§>k§,_loc2_,_loc3_,-1,"",§&!^§.§%u§);
         }
         if(§',§() > § U§.§8e§ && Math.random() < §,!b§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§;!V§(§&!^§.§+Q§,§]s§.§0!E§,§&!^§.§7!L§,§4g§().GetPosition().x,§4g§().GetPosition().y,1250,"",§&!^§.§5F§(§3a§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§#8§.mTryToFly)
         {
            §;!J§(§#o§.§;g§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§ ! §) : Boolean
      {
         if(this.§"!C§)
         {
            return false;
         }
         §;!J§(§#o§.§7!$§);
         this.§"!C§ = true;
         return true;
      }
      
      private function §!!1§(param1:int) : int
      {
         return Math.min(§7!K§.§=j§.§]F§,param1);
      }
      
      override public function addDestructionParticles(param1:§]s§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §62§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§!!1§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§#8§.mW * §2!V§.§-!3§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§#8§.mH * §2!V§.§-!3§) + Math.random() * -_loc8_ * 2;
            param1.§;!V§(§&!^§.§+Q§,§]s§.§0!E§,§&!^§.§7!L§,§4g§().GetPosition().x + _loc7_,§4g§().GetPosition().y + _loc8_,1500,"",§&!^§.§5F§(§3a§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§]s§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§6!"§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §',§() / 10;
         var _loc4_:int = 1 + _loc3_ * §62§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§!!1§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§;!V§(§&!^§.§!T§,§]s§.§0!E§,§&!^§.§7!L§,§4g§().GetPosition().x,§4g§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§;!V§(§&!^§.§+Q§,§]s§.§0!E§,§&!^§.§7!L§,§4g§().GetPosition().x,§4g§().GetPosition().y,1250,"",§&!^§.§5F§(§3a§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
