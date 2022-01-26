package §_-ST§
{
   import §_-WW§.b2World;
   import §_-ez§.§_-Ay§;
   import §_-vO§.Sprite;
   
   public class §_-dq§ extends §_-GF§
   {
       
      
      private var §_-WZ§:Number = -1;
      
      private var §_-qO§:Number = -1;
      
      public function §_-dq§(param1:§_-oF§, param2:Sprite, param3:b2World, param4:§_-Ay§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§_-oF§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§_-BB§(100);
         return true;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§_-8R§)
         {
            this.§_-BB§(100);
         }
         else if(this.§_-WZ§ > 0)
         {
            _loc1_ = this.§_-WZ§ / this.§_-qO§;
            this.§_-qO§ = 200;
            this.§_-WZ§ = this.§_-qO§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!§_-8R§)
         {
            super.activateSpecialPower(null);
            this.§_-BB§();
         }
         return _loc5_;
      }
      
      public function §_-BB§(param1:Number = -1) : void
      {
         this.§_-WZ§ = 0;
         if(param1 >= 0)
         {
            this.§_-qO§ = param1;
         }
         else
         {
            this.§_-qO§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§_-WZ§ >= 0)
         {
            this.§_-WZ§ += param1;
            if(this.§_-WZ§ >= this.§_-qO§)
            {
               container.addExplosions(§_-f§.§_-dU§,§_-Nu§().GetPosition().x,§_-Nu§().GetPosition().y);
               this.§_-WZ§ = -1;
            }
            §_-OG§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-8R§ && this.§_-WZ§ < 0)
         {
            return true;
         }
         if(this.§_-WZ§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§_-WZ§ > 0)
         {
            return this.§_-WZ§ / this.§_-qO§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§_-WZ§ > 0)
         {
            return this.§_-qO§ - this.§_-WZ§;
         }
         return 0;
      }
   }
}
