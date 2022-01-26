package §_-bl§
{
   import §_-2r§.§_-Qo§;
   import §_-2r§.§_-sn§;
   import §_-Ls§.Sprite;
   import §_-gC§.§_-XR§;
   import §_-p5§.§_-ZO§;
   import §_-we§.§_-5J§;
   import §_-we§.§_-yB§;
   import §try§.b2BodyDef;
   import §try§.b2World;
   
   public class §_-ag§ extends §_-sZ§
   {
      
      protected static const §_-Fd§:Boolean = false;
      
      protected static const §_-iR§:Number = 2000;
      
      private static const §_-NP§:int = 20;
      
      private static const §_-Vo§:Number = 0.2;
       
      
      private var §_-qX§:Number;
      
      private var §_-RS§:Boolean = false;
      
      private var §_-ax§:int = 0;
      
      public function §_-ag§(param1:§_-S4§, param2:Sprite, param3:b2World, param4:§_-sn§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §_-KI§.mTryToScream = §_-Td§.§_-2u§ + 1;
         }
      }
      
      public function get §_-YL§() : Boolean
      {
         return this.§_-RS§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§_-II§ = true;
         _loc3_.§_-iY§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-T5§ < §_-Rj§ && §_-UQ§())
         {
            this.§_-qX§ += param1;
            if(this.§_-qX§ >= §_-iR§)
            {
               return true;
            }
         }
         else
         {
            this.§_-qX§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§_-RS§)
         {
            if(§_-G2§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§_-G2§.toUpperCase() == "BIRD_YELLOW" || §_-G2§.toUpperCase() == "BIRD_GREEN" || §_-G2§.toUpperCase() == "BIRD_RED" || §_-G2§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§_-KI§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§_-KI§.mTryToSpecial)
               {
                  §_-KI§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§_-KI§.mTryToSpecial)
            {
               §_-KI§.mTryToSpecial = false;
               if(§_-KI§.mIsSpecial)
               {
                  §_-KI§.mIsSpecial = false;
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
         if(§_-BO§().IsAwake() && §_-T5§ == §_-Rj§)
         {
            if(!§_-KI§.mTryToFly)
            {
               §_-KI§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§_-G2§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§_-RS§ ? 2 : 1) * 360 / 1000;
               §_-ul§(§_-rM§() - _loc3_);
            }
            else if(!(§_-G2§.toUpperCase() == "BIRD_WHITE" && this.§_-RS§))
            {
               if(§_-Fd§)
               {
                  §_-3§();
               }
               else if(!§_-Uh§() && !§_-J5§())
               {
                  §_-ul§(0);
               }
            }
         }
         else if(§_-KI§.mTryToFly)
         {
            §_-KI§.mTryToFly = false;
            if(§_-KI§.mIsFlying)
            {
               §_-KI§.mIsFlying = false;
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
         var _loc1_:§_-sn§ = §_-XR§.§_-Xv§;
         if(§_-T5§ < §_-Rj§ || §_-BO§() == null)
         {
            _loc1_.§_-0Q§(this);
            _loc1_.§_-8q§ = false;
            return;
         }
         var _loc2_:Number = x * §_-sn§.§_-5Y§;
         var _loc3_:Number = y * §_-sn§.§_-5Y§;
         if(_loc1_.§_-8q§)
         {
            _loc1_.particles.addParticle(§_-yB§.§_-aa§,§_-5J§.§_-aB§,§_-yB§.§_-0-5§,_loc2_,_loc3_,-1,"",§_-yB§.§_-6p§);
            _loc1_.§_-8q§ = false;
            this.§_-ax§ = 0;
         }
         else if(§_-Fj§ > 1)
         {
            _loc1_.particles.addParticle(§_-yB§.§_-qj§,§_-5J§.§_-aB§,§_-yB§.§_-0-5§,_loc2_,_loc3_,-1,"",§_-yB§.§_-6p§);
         }
         else
         {
            _loc4_ = §_-yB§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§_-ax§ == 1)
            {
               _loc4_ = §_-yB§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§_-ax§ == 2)
            {
               _loc4_ = §_-yB§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§_-ax§ = (this.§_-ax§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§_-5J§.§_-aB§,§_-yB§.§_-0-5§,_loc2_,_loc3_,-1,"",§_-yB§.§_-6p§);
         }
         if(§_-a2§() > §_-Qo§.§_-VI§ && Math.random() < §_-Vo§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§_-yB§.§_-PD§,§_-5J§.§_-2S§,§_-yB§.§_-7K§,§_-BO§().GetPosition().x,§_-BO§().GetPosition().y,1250,"",§_-yB§.§_-zC§(§_-G2§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§_-KI§.mTryToFly)
         {
            §_-M6§(§_-ZO§.§_-vg§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§_-S4§) : Boolean
      {
         if(this.§_-RS§)
         {
            return false;
         }
         §_-M6§(§_-ZO§.§_-1J§);
         this.§_-RS§ = true;
         return true;
      }
      
      private function §_-WK§(param1:int) : int
      {
         return Math.min(§_-NP§,param1);
      }
      
      override public function addDestructionParticles(param1:§_-5J§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §_-vE§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§_-WK§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-KI§.mW * §_-sn§.§_-5Y§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-KI§.mH * §_-sn§.§_-5Y§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§_-yB§.§_-PD§,§_-5J§.§_-2S§,§_-yB§.§_-7K§,§_-BO§().GetPosition().x + _loc7_,§_-BO§().GetPosition().y + _loc8_,1500,"",§_-yB§.§_-zC§(§_-G2§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-5J§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§_-J5§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §_-a2§() / 10;
         var _loc4_:int = 1 + _loc3_ * §_-vE§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§_-WK§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§_-yB§.§_-LP§,§_-5J§.§_-2S§,§_-yB§.§_-7K§,§_-BO§().GetPosition().x,§_-BO§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§_-yB§.§_-PD§,§_-5J§.§_-2S§,§_-yB§.§_-7K§,§_-BO§().GetPosition().x,§_-BO§().GetPosition().y,1250,"",§_-yB§.§_-zC§(§_-G2§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
