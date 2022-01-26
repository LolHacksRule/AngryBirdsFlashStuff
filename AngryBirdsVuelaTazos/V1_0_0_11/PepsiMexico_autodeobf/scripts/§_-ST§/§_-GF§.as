package §_-ST§
{
   import §_-Ah§.§_-b§;
   import §_-B7§.§_-TP§;
   import §_-Vq§.§_-dI§;
   import §_-Vq§.§_-gu§;
   import §_-WW§.b2BodyDef;
   import §_-WW§.b2World;
   import §_-ez§.§_-Ay§;
   import §_-vO§.Sprite;
   
   public class §_-GF§ extends §_-YQ§
   {
      
      protected static const §_-3w§:Boolean = false;
      
      protected static const §_-RS§:Number = 2000;
       
      
      private var §_-gw§:Number;
      
      private var §_-lm§:Boolean = false;
      
      private var §_-iT§:int = 0;
      
      public function §_-GF§(param1:§_-oF§, param2:Sprite, param3:b2World, param4:§_-Ay§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         if(param10)
         {
            §_-ds§.mTryToScream = §_-T6§.§_-JK§ + 1;
         }
      }
      
      public function get §_-8R§() : Boolean
      {
         return this.§_-lm§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§_-XV§ = true;
         _loc3_.§_-cj§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-Sy§ < §_-JQ§ && §_-BS§())
         {
            this.§_-gw§ += param1;
            if(this.§_-gw§ >= §_-RS§)
            {
               return true;
            }
         }
         else
         {
            this.§_-gw§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§_-lm§)
         {
            if(§_-Pd§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§_-Pd§.toUpperCase() == "BIRD_YELLOW" || §_-Pd§.toUpperCase() == "BIRD_GREEN" || §_-Pd§.toUpperCase() == "BIRD_RED" || §_-Pd§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§_-ds§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§_-ds§.mTryToSpecial)
               {
                  §_-ds§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§_-ds§.mTryToSpecial)
            {
               §_-ds§.mTryToSpecial = false;
               if(§_-ds§.mIsSpecial)
               {
                  §_-ds§.mIsSpecial = false;
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
         if(§_-Nu§().IsAwake() && §_-Sy§ == §_-JQ§)
         {
            if(!§_-ds§.mTryToFly)
            {
               §_-ds§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§_-Pd§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§_-lm§ ? 2 : 1) * 360 / 1000;
               §_-jM§(§_-Ld§() - _loc3_);
            }
            else if(!(§_-Pd§.toUpperCase() == "BIRD_WHITE" && this.§_-lm§))
            {
               if(§_-3w§)
               {
                  §_-09§();
               }
               else if(!§_-KI§() && !§_-LQ§())
               {
                  §_-jM§(0);
               }
            }
         }
         else if(§_-ds§.mTryToFly)
         {
            §_-ds§.mTryToFly = false;
            if(§_-ds§.mIsFlying)
            {
               §_-ds§.mIsFlying = false;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc1_:§_-Ay§ = §_-b§.§_-cK§;
         if(§_-Sy§ < §_-JQ§ || this.§_-lm§ && §_-Pd§ == "BIRD_WHITE" || §_-Nu§() == null)
         {
            _loc1_.§_-MR§(this);
            _loc1_.mTrailSpecial = false;
            return;
         }
         var _loc2_:Number = x * §_-Ay§.§_-G0§;
         var _loc3_:Number = y * §_-Ay§.§_-G0§;
         if(_loc1_.mTrailSpecial)
         {
            _loc1_.§_-Rh§.§_-2b§(§_-gu§.§_-dK§,§_-dI§.§_-Gs§,§_-gu§.§_-1Q§,_loc2_,_loc3_,-1,"",§_-gu§.§_-bk§);
            _loc1_.mTrailSpecial = false;
            this.§_-iT§ = 0;
         }
         else if(§_-Ry§ > 1)
         {
            _loc1_.§_-Rh§.§_-2b§(§_-gu§.§_-VG§,§_-dI§.§_-Gs§,§_-gu§.§_-1Q§,_loc2_,_loc3_,-1,"",§_-gu§.§_-bk§);
         }
         else
         {
            _loc4_ = §_-gu§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§_-iT§ == 1)
            {
               _loc4_ = §_-gu§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§_-iT§ == 2)
            {
               _loc4_ = §_-gu§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§_-iT§ = (this.§_-iT§ + 1) % 3;
            _loc1_.§_-Rh§.§_-2b§(_loc4_,§_-dI§.§_-Gs§,§_-gu§.§_-1Q§,_loc2_,_loc3_,-1,"",§_-gu§.§_-bk§);
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§_-ds§.mTryToFly)
         {
            §_-j1§(§_-TP§.§_-ZQ§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§_-oF§) : Boolean
      {
         if(this.§_-lm§)
         {
            return false;
         }
         §_-j1§(§_-TP§.§_-PB§);
         this.§_-lm§ = true;
         return true;
      }
      
      override public function addDestructionParticles(param1:§_-dI§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §_-2R§(false) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-ds§.mW * §_-Ay§.§_-G0§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-ds§.mH * §_-Ay§.§_-G0§) + Math.random() * -_loc8_ * 2;
            param1.§_-2b§(§_-gu§.§_-Fr§,§_-dI§.§_-Hw§,§_-gu§.§_-Ii§,§_-Nu§().GetPosition().x + _loc7_,§_-Nu§().GetPosition().y + _loc8_,1500,"",§_-gu§.§_-kb§(§_-Pd§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-dI§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         if(§_-LQ§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §_-fw§() / 10;
         var _loc4_:int = 1 + _loc3_ * §_-2R§(false) * 0.15;
         var _loc5_:Number = 90;
         _loc4_ *= 3 + param2 / 14;
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§_-2b§(§_-gu§.§_-LH§,§_-dI§.§_-Hw§,§_-gu§.§_-Ii§,§_-Nu§().GetPosition().x,§_-Nu§().GetPosition().y,1000,"",0,Math.cos(_loc5_),0,5,_loc3_ * 5,0.5 + param2 / 50 * 0.5);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            param1.§_-2b§(§_-gu§.§_-Fr§,§_-dI§.§_-Hw§,§_-gu§.§_-Ii§,§_-Nu§().GetPosition().x,§_-Nu§().GetPosition().y,1250,"",§_-gu§.§_-kb§(§_-Pd§),_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),5,_loc3_ * 20);
            _loc6_++;
         }
      }
   }
}
