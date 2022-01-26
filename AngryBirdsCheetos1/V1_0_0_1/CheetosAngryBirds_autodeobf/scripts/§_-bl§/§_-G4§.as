package §_-bl§
{
   import §_-2r§.§_-sn§;
   import §_-Ls§.Sprite;
   import §try§.b2World;
   
   public class §_-G4§ extends §_-ag§
   {
       
      
      private var §_-P9§:Number = -1;
      
      private var §_-1x§:Number = -1;
      
      public function §_-G4§(param1:§_-S4§, param2:Sprite, param3:b2World, param4:§_-sn§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-S4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§_-qL§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§_-YL§)
         {
            this.§_-qL§(0);
         }
         else if(this.§_-P9§ > 0)
         {
            _loc1_ = this.§_-P9§ / this.§_-1x§;
            this.§_-1x§ = 0;
            this.§_-P9§ = this.§_-1x§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§_-YL§)
         {
            super.activateSpecialPower(null);
            this.§_-qL§();
         }
         return _loc7_;
      }
      
      public function §_-qL§(param1:Number = -1) : void
      {
         this.§_-P9§ = 0;
         if(param1 == 0)
         {
            this.§_-1x§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§_-1x§ = param1;
         }
         else
         {
            this.§_-1x§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§_-P9§ >= 0)
         {
            this.§_-P9§ += param1;
            if(this.§_-P9§ >= this.§_-1x§)
            {
               container.addExplosions(§_-7C§.§_-UL§,§_-BO§().GetPosition().x,§_-BO§().GetPosition().y);
               this.§_-P9§ = -1;
            }
            §_-jN§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-YL§ && this.§_-P9§ < 0)
         {
            return true;
         }
         if(this.§_-P9§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§_-P9§ > 0)
         {
            return this.§_-P9§ / this.§_-1x§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§_-P9§ > 0)
         {
            return this.§_-1x§ - this.§_-P9§;
         }
         return 0;
      }
   }
}
