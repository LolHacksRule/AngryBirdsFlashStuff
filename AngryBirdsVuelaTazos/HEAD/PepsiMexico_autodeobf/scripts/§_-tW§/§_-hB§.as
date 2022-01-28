package §_-tW§
{
   import §_-Di§.§_-ix§;
   import §_-SE§.Sprite;
   import §_-vk§.b2World;
   
   public class §_-hB§ extends §_-f5§
   {
       
      
      private var §_-6B§:Number = -1;
      
      private var §_-HR§:Number = -1;
      
      public function §_-hB§(param1:§_-S5§, param2:Sprite, param3:b2World, param4:§_-ix§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-S5§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§_-yH§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§_-dv§)
         {
            this.§_-yH§(0);
         }
         else if(this.§_-6B§ > 0)
         {
            _loc1_ = this.§_-6B§ / this.§_-HR§;
            this.§_-HR§ = 0;
            this.§_-6B§ = this.§_-HR§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!§_-dv§)
         {
            super.activateSpecialPower(null);
            this.§_-yH§();
         }
         return _loc6_;
      }
      
      public function §_-yH§(param1:Number = -1) : void
      {
         this.§_-6B§ = 0;
         if(param1 == 0)
         {
            this.§_-HR§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§_-HR§ = param1;
         }
         else
         {
            this.§_-HR§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§_-6B§ >= 0)
         {
            this.§_-6B§ += param1;
            if(this.§_-6B§ >= this.§_-HR§)
            {
               container.addExplosions(§_-Lq§.§_-5v§,§_-UF§().GetPosition().x,§_-UF§().GetPosition().y);
               this.§_-6B§ = -1;
            }
            §_-a0§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-dv§ && this.§_-6B§ < 0)
         {
            return true;
         }
         if(this.§_-6B§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§_-6B§ > 0)
         {
            return this.§_-6B§ / this.§_-HR§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§_-6B§ > 0)
         {
            return this.§_-HR§ - this.§_-6B§;
         }
         return 0;
      }
   }
}
