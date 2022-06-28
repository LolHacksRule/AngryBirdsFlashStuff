package §_-lt§
{
   import §_-TG§.§_-00u§;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-wE§ extends §_-Fh§
   {
       
      
      private var §_-dg§:Number = -1;
      
      private var §_-S§:Number = -1;
      
      public function §_-wE§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§_-dy§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§_-rV§)
         {
            this.§_-dy§(0);
         }
         else if(this.§_-dg§ > 0)
         {
            _loc1_ = this.§_-dg§ / this.§_-S§;
            this.§_-S§ = 0;
            this.§_-dg§ = this.§_-S§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§_-rV§)
         {
            super.activateSpecialPower(null);
            this.§_-dy§();
         }
         return _loc7_;
      }
      
      public function §_-dy§(param1:Number = -1) : void
      {
         this.§_-dg§ = 0;
         if(param1 == 0)
         {
            this.§_-S§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§_-S§ = param1;
         }
         else
         {
            this.§_-S§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§_-dg§ >= 0)
         {
            this.§_-dg§ += param1;
            if(this.§_-dg§ >= this.§_-S§)
            {
               §_-jX§.addExplosions(§_-wS§.§_-09r§,§_-SJ§().GetPosition().x,§_-SJ§().GetPosition().y);
               this.§_-dg§ = -1;
            }
            §_-07A§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-rV§ && this.§_-dg§ < 0)
         {
            return true;
         }
         if(this.§_-dg§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§_-dg§ > 0)
         {
            return this.§_-dg§ / this.§_-S§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§_-dg§ > 0)
         {
            return this.§_-S§ - this.§_-dg§;
         }
         return 0;
      }
   }
}
