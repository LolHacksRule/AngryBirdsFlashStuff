package §_-fr§
{
   import §_-43§.b2BodyDef;
   import §_-43§.b2World;
   import §_-94§.§_-si§;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-c3§;
   import §_-Kz§.§_-hD§;
   import §_-Sr§.§_-Jq§;
   import §_-Sr§.§_-K-§;
   import §_-TV§.§_-Sk§;
   
   public class §_-ZS§ extends §_-2W§
   {
      
      protected static const §_-t4§:Boolean = false;
      
      protected static const §_-4H§:Number = 2000;
      
      private static const §_-5E§:int = 20;
      
      private static const §_-gA§:Number = 0.2;
       
      
      private var §_-wV§:Number;
      
      private var §_-T§:Boolean = false;
      
      private var §_-am§:int = 0;
      
      public function §_-ZS§(param1:§ else§, param2:Sprite, param3:b2World, param4:§_-c3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §_-9G§.mTryToScream = §_-e9§.§_-0-X§ + 1;
         }
      }
      
      public function get §_-5p§() : Boolean
      {
         return this.§_-T§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§_-S9§ = true;
         _loc3_.§_-IM§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-KZ§ < §_-EU§ && §_-9q§())
         {
            this.§_-wV§ += param1;
            if(this.§_-wV§ >= §_-4H§)
            {
               return true;
            }
         }
         else
         {
            this.§_-wV§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§_-T§)
         {
            if(§_-05§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§_-05§.toUpperCase() == "BIRD_YELLOW" || §_-05§.toUpperCase() == "BIRD_GREEN" || §_-05§.toUpperCase() == "BIRD_RED" || §_-05§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§_-9G§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§_-9G§.mTryToSpecial)
               {
                  §_-9G§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§_-9G§.mTryToSpecial)
            {
               §_-9G§.mTryToSpecial = false;
               if(§_-9G§.mIsSpecial)
               {
                  §_-9G§.mIsSpecial = false;
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
         if(§implements§().IsAwake() && §_-KZ§ == §_-EU§)
         {
            if(!§_-9G§.mTryToFly)
            {
               §_-9G§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§_-05§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§_-T§ ? 2 : 1) * 360 / 1000;
               §_-Dw§(§_-qr§() - _loc3_);
            }
            else if(!(§_-05§.toUpperCase() == "BIRD_WHITE" && this.§_-T§))
            {
               if(§_-t4§)
               {
                  §_-Wv§();
               }
               else if(!§_-3X§() && !§_-Na§())
               {
                  §_-Dw§(0);
               }
            }
         }
         else if(§_-9G§.mTryToFly)
         {
            §_-9G§.mTryToFly = false;
            if(§_-9G§.mIsFlying)
            {
               §_-9G§.mIsFlying = false;
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
         var _loc1_:§_-c3§ = §_-si§.§_-HI§;
         if(§_-KZ§ < §_-EU§ || §implements§() == null)
         {
            _loc1_.§_-uy§(this);
            _loc1_.§_-qF§ = false;
            return;
         }
         var _loc2_:Number = x * §_-c3§.§_-GA§;
         var _loc3_:Number = y * §_-c3§.§_-GA§;
         if(_loc1_.§_-qF§)
         {
            _loc1_.particles.addParticle(§_-K-§.§_-3k§,§_-Jq§.§_-Ml§,§_-K-§.§_-BZ§,_loc2_,_loc3_,-1,"",§_-K-§.§_-P8§);
            _loc1_.§_-qF§ = false;
            this.§_-am§ = 0;
         }
         else if(§_-bV§ > 1)
         {
            _loc1_.particles.addParticle(§_-K-§.§_-5-§,§_-Jq§.§_-Ml§,§_-K-§.§_-BZ§,_loc2_,_loc3_,-1,"",§_-K-§.§_-P8§);
         }
         else
         {
            _loc4_ = §_-K-§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§_-am§ == 1)
            {
               _loc4_ = §_-K-§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§_-am§ == 2)
            {
               _loc4_ = §_-K-§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§_-am§ = (this.§_-am§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§_-Jq§.§_-Ml§,§_-K-§.§_-BZ§,_loc2_,_loc3_,-1,"",§_-K-§.§_-P8§);
         }
         if(§_-kk§() > §_-hD§.§_-iM§ && Math.random() < §_-gA§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§_-K-§.§_-b9§,§_-Jq§.§_-0-§,§_-K-§.§_-AI§,§implements§().GetPosition().x,§implements§().GetPosition().y,1250,"",§_-K-§.§_-2U§(§_-05§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§_-9G§.mTryToFly)
         {
            §_-HX§(§_-Sk§.§_-fv§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§ else§) : Boolean
      {
         if(this.§_-T§)
         {
            return false;
         }
         §_-HX§(§_-Sk§.§_-003§);
         this.§_-T§ = true;
         return true;
      }
      
      private function §_-AV§(param1:int) : int
      {
         return Math.min(§_-5E§,param1);
      }
      
      override public function addDestructionParticles(param1:§_-Jq§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §_-m8§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§_-AV§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-9G§.mW * §_-c3§.§_-GA§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-9G§.mH * §_-c3§.§_-GA§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§_-K-§.§_-b9§,§_-Jq§.§_-0-§,§_-K-§.§_-AI§,§implements§().GetPosition().x + _loc7_,§implements§().GetPosition().y + _loc8_,1500,"",§_-K-§.§_-2U§(§_-05§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-Jq§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§_-Na§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §_-kk§() / 10;
         var _loc4_:int = 1 + _loc3_ * §_-m8§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§_-AV§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§_-K-§.§_-yv§,§_-Jq§.§_-0-§,§_-K-§.§_-AI§,§implements§().GetPosition().x,§implements§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§_-K-§.§_-b9§,§_-Jq§.§_-0-§,§_-K-§.§_-AI§,§implements§().GetPosition().x,§implements§().GetPosition().y,1250,"",§_-K-§.§_-2U§(§_-05§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
