package §6!!§
{
   import §#!,§.Sprite;
   import §>!L§.b2BodyDef;
   import §>!L§.b2World;
   import §?!Y§.§`S§;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import §]!@§.LevelMain;
   import §]!@§.LevelSlingshot;
   import §package§.LevelItemSoundResource;
   
   public class §6!f§ extends §;!4§
   {
      
      protected static const §!h§:Boolean = false;
      
      protected static const § O§:Number = 2000;
      
      protected static const §7m§:Number = 0.2;
       
      
      private var §[!G§:Number;
      
      private var §#! §:Boolean = false;
      
      protected var §5!X§:int = 0;
      
      public function §6!f§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §`!P§.mTryToScream = LevelObjectRenderer.§9I§ + 1;
         }
      }
      
      public function get §+!O§() : Boolean
      {
         return this.§#! §;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§ 5§ = true;
         _loc3_.§4n§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§3W§ < §>!"§ && §5_§())
         {
            this.§[!G§ += param1;
            if(this.§[!G§ >= § O§)
            {
               return true;
            }
         }
         else
         {
            this.§[!G§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§#! §)
         {
            if(§ I§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§ I§.toUpperCase() == "BIRD_YELLOW" || § I§.toUpperCase() == "BIRD_GREEN" || § I§.toUpperCase() == "BIRD_RED" || § I§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§`!P§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§`!P§.mTryToSpecial)
               {
                  §`!P§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§`!P§.mTryToSpecial)
            {
               §`!P§.mTryToSpecial = false;
               if(§`!P§.mIsSpecial)
               {
                  §`!P§.mIsSpecial = false;
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
         if(§@!'§().IsAwake() && §3W§ == §>!"§)
         {
            if(!§`!P§.mTryToFly)
            {
               §`!P§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§ I§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§#! § ? 2 : 1) * 360 / 1000;
               §'g§(§ %§() - _loc3_);
            }
            else if(!(§ I§.toUpperCase() == "BIRD_WHITE" && this.§#! §))
            {
               if(§!h§)
               {
                  §4!9§();
               }
               else if(!§4!b§() && !§do §())
               {
                  §'g§(0);
               }
            }
         }
         else if(§`!P§.mTryToFly)
         {
            §`!P§.mTryToFly = false;
            if(§`!P§.mIsFlying)
            {
               §`!P§.mIsFlying = false;
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
         var _loc1_:LevelMain = §`S§.§[o§;
         if(§3W§ < §>!"§ || §@!'§() == null)
         {
            _loc1_.§6B§(this);
            _loc1_.static = false;
            return;
         }
         var _loc2_:Number = x * LevelMain.§@!d§;
         var _loc3_:Number = y * LevelMain.§@!d§;
         if(_loc1_.static)
         {
            _loc1_.particles.§?`§(§ !_§.§%!!§,LevelParticleManager.§%F§,§ !_§.§'!R§,_loc2_,_loc3_,-1,"",§ !_§.§>N§);
            _loc1_.static = false;
            this.§5!X§ = 0;
         }
         else if(§?!9§ > 1)
         {
            _loc1_.particles.§?`§(§ !_§.§,D§,LevelParticleManager.§%F§,§ !_§.§'!R§,_loc2_,_loc3_,-1,"",§ !_§.§>N§);
         }
         else
         {
            _loc4_ = § !_§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§5!X§ == 1)
            {
               _loc4_ = § !_§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§5!X§ == 2)
            {
               _loc4_ = § !_§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§5!X§ = (this.§5!X§ + 1) % 3;
            _loc1_.particles.§?`§(_loc4_,LevelParticleManager.§%F§,§ !_§.§'!R§,_loc2_,_loc3_,-1,"",§ !_§.§>N§);
         }
         if(§+l§() > LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §7m§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§?`§(§ !_§.§8,§,LevelParticleManager.§9!H§,§ !_§.§0o§,§@!'§().GetPosition().x,§@!'§().GetPosition().y,1250,"",§ !_§.§ do§(§ I§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§`!P§.mTryToFly)
         {
            §!d§(LevelItemSoundResource.§`!"§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         if(this.§#! §)
         {
            return false;
         }
         §!d§(LevelItemSoundResource.§%!O§);
         this.§#! § = true;
         return true;
      }
      
      private function §;d§(param1:int) : int
      {
         return Math.min(§`S§.§[o§.§>5§,param1);
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §0!"§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§;d§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ += Math.random() * (720 / _loc3_);
            _loc6_ = _loc4_ / (180 / Math.PI);
            _loc7_ = -§`!P§.mW * LevelMain.§@!d§;
            _loc7_ += Math.random() * -_loc7_ * 2;
            _loc8_ = -§`!P§.mH * LevelMain.§@!d§;
            _loc8_ += Math.random() * -_loc8_ * 2;
            param1.§?`§(§ !_§.§8,§,LevelParticleManager.§9!H§,§ !_§.§0o§,§@!'§().GetPosition().x + _loc7_,§@!'§().GetPosition().y + _loc8_,1500,"",§ !_§.§ do§(§ I§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§do §())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §+l§() / 10;
         var _loc4_:int = 1 + _loc3_ * §0!"§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§;d§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§?`§(§ !_§.§3!d§,LevelParticleManager.§9!H§,§ !_§.§0o§,§@!'§().GetPosition().x,§@!'§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            _loc7_ = _loc5_ / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§?`§(§ !_§.§8,§,LevelParticleManager.§9!H§,§ !_§.§0o§,§@!'§().GetPosition().x,§@!'§().GetPosition().y,1250,"",§ !_§.§ do§(§ I§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
