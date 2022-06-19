package §_-fr§
{
   import §_-43§.b2World;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-c3§;
   
   public class §_-aZ§ extends §_-ZS§
   {
       
      
      private var §_-ia§:Number = -1;
      
      private var §_-Is§:Number = -1;
      
      public function §_-aZ§(param1:§ else§, param2:Sprite, param3:b2World, param4:§_-c3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§ else§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§_-og§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§_-5p§)
         {
            this.§_-og§(0);
         }
         else if(this.§_-ia§ > 0)
         {
            _loc1_ = this.§_-ia§ / this.§_-Is§;
            this.§_-Is§ = 0;
            this.§_-ia§ = this.§_-Is§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§_-5p§)
         {
            super.activateSpecialPower(null);
            this.§_-og§();
         }
         return _loc7_;
      }
      
      public function §_-og§(param1:Number = -1) : void
      {
         this.§_-ia§ = 0;
         if(param1 == 0)
         {
            this.§_-Is§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§_-Is§ = param1;
         }
         else
         {
            this.§_-Is§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§_-ia§ >= 0)
         {
            this.§_-ia§ += param1;
            if(this.§_-ia§ >= this.§_-Is§)
            {
               container.addExplosions(§_-ZO§.§_-Sj§,§implements§().GetPosition().x,§implements§().GetPosition().y);
               this.§_-ia§ = -1;
            }
            §_-dj§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-5p§ && this.§_-ia§ < 0)
         {
            return true;
         }
         if(this.§_-ia§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§_-ia§ > 0)
         {
            return this.§_-ia§ / this.§_-Is§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§_-ia§ > 0)
         {
            return this.§_-Is§ - this.§_-ia§;
         }
         return 0;
      }
   }
}
