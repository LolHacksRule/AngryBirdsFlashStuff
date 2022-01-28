package §_-tW§
{
   import §_-Di§.§_-ix§;
   import §_-Di§.§_-pX§;
   import §_-Rm§.§_-i8§;
   import §_-SE§.Sprite;
   import §_-dH§.§_-ds§;
   import §_-dH§.§_-wT§;
   import §_-pm§.§_-gb§;
   import §_-vk§.b2BodyDef;
   import §_-vk§.b2World;
   
   public class §_-f5§ extends §_-dM§
   {
      
      protected static const §_-Ho§:Boolean = false;
      
      protected static const §_-6Y§:Number = 2000;
      
      private static const §_-4A§:Number = 0.2;
       
      
      private var §_-Uc§:Number;
      
      private var §_-6s§:Boolean = false;
      
      private var §_-ca§:int = 0;
      
      public function §_-f5§(param1:§_-S5§, param2:Sprite, param3:b2World, param4:§_-ix§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §_-bV§.mTryToScream = §_-wS§.§_-Ma§ + 1;
         }
      }
      
      public function get §_-dv§() : Boolean
      {
         return this.§_-6s§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§_-b0§ = true;
         _loc3_.§_-0p§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-hs§ < §_-eV§ && §_-UO§())
         {
            this.§_-Uc§ += param1;
            if(this.§_-Uc§ >= §_-6Y§)
            {
               return true;
            }
         }
         else
         {
            this.§_-Uc§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§_-6s§)
         {
            if(§_-ep§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§_-ep§.toUpperCase() == "BIRD_YELLOW" || §_-ep§.toUpperCase() == "BIRD_GREEN" || §_-ep§.toUpperCase() == "BIRD_RED" || §_-ep§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§_-bV§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§_-bV§.mTryToSpecial)
               {
                  §_-bV§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§_-bV§.mTryToSpecial)
            {
               §_-bV§.mTryToSpecial = false;
               if(§_-bV§.mIsSpecial)
               {
                  §_-bV§.mIsSpecial = false;
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
         if(§_-UF§().IsAwake() && §_-hs§ == §_-eV§)
         {
            if(!§_-bV§.mTryToFly)
            {
               §_-bV§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§_-ep§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§_-6s§ ? 2 : 1) * 360 / 1000;
               §_-qt§(§_-BK§() - _loc3_);
            }
            else if(!(§_-ep§.toUpperCase() == "BIRD_WHITE" && this.§_-6s§))
            {
               if(§_-Ho§)
               {
                  §_-zY§();
               }
               else if(!§_-8b§() && !§_-Wj§())
               {
                  §_-qt§(0);
               }
            }
         }
         else if(§_-bV§.mTryToFly)
         {
            §_-bV§.mTryToFly = false;
            if(§_-bV§.mIsFlying)
            {
               §_-bV§.mIsFlying = false;
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
         var _loc1_:§_-ix§ = §_-gb§.§_-ls§;
         if(§_-hs§ < §_-eV§ || §_-UF§() == null)
         {
            _loc1_.§_-9d§(this);
            _loc1_.§_-9U§ = false;
            return;
         }
         var _loc2_:Number = x * §_-ix§.§_-z8§;
         var _loc3_:Number = y * §_-ix§.§_-z8§;
         if(_loc1_.§_-9U§)
         {
            _loc1_.particles.§_-Kw§(§_-ds§.§_-ib§,§_-wT§.§_-uY§,§_-ds§.§_-OG§,_loc2_,_loc3_,-1,"",§_-ds§.§_-8W§);
            _loc1_.§_-9U§ = false;
            this.§_-ca§ = 0;
         }
         else if(§_-Rt§ > 1)
         {
            _loc1_.particles.§_-Kw§(§_-ds§.§_-rF§,§_-wT§.§_-uY§,§_-ds§.§_-OG§,_loc2_,_loc3_,-1,"",§_-ds§.§_-8W§);
         }
         else
         {
            _loc4_ = §_-ds§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§_-ca§ == 1)
            {
               _loc4_ = §_-ds§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§_-ca§ == 2)
            {
               _loc4_ = §_-ds§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§_-ca§ = (this.§_-ca§ + 1) % 3;
            _loc1_.particles.§_-Kw§(_loc4_,§_-wT§.§_-uY§,§_-ds§.§_-OG§,_loc2_,_loc3_,-1,"",§_-ds§.§_-8W§);
         }
         if(§_-e6§() > §_-pX§.§_-te§ && Math.random() < §_-4A§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§_-Kw§(§_-ds§.§_-Sz§,§_-wT§.§_-Kz§,§_-ds§.§_-qg§,§_-UF§().GetPosition().x,§_-UF§().GetPosition().y,1250,"",§_-ds§.§_-vZ§(§_-ep§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§_-bV§.mTryToFly)
         {
            §_-9w§(§_-i8§.§_-za§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§_-S5§) : Boolean
      {
         if(this.§_-6s§)
         {
            return false;
         }
         §_-9w§(§_-i8§.§_-XJ§);
         this.§_-6s§ = true;
         return true;
      }
      
      override public function addDestructionParticles(param1:§_-wT§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §_-Zw§(false) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-bV§.mW * §_-ix§.§_-z8§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-bV§.mH * §_-ix§.§_-z8§) + Math.random() * -_loc8_ * 2;
            param1.§_-Kw§(§_-ds§.§_-Sz§,§_-wT§.§_-Kz§,§_-ds§.§_-qg§,§_-UF§().GetPosition().x + _loc7_,§_-UF§().GetPosition().y + _loc8_,1500,"",§_-ds§.§_-vZ§(§_-ep§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-wT§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§_-Wj§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §_-e6§() / 10;
         var _loc4_:int = 1 + _loc3_ * §_-Zw§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§_-Kw§(§_-ds§.§_-Y5§,§_-wT§.§_-Kz§,§_-ds§.§_-qg§,§_-UF§().GetPosition().x,§_-UF§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§_-Kw§(§_-ds§.§_-Sz§,§_-wT§.§_-Kz§,§_-ds§.§_-qg§,§_-UF§().GetPosition().x,§_-UF§().GetPosition().y,1250,"",§_-ds§.§_-vZ§(§_-ep§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
