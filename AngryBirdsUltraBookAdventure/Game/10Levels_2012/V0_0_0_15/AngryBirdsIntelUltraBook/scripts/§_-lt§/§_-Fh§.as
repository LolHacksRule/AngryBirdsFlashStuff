package §_-lt§
{
   import §_-0DG§.§_-a2§;
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-E0§;
   import §_-aU§.b2BodyDef;
   import §_-aU§.b2World;
   import §_-qO§.§ in§;
   import §_-uY§.Sprite;
   
   public class §_-Fh§ extends §_-0f§
   {
      
      protected static const §_-aQ§:Boolean = false;
      
      protected static const §_-Ml§:Number = 2000;
      
      protected static const §_-Mf§:Number = 0.2;
       
      
      private var §_-fv§:Number;
      
      private var §_-Vl§:Boolean = false;
      
      protected var §_-Jh§:int = 0;
      
      public function §_-Fh§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §_-U-§.mTryToScream = §_-05W§.§_-0C9§ + 1;
         }
      }
      
      public function get §_-rV§() : Boolean
      {
         return this.§_-Vl§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§_-mq§ = true;
         _loc3_.§_-ZI§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-Kh§ < §_-8l§ && §_-01F§())
         {
            this.§_-fv§ += param1;
            if(this.§_-fv§ >= §_-Ml§)
            {
               return true;
            }
         }
         else
         {
            this.§_-fv§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§_-Vl§)
         {
            if(§_-o2§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§_-o2§.toUpperCase() == "BIRD_YELLOW" || §_-o2§.toUpperCase() == "BIRD_GREEN" || §_-o2§.toUpperCase() == "BIRD_RED" || §_-o2§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§_-U-§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§_-U-§.mTryToSpecial)
               {
                  §_-U-§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§_-U-§.mTryToSpecial)
            {
               §_-U-§.mTryToSpecial = false;
               if(§_-U-§.mIsSpecial)
               {
                  §_-U-§.mIsSpecial = false;
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
         if(§_-SJ§().IsAwake() && §_-Kh§ == §_-8l§)
         {
            if(!§_-U-§.mTryToFly)
            {
               §_-U-§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§_-o2§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§_-Vl§ ? 2 : 1) * 360 / 1000;
               §_-7E§(§_-NN§() - _loc3_);
            }
            else if(!(§_-o2§.toUpperCase() == "BIRD_WHITE" && this.§_-Vl§))
            {
               if(§_-aQ§)
               {
                  §_-0Cl§();
               }
               else if(!§_-rN§() && !§_-21§())
               {
                  §_-7E§(0);
               }
            }
         }
         else if(§_-U-§.mTryToFly)
         {
            §_-U-§.mTryToFly = false;
            if(§_-U-§.mIsFlying)
            {
               §_-U-§.mIsFlying = false;
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
         var _loc1_:§_-00u§ = § in§.§_-Dc§;
         if(§_-Kh§ < §_-8l§ || §_-SJ§() == null)
         {
            _loc1_.§_-5Q§(this);
            _loc1_.§_-02W§ = false;
            return;
         }
         var _loc2_:Number = x * §_-00u§.§_-lY§;
         var _loc3_:Number = y * §_-00u§.§_-lY§;
         if(_loc1_.§_-02W§)
         {
            _loc1_.particles.§_-0EQ§(§_-Hv§.§_-Xr§,§_-Zc§.§_-WZ§,§_-Hv§.§_-0EM§,_loc2_,_loc3_,-1,"",§_-Hv§.§_-Do§);
            _loc1_.§_-02W§ = false;
            this.§_-Jh§ = 0;
         }
         else if(§_-JZ§ > 1)
         {
            _loc1_.particles.§_-0EQ§(§_-Hv§.§_-KU§,§_-Zc§.§_-WZ§,§_-Hv§.§_-0EM§,_loc2_,_loc3_,-1,"",§_-Hv§.§_-Do§);
         }
         else
         {
            _loc4_ = §_-Hv§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§_-Jh§ == 1)
            {
               _loc4_ = §_-Hv§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§_-Jh§ == 2)
            {
               _loc4_ = §_-Hv§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§_-Jh§ = (this.§_-Jh§ + 1) % 3;
            _loc1_.particles.§_-0EQ§(_loc4_,§_-Zc§.§_-WZ§,§_-Hv§.§_-0EM§,_loc2_,_loc3_,-1,"",§_-Hv§.§_-Do§);
         }
         if(§_-06L§() > §_-E0§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §_-Mf§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§_-0EQ§(§_-Hv§.§_-gA§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,§_-SJ§().GetPosition().x,§_-SJ§().GetPosition().y,1250,"",§_-Hv§.§_-08L§(§_-o2§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§_-U-§.mTryToFly)
         {
            §_-Dv§(§_-a2§.§_-1y§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         if(this.§_-Vl§)
         {
            return false;
         }
         §_-Dv§(§_-a2§.§_-I4§);
         this.§_-Vl§ = true;
         return true;
      }
      
      private function §_-7U§(param1:int) : int
      {
         return Math.min(§ in§.§_-Dc§.§_-2O§,param1);
      }
      
      override public function addDestructionParticles(param1:§_-Zc§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §_-vw§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§_-7U§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-U-§.mW * §_-00u§.§_-lY§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-U-§.mH * §_-00u§.§_-lY§) + Math.random() * -_loc8_ * 2;
            param1.§_-0EQ§(§_-Hv§.§_-gA§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,§_-SJ§().GetPosition().x + _loc7_,§_-SJ§().GetPosition().y + _loc8_,1500,"",§_-Hv§.§_-08L§(§_-o2§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-Zc§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§_-21§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §_-06L§() / 10;
         var _loc4_:int = 1 + _loc3_ * §_-vw§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§_-7U§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§_-0EQ§(§_-Hv§.§_-0AR§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,§_-SJ§().GetPosition().x,§_-SJ§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§_-0EQ§(§_-Hv§.§_-gA§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,§_-SJ§().GetPosition().x,§_-SJ§().GetPosition().y,1250,"",§_-Hv§.§_-08L§(§_-o2§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
