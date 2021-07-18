package §_-CR§
{
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-HU§.§_-6n§;
   import §_-Iw§.b2BodyDef;
   import §_-Iw§.b2World;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   import §_-hU§.§_-MB§;
   
   public class §_-zf§ extends §_-kw§
   {
      
      protected static const §_-ko§:Boolean = false;
      
      protected static const §_-KH§:Number = 2000;
       
      
      private var §_-em§:Number;
      
      private var §_-xR§:Boolean = false;
      
      private var §_-WR§:int = 0;
      
      public function §_-zf§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §_-e7§.mTryToScream = §_-l9§.§_-ey§ + 1;
         }
      }
      
      public function get §_-mb§() : Boolean
      {
         return this.§_-xR§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§_-eK§ = true;
         _loc3_.§_-K5§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-Qm§ < §_-FF§ && §_-AA§())
         {
            this.§_-em§ += param1;
            if(this.§_-em§ >= §_-KH§)
            {
               return true;
            }
         }
         else
         {
            this.§_-em§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§_-xR§)
         {
            if(§_-L1§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§_-L1§.toUpperCase() == "BIRD_YELLOW" || §_-L1§.toUpperCase() == "BIRD_GREEN" || §_-L1§.toUpperCase() == "BIRD_RED" || §_-L1§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§_-e7§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§_-e7§.mTryToSpecial)
               {
                  §_-e7§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§_-e7§.mTryToSpecial)
            {
               §_-e7§.mTryToSpecial = false;
               if(§_-e7§.mIsSpecial)
               {
                  §_-e7§.mIsSpecial = false;
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
         if(§_-zq§().IsAwake() && §_-Qm§ == §_-FF§)
         {
            if(!§_-e7§.mTryToFly)
            {
               §_-e7§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§_-L1§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§_-xR§ ? 2 : 1) * 360 / 1000;
               §_-JM§(§_-Js§() - _loc3_);
            }
            else if(!(§_-L1§.toUpperCase() == "BIRD_WHITE" && this.§_-xR§))
            {
               if(§_-ko§)
               {
                  §_-gX§();
               }
               else if(!§_-fw§() && !§_-Rb§())
               {
                  §_-JM§(0);
               }
            }
         }
         else if(§_-e7§.mTryToFly)
         {
            §_-e7§.mTryToFly = false;
            if(§_-e7§.mIsFlying)
            {
               §_-e7§.mIsFlying = false;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc1_:§_-tL§ = §_-MB§.§_-A7§;
         if(§_-Qm§ < §_-FF§ || this.§_-xR§ && §_-L1§ == "BIRD_WHITE" || §_-zq§() == null)
         {
            _loc1_.§_-iF§(this);
            _loc1_.§_-aE§ = false;
            return;
         }
         var _loc2_:Number = x * §_-tL§.§_-7m§;
         var _loc3_:Number = y * §_-tL§.§_-7m§;
         if(_loc1_.§_-aE§)
         {
            _loc1_.particles.§_-JY§(§_-UW§.§_-H9§,§_-Gb§.§_-kL§,§_-UW§.§_-eQ§,_loc2_,_loc3_,-1,"",§_-UW§.§_-YC§);
            _loc1_.§_-aE§ = false;
            this.§_-WR§ = 0;
         }
         else if(§_-Qr§ > 1)
         {
            _loc1_.particles.§_-JY§(§_-UW§.§_-Zg§,§_-Gb§.§_-kL§,§_-UW§.§_-eQ§,_loc2_,_loc3_,-1,"",§_-UW§.§_-YC§);
         }
         else
         {
            _loc4_ = §_-UW§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§_-WR§ == 1)
            {
               _loc4_ = §_-UW§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§_-WR§ == 2)
            {
               _loc4_ = §_-UW§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§_-WR§ = (this.§_-WR§ + 1) % 3;
            _loc1_.particles.§_-JY§(_loc4_,§_-Gb§.§_-kL§,§_-UW§.§_-eQ§,_loc2_,_loc3_,-1,"",§_-UW§.§_-YC§);
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§_-e7§.mTryToFly)
         {
            §_-h7§(§_-6n§.§_-H0§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         if(this.§_-xR§)
         {
            return false;
         }
         §_-h7§(§_-6n§.§_-Xe§);
         this.§_-xR§ = true;
         return true;
      }
      
      override public function addDestructionParticles(param1:§_-Gb§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §_-jY§(false) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-e7§.mW * §_-tL§.§_-7m§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-e7§.mH * §_-tL§.§_-7m§) + Math.random() * -_loc8_ * 2;
            param1.§_-JY§(§_-UW§.§_-Lw§,§_-Gb§.§_-oO§,§_-UW§.§_-s4§,§_-zq§().GetPosition().x + _loc7_,§_-zq§().GetPosition().y + _loc8_,1500,"",§_-UW§.§_-G9§(§_-L1§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-Gb§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§_-Rb§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §_-Si§() / 10;
         var _loc4_:int = 1 + _loc3_ * §_-jY§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§_-JY§(§_-UW§.§_-Mx§,§_-Gb§.§_-oO§,§_-UW§.§_-s4§,§_-zq§().GetPosition().x,§_-zq§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,(0.5 + param2 / 50 * 0.5) * Math.sqrt(scale));
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§_-JY§(§_-UW§.§_-Lw§,§_-Gb§.§_-oO§,§_-UW§.§_-s4§,§_-zq§().GetPosition().x,§_-zq§().GetPosition().y,1250,"",§_-UW§.§_-G9§(§_-L1§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
