package §_-mj§
{
   import §_-5Y§.§_-yw§;
   import §_-CW§.§_-C-§;
   import §_-CW§.§_-hK§;
   import §_-M0§.§_-u4§;
   import §_-WH§.§_-YE§;
   import §_-b5§.Sprite;
   import §const§.b2BodyDef;
   import §const§.b2World;
   
   public class §_-8x§ extends §_-OW§
   {
      
      protected static const §_-1Z§:Boolean = false;
      
      protected static const §_-t4§:Number = 2000;
       
      
      private var §_-Th§:Number;
      
      private var §_-8X§:Boolean = false;
      
      private var §_-JX§:int = 0;
      
      public function §_-8x§(param1:§_-Fv§, param2:Sprite, param3:b2World, param4:§_-yw§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §_-M4§.mTryToScream = §_-KA§.§_-6K§ + 1;
         }
      }
      
      public function get §_-zd§() : Boolean
      {
         return this.§_-8X§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§_-Yb§ = true;
         _loc3_.§_-AR§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-QY§ < §_-t6§ && §_-bf§())
         {
            this.§_-Th§ += param1;
            if(this.§_-Th§ >= §_-t4§)
            {
               return true;
            }
         }
         else
         {
            this.§_-Th§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§_-8X§)
         {
            if(§_-FK§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§_-FK§.toUpperCase() == "BIRD_YELLOW" || §_-FK§.toUpperCase() == "BIRD_GREEN" || §_-FK§.toUpperCase() == "BIRD_RED" || §_-FK§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§_-M4§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§_-M4§.mTryToSpecial)
               {
                  §_-M4§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§_-M4§.mTryToSpecial)
            {
               §_-M4§.mTryToSpecial = false;
               if(§_-M4§.mIsSpecial)
               {
                  §_-M4§.mIsSpecial = false;
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
         if(§_-oR§().IsAwake() && §_-QY§ == §_-t6§)
         {
            if(!§_-M4§.mTryToFly)
            {
               §_-M4§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§_-FK§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§_-8X§ ? 2 : 1) * 360 / 1000;
               §_-DB§(§_-vx§() - _loc3_);
            }
            else if(!(§_-FK§.toUpperCase() == "BIRD_WHITE" && this.§_-8X§))
            {
               if(§_-1Z§)
               {
                  §_-20§();
               }
               else if(!§_-Aj§() && !§_-YY§())
               {
                  §_-DB§(0);
               }
            }
         }
         else if(§_-M4§.mTryToFly)
         {
            §_-M4§.mTryToFly = false;
            if(§_-M4§.mIsFlying)
            {
               §_-M4§.mIsFlying = false;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc1_:§_-yw§ = §_-u4§.§_-40§;
         if(§_-QY§ < §_-t6§ || this.§_-8X§ && §_-FK§ == "BIRD_WHITE" || §_-oR§() == null)
         {
            _loc1_.§_-nU§(this);
            _loc1_.§_-ZV§ = false;
            return;
         }
         var _loc2_:Number = x * §_-yw§.§_-rO§;
         var _loc3_:Number = y * §_-yw§.§_-rO§;
         if(_loc1_.§_-ZV§)
         {
            _loc1_.particles.§_-pB§(§_-C-§.§_-5e§,§_-hK§.§_-jg§,§_-C-§.§_-qE§,_loc2_,_loc3_,-1,"",§_-C-§.§_-Gv§);
            _loc1_.§_-ZV§ = false;
            this.§_-JX§ = 0;
         }
         else if(§_-nn§ > 1)
         {
            _loc1_.particles.§_-pB§(§_-C-§.§_-yv§,§_-hK§.§_-jg§,§_-C-§.§_-qE§,_loc2_,_loc3_,-1,"",§_-C-§.§_-Gv§);
         }
         else
         {
            _loc4_ = §_-C-§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§_-JX§ == 1)
            {
               _loc4_ = §_-C-§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§_-JX§ == 2)
            {
               _loc4_ = §_-C-§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§_-JX§ = (this.§_-JX§ + 1) % 3;
            _loc1_.particles.§_-pB§(_loc4_,§_-hK§.§_-jg§,§_-C-§.§_-qE§,_loc2_,_loc3_,-1,"",§_-C-§.§_-Gv§);
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§_-M4§.mTryToFly)
         {
            §_-kY§(§_-YE§.§_-Cp§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§_-Fv§) : Boolean
      {
         if(this.§_-8X§)
         {
            return false;
         }
         §_-kY§(§_-YE§.§_-Ke§);
         this.§_-8X§ = true;
         return true;
      }
      
      override public function addDestructionParticles(param1:§_-hK§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §_-Bs§(false) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-M4§.mW * §_-yw§.§_-rO§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-M4§.mH * §_-yw§.§_-rO§) + Math.random() * -_loc8_ * 2;
            param1.§_-pB§(§_-C-§.§_-i1§,§_-hK§.§_-I1§,§_-C-§.§_-g7§,§_-oR§().GetPosition().x + _loc7_,§_-oR§().GetPosition().y + _loc8_,1500,"",§_-C-§.§_-5X§(§_-FK§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-hK§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§_-YY§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §_-6B§() / 10;
         var _loc4_:int = 1 + _loc3_ * §_-Bs§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§_-pB§(§_-C-§.§_-T0§,§_-hK§.§_-I1§,§_-C-§.§_-g7§,§_-oR§().GetPosition().x,§_-oR§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,(0.5 + param2 / 50 * 0.5) * Math.sqrt(scale));
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§_-pB§(§_-C-§.§_-i1§,§_-hK§.§_-I1§,§_-C-§.§_-g7§,§_-oR§().GetPosition().x,§_-oR§().GetPosition().y,1250,"",§_-C-§.§_-5X§(§_-FK§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
