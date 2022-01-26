package §_-Xd§
{
   import §_-FQ§.§_-7W§;
   import §_-UX§.Sprite;
   import §_-qW§.b2World;
   
   public class §_-HY§ extends §_-Xr§
   {
       
      
      private var §_-Cu§:Number = -1;
      
      private var §_-yB§:Number = -1;
      
      public function §_-HY§(param1:§_-OL§, param2:Sprite, param3:b2World, param4:§_-7W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§_-OL§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§_-qO§(100);
         return true;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§_-aR§)
         {
            this.§_-qO§(100);
         }
         else if(this.§_-Cu§ > 0)
         {
            _loc1_ = this.§_-Cu§ / this.§_-yB§;
            this.§_-yB§ = 200;
            this.§_-Cu§ = this.§_-yB§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!§_-aR§)
         {
            super.activateSpecialPower(null);
            this.§_-qO§();
         }
         return _loc5_;
      }
      
      public function §_-qO§(param1:Number = -1) : void
      {
         this.§_-Cu§ = 0;
         if(param1 >= 0)
         {
            this.§_-yB§ = param1;
         }
         else
         {
            this.§_-yB§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§_-Cu§ >= 0)
         {
            this.§_-Cu§ += param1;
            if(this.§_-Cu§ >= this.§_-yB§)
            {
               container.addExplosions(§_-w3§.§_-7U§,§_-vv§().GetPosition().x,§_-vv§().GetPosition().y);
               this.§_-Cu§ = -1;
            }
            §_-2e§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-aR§ && this.§_-Cu§ < 0)
         {
            return true;
         }
         if(this.§_-Cu§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§_-Cu§ > 0)
         {
            return this.§_-Cu§ / this.§_-yB§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§_-Cu§ > 0)
         {
            return this.§_-yB§ - this.§_-Cu§;
         }
         return 0;
      }
   }
}
