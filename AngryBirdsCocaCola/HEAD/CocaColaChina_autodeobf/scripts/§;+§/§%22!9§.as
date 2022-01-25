package §;+§
{
   import § !K§.Sprite;
   import §3f§.b2World;
   import §4A§.§&_§;
   
   public class §"!9§ extends §"!R§
   {
       
      
      private var §?!N§:Number = -1;
      
      private var §6A§:Number = -1;
      
      public function §"!9§(param1:§+!?§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§+!?§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§-c§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§>!X§)
         {
            this.§-c§(0);
         }
         else if(this.§?!N§ > 0)
         {
            _loc1_ = this.§?!N§ / this.§6A§;
            this.§6A§ = 0;
            this.§?!N§ = this.§6A§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§>!X§)
         {
            super.activateSpecialPower(null);
            this.§-c§();
         }
         return _loc7_;
      }
      
      public function §-c§(param1:Number = -1) : void
      {
         this.§?!N§ = 0;
         if(param1 == 0)
         {
            this.§6A§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§6A§ = param1;
         }
         else
         {
            this.§6A§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§?!N§ >= 0)
         {
            this.§?!N§ += param1;
            if(this.§?!N§ >= this.§6A§)
            {
               container.addExplosions(§ !M§.§-l§,§1!d§().GetPosition().x,§1!d§().GetPosition().y);
               this.§?!N§ = -1;
            }
            §8!P§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§>!X§ && this.§?!N§ < 0)
         {
            return true;
         }
         if(this.§?!N§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§?!N§ > 0)
         {
            return this.§?!N§ / this.§6A§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§?!N§ > 0)
         {
            return this.§6A§ - this.§?!N§;
         }
         return 0;
      }
   }
}
