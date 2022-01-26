package §_-Xd§
{
   import §_-7§.§_-ph§;
   import §_-FQ§.§_-7W§;
   import §_-PP§.§_-Tg§;
   import §_-PP§.§_-qC§;
   import §_-UX§.Sprite;
   import §_-qW§.b2BodyDef;
   import §_-qW§.b2World;
   import §with§.§_-AZ§;
   
   public class §_-Xr§ extends §_-Oy§
   {
      
      protected static const §_-5R§:Boolean = false;
      
      protected static const §_-5S§:Number = 2000;
       
      
      private var §_-UI§:Number;
      
      private var §_-9G§:Boolean = false;
      
      private var §_-xA§:int = 0;
      
      public function §_-Xr§(param1:§_-OL§, param2:Sprite, param3:b2World, param4:§_-7W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         if(param10)
         {
            §_-UF§.mTryToScream = §_-1c§.§_-sO§ + 1;
         }
      }
      
      public function get §_-aR§() : Boolean
      {
         return this.§_-9G§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§_-Qf§ = true;
         _loc3_.§_-Ko§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-gg§ < §_-jW§ && §_-AN§())
         {
            this.§_-UI§ += param1;
            if(this.§_-UI§ >= §_-5S§)
            {
               return true;
            }
         }
         else
         {
            this.§_-UI§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§_-9G§)
         {
            if(§true §.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§true §.toUpperCase() == "BIRD_YELLOW" || §true §.toUpperCase() == "BIRD_GREEN" || §true §.toUpperCase() == "BIRD_RED" || §true §.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§_-UF§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§_-UF§.mTryToSpecial)
               {
                  §_-UF§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§_-UF§.mTryToSpecial)
            {
               §_-UF§.mTryToSpecial = false;
               if(§_-UF§.mIsSpecial)
               {
                  §_-UF§.mIsSpecial = false;
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
         if(§_-vv§().IsAwake() && §_-gg§ == §_-jW§)
         {
            if(!§_-UF§.mTryToFly)
            {
               §_-UF§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§true §.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§_-9G§ ? 2 : 1) * 360 / 1000;
               §_-Xh§(§_-2d§() - _loc3_);
            }
            else if(!(§true §.toUpperCase() == "BIRD_WHITE" && this.§_-9G§))
            {
               if(§_-5R§)
               {
                  §_-wB§();
               }
               else if(!§_-nL§() && !§_-C5§())
               {
                  §_-Xh§(0);
               }
            }
         }
         else if(§_-UF§.mTryToFly)
         {
            §_-UF§.mTryToFly = false;
            if(§_-UF§.mIsFlying)
            {
               §_-UF§.mIsFlying = false;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc1_:§_-7W§ = §_-ph§.§_-Tw§;
         if(§_-gg§ < §_-jW§ || this.§_-9G§ && §true § == "BIRD_WHITE" || §_-vv§() == null)
         {
            _loc1_.§_-C9§(this);
            _loc1_.§_-TQ§ = false;
            return;
         }
         var _loc2_:Number = x * §_-7W§.§_-hT§;
         var _loc3_:Number = y * §_-7W§.§_-hT§;
         if(_loc1_.§_-TQ§)
         {
            _loc1_.§_-sk§.§_-Eo§(§_-qC§.§_-GO§,§_-Tg§.§_-oZ§,§_-qC§.§_-O5§,_loc2_,_loc3_,-1,"",§_-qC§.§_-xp§);
            _loc1_.§_-TQ§ = false;
            this.§_-xA§ = 0;
         }
         else if(§_-kg§ > 1)
         {
            _loc1_.§_-sk§.§_-Eo§(§_-qC§.§_-HS§,§_-Tg§.§_-oZ§,§_-qC§.§_-O5§,_loc2_,_loc3_,-1,"",§_-qC§.§_-xp§);
         }
         else
         {
            _loc4_ = §_-qC§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§_-xA§ == 1)
            {
               _loc4_ = §_-qC§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§_-xA§ == 2)
            {
               _loc4_ = §_-qC§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§_-xA§ = (this.§_-xA§ + 1) % 3;
            _loc1_.§_-sk§.§_-Eo§(_loc4_,§_-Tg§.§_-oZ§,§_-qC§.§_-O5§,_loc2_,_loc3_,-1,"",§_-qC§.§_-xp§);
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§_-UF§.mTryToFly)
         {
            §_-yC§(§_-AZ§.§_-4H§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§_-OL§) : Boolean
      {
         if(this.§_-9G§)
         {
            return false;
         }
         §_-yC§(§_-AZ§.§_-eq§);
         this.§_-9G§ = true;
         return true;
      }
      
      override public function addDestructionParticles(param1:§_-Tg§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §_-8h§(false) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-UF§.mW * §_-7W§.§_-hT§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-UF§.mH * §_-7W§.§_-hT§) + Math.random() * -_loc8_ * 2;
            param1.§_-Eo§(§_-qC§.§_-T6§,§_-Tg§.§_-U1§,§_-qC§.§_-L4§,§_-vv§().GetPosition().x + _loc7_,§_-vv§().GetPosition().y + _loc8_,1500,"",§_-qC§.§_-rI§(§true §),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-Tg§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§_-C5§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §_-pr§() / 10;
         var _loc4_:int = 1 + _loc3_ * §_-8h§(false) * 0.12;
         var _loc5_:Number = 90;
         _loc4_ *= 3 + param2 / 20;
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§_-Eo§(§_-qC§.§_-ns§,§_-Tg§.§_-U1§,§_-qC§.§_-L4§,§_-vv§().GetPosition().x,§_-vv§().GetPosition().y,1000,"",0,Math.cos(_loc5_),0,5,_loc3_ * 5,0.5 + param2 / 50 * 0.5);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§_-Eo§(§_-qC§.§_-T6§,§_-Tg§.§_-U1§,§_-qC§.§_-L4§,§_-vv§().GetPosition().x,§_-vv§().GetPosition().y,1250,"",§_-qC§.§_-rI§(§true §),_loc8_ * Math.cos(_loc7_),-_loc8_ * Math.sin(_loc7_),5,_loc8_ * 20);
            _loc6_++;
         }
      }
   }
}
