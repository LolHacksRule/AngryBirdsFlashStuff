package §_-Fk§
{
   import §_-0-K§.§_-FL§;
   import §_-0-K§.§_-xV§;
   import §_-00B§.b2BodyDef;
   import §_-00B§.b2World;
   import §_-Lw§.§_-RT§;
   import §_-Lw§.§_-hQ§;
   import §_-TX§.§_-0X§;
   import §_-X4§.§_-aP§;
   import §case §.Sprite;
   
   public class §_-ON§ extends §_-La§
   {
      
      protected static const §_-f-§:Boolean = false;
      
      protected static const §_-00N§:Number = 2000;
      
      private static const §_-Cm§:int = 20;
      
      private static const §_-jP§:Number = 0.2;
       
      
      private var §_-dM§:Number;
      
      private var §_-li§:Boolean = false;
      
      private var §_-Dz§:int = 0;
      
      public function §_-ON§(param1:§_-lp§, param2:Sprite, param3:b2World, param4:§_-FL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §_-Rh§.mTryToScream = §_-8E§.§_-b7§ + 1;
         }
      }
      
      public function get §null§() : Boolean
      {
         return this.§_-li§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§_-M§ = true;
         _loc3_.§_-YU§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-tR§ < §_-m1§ && §_-RG§())
         {
            this.§_-dM§ += param1;
            if(this.§_-dM§ >= §_-00N§)
            {
               return true;
            }
         }
         else
         {
            this.§_-dM§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§_-li§)
         {
            if(§_-k-§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§_-k-§.toUpperCase() == "BIRD_YELLOW" || §_-k-§.toUpperCase() == "BIRD_GREEN" || §_-k-§.toUpperCase() == "BIRD_RED" || §_-k-§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§_-Rh§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§_-Rh§.mTryToSpecial)
               {
                  §_-Rh§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§_-Rh§.mTryToSpecial)
            {
               §_-Rh§.mTryToSpecial = false;
               if(§_-Rh§.mIsSpecial)
               {
                  §_-Rh§.mIsSpecial = false;
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
         if(§_-Zv§().IsAwake() && §_-tR§ == §_-m1§)
         {
            if(!§_-Rh§.mTryToFly)
            {
               §_-Rh§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§_-k-§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§_-li§ ? 2 : 1) * 360 / 1000;
               §_-TA§(§if§() - _loc3_);
            }
            else if(!(§_-k-§.toUpperCase() == "BIRD_WHITE" && this.§_-li§))
            {
               if(§_-f-§)
               {
                  §_-C6§();
               }
               else if(!§_-tE§() && !§_-R0§())
               {
                  §_-TA§(0);
               }
            }
         }
         else if(§_-Rh§.mTryToFly)
         {
            §_-Rh§.mTryToFly = false;
            if(§_-Rh§.mIsFlying)
            {
               §_-Rh§.mIsFlying = false;
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
         var _loc1_:§_-FL§ = §_-0X§.§_-O2§;
         if(§_-tR§ < §_-m1§ || §_-Zv§() == null)
         {
            _loc1_.§_-qW§(this);
            _loc1_.§_-rk§ = false;
            return;
         }
         var _loc2_:Number = x * §_-FL§.§_-NU§;
         var _loc3_:Number = y * §_-FL§.§_-NU§;
         if(_loc1_.§_-rk§)
         {
            _loc1_.particles.addParticle(§_-hQ§.§_-Hu§,§_-RT§.§_-E6§,§_-hQ§.§_-ep§,_loc2_,_loc3_,-1,"",§_-hQ§.§_-Q6§);
            _loc1_.§_-rk§ = false;
            this.§_-Dz§ = 0;
         }
         else if(§_-XQ§ > 1)
         {
            _loc1_.particles.addParticle(§_-hQ§.§_-om§,§_-RT§.§_-E6§,§_-hQ§.§_-ep§,_loc2_,_loc3_,-1,"",§_-hQ§.§_-Q6§);
         }
         else
         {
            _loc4_ = §_-hQ§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§_-Dz§ == 1)
            {
               _loc4_ = §_-hQ§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§_-Dz§ == 2)
            {
               _loc4_ = §_-hQ§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§_-Dz§ = (this.§_-Dz§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§_-RT§.§_-E6§,§_-hQ§.§_-ep§,_loc2_,_loc3_,-1,"",§_-hQ§.§_-Q6§);
         }
         if(§_-If§() > §_-xV§.§_-0-6§ && Math.random() < §_-jP§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§_-hQ§.§_-Wc§,§_-RT§.§_-MU§,§_-hQ§.§_-Wf§,§_-Zv§().GetPosition().x,§_-Zv§().GetPosition().y,1250,"",§_-hQ§.§_-kW§(§_-k-§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§_-Rh§.mTryToFly)
         {
            §_-0-i§(§_-aP§.§_-iW§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§_-lp§) : Boolean
      {
         if(this.§_-li§)
         {
            return false;
         }
         §_-0-i§(§_-aP§.§_-L4§);
         this.§_-li§ = true;
         return true;
      }
      
      private function §_-0-o§(param1:int) : int
      {
         return Math.min(§_-Cm§,param1);
      }
      
      override public function addDestructionParticles(param1:§_-RT§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §_-nM§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§_-0-o§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-Rh§.mW * §_-FL§.§_-NU§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-Rh§.mH * §_-FL§.§_-NU§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§_-hQ§.§_-Wc§,§_-RT§.§_-MU§,§_-hQ§.§_-Wf§,§_-Zv§().GetPosition().x + _loc7_,§_-Zv§().GetPosition().y + _loc8_,1500,"",§_-hQ§.§_-kW§(§_-k-§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-RT§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§_-R0§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §_-If§() / 10;
         var _loc4_:int = 1 + _loc3_ * §_-nM§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§_-0-o§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§_-hQ§.§_-Ff§,§_-RT§.§_-MU§,§_-hQ§.§_-Wf§,§_-Zv§().GetPosition().x,§_-Zv§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§_-hQ§.§_-Wc§,§_-RT§.§_-MU§,§_-hQ§.§_-Wf§,§_-Zv§().GetPosition().x,§_-Zv§().GetPosition().y,1250,"",§_-hQ§.§_-kW§(§_-k-§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
