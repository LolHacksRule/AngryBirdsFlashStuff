package §3p§
{
   import § D§.§]!B§;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §2!H§.LevelMain;
   import §2!H§.LevelSlingshot;
   import §6!7§.Sprite;
   import §;T§.LevelItemSoundResource;
   import §]=§.b2BodyDef;
   import §]=§.b2World;
   
   public class §4!G§ extends §"!§
   {
      
      protected static const §for §:Boolean = false;
      
      protected static const §5F§:Number = 2000;
      
      protected static const §9!H§:Number = 0.2;
       
      
      private var §3;§:Number;
      
      private var §&!7§:Boolean = false;
      
      protected var §,b§:int = 0;
      
      public function §4!G§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §7!O§.mTryToScream = LevelObjectRenderer.§9!g§ + 1;
         }
      }
      
      public function get §2s§() : Boolean
      {
         return this.§&!7§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§3^§ = true;
         _loc3_.§=!8§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§0o§ < §]!3§ && §&E§())
         {
            this.§3;§ += param1;
            if(this.§3;§ >= §5F§)
            {
               return true;
            }
         }
         else
         {
            this.§3;§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§&!7§)
         {
            if(§#>§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§#>§.toUpperCase() == "BIRD_YELLOW" || §#>§.toUpperCase() == "BIRD_GREEN" || §#>§.toUpperCase() == "BIRD_RED" || §#>§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§7!O§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§7!O§.mTryToSpecial)
               {
                  §7!O§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§7!O§.mTryToSpecial)
            {
               §7!O§.mTryToSpecial = false;
               if(§7!O§.mIsSpecial)
               {
                  §7!O§.mIsSpecial = false;
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
         if(§9f§().IsAwake() && §0o§ == §]!3§)
         {
            if(!§7!O§.mTryToFly)
            {
               §7!O§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§#>§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§&!7§ ? 2 : 1) * 360 / 1000;
               §;V§(§=Y§() - _loc3_);
            }
            else if(!(§#>§.toUpperCase() == "BIRD_WHITE" && this.§&!7§))
            {
               if(§for §)
               {
                  §,!'§();
               }
               else if(!§?O§() && !§3g§())
               {
                  §;V§(0);
               }
            }
         }
         else if(§7!O§.mTryToFly)
         {
            §7!O§.mTryToFly = false;
            if(§7!O§.mIsFlying)
            {
               §7!O§.mIsFlying = false;
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
         var _loc1_:LevelMain = §]!B§.§>F§;
         if(§0o§ < §]!3§ || §9f§() == null)
         {
            _loc1_.§[]§(this);
            _loc1_.§>!=§ = false;
            return;
         }
         var _loc2_:Number = x * LevelMain.§8N§;
         var _loc3_:Number = y * LevelMain.§8N§;
         if(_loc1_.§>!=§)
         {
            _loc1_.particles.§@4§(§0'§.§6!L§,LevelParticleManager.§^![§,§0'§.§ 6§,_loc2_,_loc3_,-1,"",§0'§.§&"§);
            _loc1_.§>!=§ = false;
            this.§,b§ = 0;
         }
         else if(§[t§ > 1)
         {
            _loc1_.particles.§@4§(§0'§.§8d§,LevelParticleManager.§^![§,§0'§.§ 6§,_loc2_,_loc3_,-1,"",§0'§.§&"§);
         }
         else
         {
            _loc4_ = §0'§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§,b§ == 1)
            {
               _loc4_ = §0'§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§,b§ == 2)
            {
               _loc4_ = §0'§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§,b§ = (this.§,b§ + 1) % 3;
            _loc1_.particles.§@4§(_loc4_,LevelParticleManager.§^![§,§0'§.§ 6§,_loc2_,_loc3_,-1,"",§0'§.§&"§);
         }
         if(§5!c§() > LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §9!H§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§@4§(§0'§.§@R§,LevelParticleManager.§[K§,§0'§.§&A§,§9f§().GetPosition().x,§9f§().GetPosition().y,1250,"",§0'§.§%!`§(§#>§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§7!O§.mTryToFly)
         {
            §@r§(LevelItemSoundResource.§+m§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         if(this.§&!7§)
         {
            return false;
         }
         §@r§(LevelItemSoundResource.§-q§);
         this.§&!7§ = true;
         return true;
      }
      
      private function §#!H§(param1:int) : int
      {
         return Math.min(§]!B§.§>F§.§`A§,param1);
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §%W§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§#!H§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ += Math.random() * (720 / _loc3_);
            _loc6_ = _loc4_ / (180 / Math.PI);
            _loc7_ = -§7!O§.mW * LevelMain.§8N§;
            _loc7_ += Math.random() * -_loc7_ * 2;
            _loc8_ = -§7!O§.mH * LevelMain.§8N§;
            _loc8_ += Math.random() * -_loc8_ * 2;
            param1.§@4§(§0'§.§@R§,LevelParticleManager.§[K§,§0'§.§&A§,§9f§().GetPosition().x + _loc7_,§9f§().GetPosition().y + _loc8_,1500,"",§0'§.§%!`§(§#>§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§3g§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §5!c§() / 10;
         var _loc4_:int = 1 + _loc3_ * §%W§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§#!H§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§@4§(§0'§.§#!V§,LevelParticleManager.§[K§,§0'§.§&A§,§9f§().GetPosition().x,§9f§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            _loc7_ = _loc5_ / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§@4§(§0'§.§@R§,LevelParticleManager.§[K§,§0'§.§&A§,§9f§().GetPosition().x,§9f§().GetPosition().y,1250,"",§0'§.§%!`§(§#>§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
