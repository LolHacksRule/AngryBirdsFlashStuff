package §9C§
{
   import §,!Q§.Sprite;
   import §4A§.§&_§;
   import §4U§.b2World;
   
   public class §]A§ extends §&]§
   {
       
      
      private var §"!9§:Number = -1;
      
      private var §?!N§:Number = -1;
      
      public function §]A§(param1:§;,§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§;,§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§6A§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§<n§)
         {
            this.§6A§(0);
         }
         else if(this.§"!9§ > 0)
         {
            _loc1_ = this.§"!9§ / this.§?!N§;
            this.§?!N§ = 0;
            this.§"!9§ = this.§?!N§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§<n§)
         {
            super.activateSpecialPower(null);
            this.§6A§();
         }
         return _loc7_;
      }
      
      public function §6A§(param1:Number = -1) : void
      {
         this.§"!9§ = 0;
         if(param1 == 0)
         {
            this.§?!N§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§?!N§ = param1;
         }
         else
         {
            this.§?!N§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§"!9§ >= 0)
         {
            this.§"!9§ += param1;
            if(this.§"!9§ >= this.§?!N§)
            {
               container.addExplosions(§+!]§.§5x§,§@!?§().GetPosition().x,§@!?§().GetPosition().y);
               this.§"!9§ = -1;
            }
            §38§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§<n§ && this.§"!9§ < 0)
         {
            return true;
         }
         if(this.§"!9§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§"!9§ > 0)
         {
            return this.§"!9§ / this.§?!N§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§"!9§ > 0)
         {
            return this.§?!N§ - this.§"!9§;
         }
         return 0;
      }
   }
}
