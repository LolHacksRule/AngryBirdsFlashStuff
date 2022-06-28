package §3Y§
{
   import §%!M§.§8!;§;
   import §%!M§.LevelParticleManager;
   import §-!>§.§4!T§;
   import §1!&§.Sprite;
   import §1%§.b2BodyDef;
   import §1%§.b2World;
   import §?A§.LevelMain;
   import §?A§.LevelSlingshot;
   import §^L§.LevelItemSoundResource;
   
   public class §[r§ extends §5!E§
   {
      
      protected static const §2d§:Boolean = false;
      
      protected static const §#!K§:Number = 2000;
      
      protected static const §+!'§:Number = 0.2;
       
      
      private var §#q§:Number;
      
      private var §^w§:Boolean = false;
      
      protected var § !E§:int = 0;
      
      public function §[r§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            § get§.mTryToScream = LevelObjectRenderer.§6!H§ + 1;
         }
      }
      
      public function get §6!9§() : Boolean
      {
         return this.§^w§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§4x§ = true;
         _loc3_.§<!D§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§19§ < §^V§ && §[q§())
         {
            this.§#q§ += param1;
            if(this.§#q§ >= §#!K§)
            {
               return true;
            }
         }
         else
         {
            this.§#q§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§^w§)
         {
            if(§4!W§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§4!W§.toUpperCase() == "BIRD_YELLOW" || §4!W§.toUpperCase() == "BIRD_GREEN" || §4!W§.toUpperCase() == "BIRD_RED" || §4!W§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§ get§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§ get§.mTryToSpecial)
               {
                  § get§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§ get§.mTryToSpecial)
            {
               § get§.mTryToSpecial = false;
               if(§ get§.mIsSpecial)
               {
                  § get§.mIsSpecial = false;
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
         if(§8!N§().IsAwake() && §19§ == §^V§)
         {
            if(!§ get§.mTryToFly)
            {
               § get§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§4!W§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§^w§ ? 2 : 1) * 360 / 1000;
               § 4§(§=W§() - _loc3_);
            }
            else if(!(§4!W§.toUpperCase() == "BIRD_WHITE" && this.§^w§))
            {
               if(§2d§)
               {
                  §3!$§();
               }
               else if(!§3s§() && !§#j§())
               {
                  § 4§(0);
               }
            }
         }
         else if(§ get§.mTryToFly)
         {
            § get§.mTryToFly = false;
            if(§ get§.mIsFlying)
            {
               § get§.mIsFlying = false;
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
         var _loc1_:LevelMain = §4!T§.§1t§;
         if(§19§ < §^V§ || §8!N§() == null)
         {
            _loc1_.§^#§(this);
            _loc1_.§4-§ = false;
            return;
         }
         var _loc2_:Number = x * LevelMain.§!5§;
         var _loc3_:Number = y * LevelMain.§!5§;
         if(_loc1_.§4-§)
         {
            _loc1_.particles.§%!!§(§8!;§.§&!5§,LevelParticleManager.§`v§,§8!;§.§2!b§,_loc2_,_loc3_,-1,"",§8!;§.§9!0§);
            _loc1_.§4-§ = false;
            this.§ !E§ = 0;
         }
         else if(§,!]§ > 1)
         {
            _loc1_.particles.§%!!§(§8!;§.§%"§,LevelParticleManager.§`v§,§8!;§.§2!b§,_loc2_,_loc3_,-1,"",§8!;§.§9!0§);
         }
         else
         {
            _loc4_ = §8!;§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§ !E§ == 1)
            {
               _loc4_ = §8!;§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§ !E§ == 2)
            {
               _loc4_ = §8!;§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§ !E§ = (this.§ !E§ + 1) % 3;
            _loc1_.particles.§%!!§(_loc4_,LevelParticleManager.§`v§,§8!;§.§2!b§,_loc2_,_loc3_,-1,"",§8!;§.§9!0§);
         }
         if(§--§() > LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §+!'§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§%!!§(§8!;§.§=!5§,LevelParticleManager.§1!'§,§8!;§.§;Z§,§8!N§().GetPosition().x,§8!N§().GetPosition().y,1250,"",§8!;§.§"K§(§4!W§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§ get§.mTryToFly)
         {
            §8!9§(LevelItemSoundResource.§1!i§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         if(this.§^w§)
         {
            return false;
         }
         §8!9§(LevelItemSoundResource.§^H§);
         this.§^w§ = true;
         return true;
      }
      
      private function §5;§(param1:int) : int
      {
         return Math.min(§4!T§.§1t§.§!!J§,param1);
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §2!2§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§5;§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ += Math.random() * (720 / _loc3_);
            _loc6_ = _loc4_ / (180 / Math.PI);
            _loc7_ = -§ get§.mW * LevelMain.§!5§;
            _loc7_ += Math.random() * -_loc7_ * 2;
            _loc8_ = -§ get§.mH * LevelMain.§!5§;
            _loc8_ += Math.random() * -_loc8_ * 2;
            param1.§%!!§(§8!;§.§=!5§,LevelParticleManager.§1!'§,§8!;§.§;Z§,§8!N§().GetPosition().x + _loc7_,§8!N§().GetPosition().y + _loc8_,1500,"",§8!;§.§"K§(§4!W§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§#j§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §--§() / 10;
         var _loc4_:int = 1 + _loc3_ * §2!2§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§5;§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§%!!§(§8!;§.§,>§,LevelParticleManager.§1!'§,§8!;§.§;Z§,§8!N§().GetPosition().x,§8!N§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            _loc7_ = _loc5_ / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§%!!§(§8!;§.§=!5§,LevelParticleManager.§1!'§,§8!;§.§;Z§,§8!N§().GetPosition().x,§8!N§().GetPosition().y,1250,"",§8!;§.§"K§(§4!W§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
