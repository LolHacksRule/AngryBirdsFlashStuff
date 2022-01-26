package §_-CR§
{
   import §_-Iw§.b2World;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   
   public class §_-he§ extends §_-zf§
   {
       
      
      private var §_-HP§:Number = -1;
      
      private var §_-lG§:Number = -1;
      
      public function §_-he§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§_-Qb§(100);
         return true;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§_-mb§)
         {
            this.§_-Qb§(100);
         }
         else if(this.§_-HP§ > 0)
         {
            _loc1_ = this.§_-HP§ / this.§_-lG§;
            this.§_-lG§ = 200;
            this.§_-HP§ = this.§_-lG§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!§_-mb§)
         {
            super.activateSpecialPower(null);
            this.§_-Qb§();
         }
         return _loc5_;
      }
      
      public function §_-Qb§(param1:Number = -1) : void
      {
         this.§_-HP§ = 0;
         if(param1 >= 0)
         {
            this.§_-lG§ = param1;
         }
         else
         {
            this.§_-lG§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§_-HP§ >= 0)
         {
            this.§_-HP§ += param1;
            if(this.§_-HP§ >= this.§_-lG§)
            {
               container.addExplosions(§_-GP§.§_-Zb§,§_-zq§().GetPosition().x,§_-zq§().GetPosition().y);
               this.§_-HP§ = -1;
            }
            §_-J3§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-mb§ && this.§_-HP§ < 0)
         {
            return true;
         }
         if(this.§_-HP§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§_-HP§ > 0)
         {
            return this.§_-HP§ / this.§_-lG§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§_-HP§ > 0)
         {
            return this.§_-lG§ - this.§_-HP§;
         }
         return 0;
      }
   }
}
