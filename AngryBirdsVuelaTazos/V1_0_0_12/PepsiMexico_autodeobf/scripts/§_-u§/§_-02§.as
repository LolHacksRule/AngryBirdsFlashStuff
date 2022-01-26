package §_-u§
{
   import §_-EH§.b2World;
   import §_-pF§.Sprite;
   import §_-rp§.§_-c5§;
   
   public class §_-02§ extends §_-5j§
   {
       
      
      private var §_-EB§:Number = -1;
      
      private var §_-gQ§:Number = -1;
      
      public function §_-02§(param1:§_-Av§, param2:Sprite, param3:b2World, param4:§_-c5§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§_-Av§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§_-bu§(100);
         return true;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§_-Zx§)
         {
            this.§_-bu§(100);
         }
         else if(this.§_-EB§ > 0)
         {
            _loc1_ = this.§_-EB§ / this.§_-gQ§;
            this.§_-gQ§ = 200;
            this.§_-EB§ = this.§_-gQ§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!§_-Zx§)
         {
            super.activateSpecialPower(null);
            this.§_-bu§();
         }
         return _loc5_;
      }
      
      public function §_-bu§(param1:Number = -1) : void
      {
         this.§_-EB§ = 0;
         if(param1 >= 0)
         {
            this.§_-gQ§ = param1;
         }
         else
         {
            this.§_-gQ§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§_-EB§ >= 0)
         {
            this.§_-EB§ += param1;
            if(this.§_-EB§ >= this.§_-gQ§)
            {
               container.addExplosions(§_-0I§.§_-Bd§,§_-t9§().GetPosition().x,§_-t9§().GetPosition().y);
               this.§_-EB§ = -1;
            }
            §_-nP§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-Zx§ && this.§_-EB§ < 0)
         {
            return true;
         }
         if(this.§_-EB§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§_-EB§ > 0)
         {
            return this.§_-EB§ / this.§_-gQ§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§_-EB§ > 0)
         {
            return this.§_-gQ§ - this.§_-EB§;
         }
         return 0;
      }
   }
}
