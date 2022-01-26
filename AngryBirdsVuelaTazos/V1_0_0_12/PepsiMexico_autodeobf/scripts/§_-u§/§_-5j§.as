package §_-u§
{
   import §_-DS§.§_-Aa§;
   import §_-DS§.§_-t0§;
   import §_-EH§.b2BodyDef;
   import §_-EH§.b2World;
   import §_-H2§.§_-i7§;
   import §_-Hw§.§_-3C§;
   import §_-pF§.Sprite;
   import §_-rp§.§_-c5§;
   
   public class §_-5j§ extends §_-dK§
   {
      
      protected static const §_-OJ§:Boolean = false;
      
      protected static const §_-gc§:Number = 2000;
       
      
      private var §_-2W§:Number;
      
      private var §_-db§:Boolean = false;
      
      private var §_-rO§:int = 0;
      
      public function §_-5j§(param1:§_-Av§, param2:Sprite, param3:b2World, param4:§_-c5§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         if(param10)
         {
            §use§.mTryToScream = §_-iL§.§_-3F§ + 1;
         }
      }
      
      public function get §_-Zx§() : Boolean
      {
         return this.§_-db§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§_-IK§ = true;
         _loc3_.§_-Tj§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-c8§ < §_-gA§ && §_-Vm§())
         {
            this.§_-2W§ += param1;
            if(this.§_-2W§ >= §_-gc§)
            {
               return true;
            }
         }
         else
         {
            this.§_-2W§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§_-db§)
         {
            if(§_-s7§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§_-s7§.toUpperCase() == "BIRD_YELLOW" || §_-s7§.toUpperCase() == "BIRD_GREEN" || §_-s7§.toUpperCase() == "BIRD_RED" || §_-s7§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§use§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§use§.mTryToSpecial)
               {
                  §use§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§use§.mTryToSpecial)
            {
               §use§.mTryToSpecial = false;
               if(§use§.mIsSpecial)
               {
                  §use§.mIsSpecial = false;
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
         if(§_-t9§().IsAwake() && §_-c8§ == §_-gA§)
         {
            if(!§use§.mTryToFly)
            {
               §use§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§_-s7§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§_-db§ ? 2 : 1) * 360 / 1000;
               §_-6§(§_-aU§() - _loc3_);
            }
            else if(!(§_-s7§.toUpperCase() == "BIRD_WHITE" && this.§_-db§))
            {
               if(§_-OJ§)
               {
                  §_-Af§();
               }
               else if(!§ var§() && !§_-Mk§())
               {
                  §_-6§(0);
               }
            }
         }
         else if(§use§.mTryToFly)
         {
            §use§.mTryToFly = false;
            if(§use§.mIsFlying)
            {
               §use§.mIsFlying = false;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc1_:§_-c5§ = §_-3C§.§_-bz§;
         if(§_-c8§ < §_-gA§ || this.§_-db§ && §_-s7§ == "BIRD_WHITE" || §_-t9§() == null)
         {
            _loc1_.§_-j7§(this);
            _loc1_.mTrailSpecial = false;
            return;
         }
         var _loc2_:Number = x * §_-c5§.§_-Wa§;
         var _loc3_:Number = y * §_-c5§.§_-Wa§;
         if(_loc1_.mTrailSpecial)
         {
            _loc1_.§_-AC§.§_-RE§(§_-Aa§.§_-8m§,§_-t0§.§_-hG§,§_-Aa§.§_-tZ§,_loc2_,_loc3_,-1,"",§_-Aa§.§_-rc§);
            _loc1_.mTrailSpecial = false;
            this.§_-rO§ = 0;
         }
         else if(§_-mq§ > 1)
         {
            _loc1_.§_-AC§.§_-RE§(§_-Aa§.§_-DU§,§_-t0§.§_-hG§,§_-Aa§.§_-tZ§,_loc2_,_loc3_,-1,"",§_-Aa§.§_-rc§);
         }
         else
         {
            _loc4_ = §_-Aa§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§_-rO§ == 1)
            {
               _loc4_ = §_-Aa§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§_-rO§ == 2)
            {
               _loc4_ = §_-Aa§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§_-rO§ = (this.§_-rO§ + 1) % 3;
            _loc1_.§_-AC§.§_-RE§(_loc4_,§_-t0§.§_-hG§,§_-Aa§.§_-tZ§,_loc2_,_loc3_,-1,"",§_-Aa§.§_-rc§);
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§use§.mTryToFly)
         {
            §_-5E§(§_-i7§.§_-fU§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§_-Av§) : Boolean
      {
         if(this.§_-db§)
         {
            return false;
         }
         §_-5E§(§_-i7§.§_-Ee§);
         this.§_-db§ = true;
         return true;
      }
      
      override public function addDestructionParticles(param1:§_-t0§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §_-dd§(false) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§use§.mW * §_-c5§.§_-Wa§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§use§.mH * §_-c5§.§_-Wa§) + Math.random() * -_loc8_ * 2;
            param1.§_-RE§(§_-Aa§.§_-GF§,§_-t0§.§_-FQ§,§_-Aa§.include,§_-t9§().GetPosition().x + _loc7_,§_-t9§().GetPosition().y + _loc8_,1500,"",§_-Aa§.§_-Am§(§_-s7§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-t0§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         if(§_-Mk§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §_-vm§() / 10;
         var _loc4_:int = 1 + _loc3_ * §_-dd§(false) * 0.15;
         var _loc5_:Number = 90;
         _loc4_ *= 3 + param2 / 14;
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§_-RE§(§_-Aa§.§_-a9§,§_-t0§.§_-FQ§,§_-Aa§.include,§_-t9§().GetPosition().x,§_-t9§().GetPosition().y,1000,"",0,Math.cos(_loc5_),0,5,_loc3_ * 5,0.5 + param2 / 50 * 0.5);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            param1.§_-RE§(§_-Aa§.§_-GF§,§_-t0§.§_-FQ§,§_-Aa§.include,§_-t9§().GetPosition().x,§_-t9§().GetPosition().y,1250,"",§_-Aa§.§_-Am§(§_-s7§),_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),5,_loc3_ * 20);
            _loc6_++;
         }
      }
   }
}
