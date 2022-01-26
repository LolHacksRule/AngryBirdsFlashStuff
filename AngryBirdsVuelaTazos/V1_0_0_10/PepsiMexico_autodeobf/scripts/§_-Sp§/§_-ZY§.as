package §_-Sp§
{
   import §_-0y§.§_-B3§;
   import §_-rg§.b2World;
   import §_-se§.Sprite;
   
   public class §_-ZY§ extends §_-FR§
   {
       
      
      private var §_-2o§:Number = -1;
      
      private var §_-kw§:Number = -1;
      
      public function §_-ZY§(param1:§_-D4§, param2:Sprite, param3:b2World, param4:§_-B3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§_-D4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§_-em§(100);
         return true;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§_-SX§)
         {
            this.§_-em§(100);
         }
         else if(this.§_-2o§ > 0)
         {
            _loc1_ = this.§_-2o§ / this.§_-kw§;
            this.§_-kw§ = 200;
            this.§_-2o§ = this.§_-kw§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!§_-SX§)
         {
            super.activateSpecialPower(null);
            this.§_-em§();
         }
         return _loc5_;
      }
      
      public function §_-em§(param1:Number = -1) : void
      {
         this.§_-2o§ = 0;
         if(param1 >= 0)
         {
            this.§_-kw§ = param1;
         }
         else
         {
            this.§_-kw§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§_-2o§ >= 0)
         {
            this.§_-2o§ += param1;
            if(this.§_-2o§ >= this.§_-kw§)
            {
               container.addExplosions(§_-Dn§.§_-4F§,§_-dZ§().GetPosition().x,§_-dZ§().GetPosition().y);
               this.§_-2o§ = -1;
            }
            §_-wW§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-SX§ && this.§_-2o§ < 0)
         {
            return true;
         }
         if(this.§_-2o§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§_-2o§ > 0)
         {
            return this.§_-2o§ / this.§_-kw§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§_-2o§ > 0)
         {
            return this.§_-kw§ - this.§_-2o§;
         }
         return 0;
      }
   }
}
