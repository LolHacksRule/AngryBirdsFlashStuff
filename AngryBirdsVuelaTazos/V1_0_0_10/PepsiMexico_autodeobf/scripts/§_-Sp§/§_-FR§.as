package §_-Sp§
{
   import §_-0y§.§_-B3§;
   import §_-7o§.§_-Kd§;
   import §_-7o§.§_-w7§;
   import §_-I1§.§_-2N§;
   import §_-hR§.§_-c§;
   import §_-rg§.b2BodyDef;
   import §_-rg§.b2World;
   import §_-se§.Sprite;
   
   public class §_-FR§ extends §_-C2§
   {
      
      protected static const §_-A-§:Boolean = false;
      
      protected static const §_-ub§:Number = 2000;
       
      
      private var §_-HY§:Number;
      
      private var §_-e0§:Boolean = false;
      
      private var §_-jg§:int = 0;
      
      public function §_-FR§(param1:§_-D4§, param2:Sprite, param3:b2World, param4:§_-B3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         if(param10)
         {
            §_-LF§.mTryToScream = §_-Lk§.§_-1w§ + 1;
         }
      }
      
      public function get §_-SX§() : Boolean
      {
         return this.§_-e0§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§_-d7§ = true;
         _loc3_.§_-Sm§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§null § < §_-8S§ && §_-LB§())
         {
            this.§_-HY§ += param1;
            if(this.§_-HY§ >= §_-ub§)
            {
               return true;
            }
         }
         else
         {
            this.§_-HY§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§_-e0§)
         {
            if(§_-TR§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§_-TR§.toUpperCase() == "BIRD_YELLOW" || §_-TR§.toUpperCase() == "BIRD_GREEN" || §_-TR§.toUpperCase() == "BIRD_RED" || §_-TR§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§_-LF§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§_-LF§.mTryToSpecial)
               {
                  §_-LF§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§_-LF§.mTryToSpecial)
            {
               §_-LF§.mTryToSpecial = false;
               if(§_-LF§.mIsSpecial)
               {
                  §_-LF§.mIsSpecial = false;
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
         if(§_-dZ§().IsAwake() && §null § == §_-8S§)
         {
            if(!§_-LF§.mTryToFly)
            {
               §_-LF§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§_-TR§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§_-e0§ ? 2 : 1) * 360 / 1000;
               §_-DG§(§_-4S§() - _loc3_);
            }
            else if(!(§_-TR§.toUpperCase() == "BIRD_WHITE" && this.§_-e0§))
            {
               if(§_-A-§)
               {
                  §_-sa§();
               }
               else if(!§_-wE§() && !§_-LT§())
               {
                  §_-DG§(0);
               }
            }
         }
         else if(§_-LF§.mTryToFly)
         {
            §_-LF§.mTryToFly = false;
            if(§_-LF§.mIsFlying)
            {
               §_-LF§.mIsFlying = false;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc1_:§_-B3§ = §_-2N§.§_-iP§;
         if(§null § < §_-8S§ || this.§_-e0§ && §_-TR§ == "BIRD_WHITE" || §_-dZ§() == null)
         {
            _loc1_.§_-TJ§(this);
            _loc1_.mTrailSpecial = false;
            return;
         }
         var _loc2_:Number = x * §_-B3§.§_-s8§;
         var _loc3_:Number = y * §_-B3§.§_-s8§;
         if(_loc1_.mTrailSpecial)
         {
            _loc1_.§_-29§.§_-4V§(§_-w7§.§_-7X§,§_-Kd§.§_-Zh§,§_-w7§.§_-ev§,_loc2_,_loc3_,-1,"",§_-w7§.§_-6U§);
            _loc1_.mTrailSpecial = false;
            this.§_-jg§ = 0;
         }
         else if(§_-p0§ > 1)
         {
            _loc1_.§_-29§.§_-4V§(§_-w7§.§_-8§,§_-Kd§.§_-Zh§,§_-w7§.§_-ev§,_loc2_,_loc3_,-1,"",§_-w7§.§_-6U§);
         }
         else
         {
            _loc4_ = §_-w7§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§_-jg§ == 1)
            {
               _loc4_ = §_-w7§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§_-jg§ == 2)
            {
               _loc4_ = §_-w7§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§_-jg§ = (this.§_-jg§ + 1) % 3;
            _loc1_.§_-29§.§_-4V§(_loc4_,§_-Kd§.§_-Zh§,§_-w7§.§_-ev§,_loc2_,_loc3_,-1,"",§_-w7§.§_-6U§);
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§_-LF§.mTryToFly)
         {
            §_-m-§(§_-c§.§if §);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§_-D4§) : Boolean
      {
         if(this.§_-e0§)
         {
            return false;
         }
         §_-m-§(§_-c§.§_-He§);
         this.§_-e0§ = true;
         return true;
      }
      
      override public function addDestructionParticles(param1:§_-Kd§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §_-mL§(false) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-LF§.mW * §_-B3§.§_-s8§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-LF§.mH * §_-B3§.§_-s8§) + Math.random() * -_loc8_ * 2;
            param1.§_-4V§(§_-w7§.§_-Hl§,§_-Kd§.§_-vR§,§_-w7§.§_-Or§,§_-dZ§().GetPosition().x + _loc7_,§_-dZ§().GetPosition().y + _loc8_,1500,"",§_-w7§.§_-MH§(§_-TR§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-Kd§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         if(§_-LT§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §_-Ui§() / 10;
         var _loc4_:int = 1 + _loc3_ * §_-mL§(false) * 0.15;
         var _loc5_:Number = 90;
         _loc4_ *= 3 + param2 / 14;
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§_-4V§(§_-w7§.§_-gj§,§_-Kd§.§_-vR§,§_-w7§.§_-Or§,§_-dZ§().GetPosition().x,§_-dZ§().GetPosition().y,1000,"",0,Math.cos(_loc5_),0,5,_loc3_ * 5,0.5 + param2 / 50 * 0.5);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            param1.§_-4V§(§_-w7§.§_-Hl§,§_-Kd§.§_-vR§,§_-w7§.§_-Or§,§_-dZ§().GetPosition().x,§_-dZ§().GetPosition().y,1250,"",§_-w7§.§_-MH§(§_-TR§),_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),5,_loc3_ * 20);
            _loc6_++;
         }
      }
   }
}
