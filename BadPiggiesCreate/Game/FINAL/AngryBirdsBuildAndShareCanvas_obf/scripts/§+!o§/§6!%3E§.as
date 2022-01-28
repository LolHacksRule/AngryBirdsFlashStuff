package §+!o§
{
   import §+S§.b2World;
   import §5!V§.§!w§;
   import §default§.Sprite;
   
   public class §6!>§ extends §>G§
   {
       
      
      private var §]X§:Number = -1;
      
      private var §'!-§:Number = -1;
      
      public function §6!>§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?"-§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§5!p§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§6S§)
         {
            this.§5!p§(0);
         }
         else if(this.§]X§ > 0)
         {
            _loc1_ = this.§]X§ / this.§'!-§;
            this.§'!-§ = 0;
            this.§]X§ = this.§'!-§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§6S§)
         {
            super.activateSpecialPower(null);
            this.§5!p§();
         }
         return _loc7_;
      }
      
      public function §5!p§(param1:Number = -1) : void
      {
         this.§]X§ = 0;
         if(param1 == 0)
         {
            this.§'!-§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§'!-§ = param1;
         }
         else
         {
            this.§'!-§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§]X§ >= 0)
         {
            this.§]X§ += param1;
            if(this.§]X§ >= this.§'!-§)
            {
               container.addExplosions(§]!i§.§"!y§,getBody().GetPosition().x,getBody().GetPosition().y);
               this.§]X§ = -1;
            }
            §46§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§6S§ && this.§]X§ < 0)
         {
            return true;
         }
         if(this.§]X§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§]X§ > 0)
         {
            return this.§]X§ / this.§'!-§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§]X§ > 0)
         {
            return this.§'!-§ - this.§]X§;
         }
         return 0;
      }
   }
}
