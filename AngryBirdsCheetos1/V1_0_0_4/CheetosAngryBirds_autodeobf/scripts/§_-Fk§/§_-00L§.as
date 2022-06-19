package §_-Fk§
{
   import §_-0-K§.§_-FL§;
   import §_-00B§.b2World;
   import §case §.Sprite;
   
   public class §_-00L§ extends §_-ON§
   {
       
      
      private var §_-1M§:Number = -1;
      
      private var §_-vH§:Number = -1;
      
      public function §_-00L§(param1:§_-lp§, param2:Sprite, param3:b2World, param4:§_-FL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-lp§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§_-qe§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§null§)
         {
            this.§_-qe§(0);
         }
         else if(this.§_-1M§ > 0)
         {
            _loc1_ = this.§_-1M§ / this.§_-vH§;
            this.§_-vH§ = 0;
            this.§_-1M§ = this.§_-vH§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§null§)
         {
            super.activateSpecialPower(null);
            this.§_-qe§();
         }
         return _loc7_;
      }
      
      public function §_-qe§(param1:Number = -1) : void
      {
         this.§_-1M§ = 0;
         if(param1 == 0)
         {
            this.§_-vH§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§_-vH§ = param1;
         }
         else
         {
            this.§_-vH§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§_-1M§ >= 0)
         {
            this.§_-1M§ += param1;
            if(this.§_-1M§ >= this.§_-vH§)
            {
               container.addExplosions(§_-P2§.§_-vh§,§_-Zv§().GetPosition().x,§_-Zv§().GetPosition().y);
               this.§_-1M§ = -1;
            }
            §_-DI§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§null§ && this.§_-1M§ < 0)
         {
            return true;
         }
         if(this.§_-1M§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§_-1M§ > 0)
         {
            return this.§_-1M§ / this.§_-vH§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§_-1M§ > 0)
         {
            return this.§_-vH§ - this.§_-1M§;
         }
         return 0;
      }
   }
}
