package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§=!,§;
   
   public class §4"R§ extends §%!0§
   {
      
      private static const §<"c§:int = 2000;
       
      
      private var §7"$§:Number = -1;
      
      private var §<i§:Number = -1;
      
      private var §'"0§:Boolean = false;
      
      public function §4"R§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§'"0§;
      }
      
      override public function activateSpecialPower(param1:§""M§, param2:Number, param3:Number) : Boolean
      {
         if(§@"e§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§-J§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§""M§, param3:§4!w§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§-J§(§<"c§,param2);
         }
         return _loc5_;
      }
      
      protected function §-J§(param1:Number, param2:§""M§) : void
      {
         if(param1 != 0 && this.§<i§ > 0)
         {
            return;
         }
         this.§7"$§ = 0;
         if(param1 == 0)
         {
            this.§<i§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§<i§ = param1;
         }
         else
         {
            this.§<i§ = §<"c§;
         }
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         if(this.§7"$§ >= 0)
         {
            this.§7"$§ += param1;
            if(this.§7"$§ >= this.§<i§)
            {
               this.§'"0§ = true;
               this.§7"$§ = -1;
               param2.§""L§(§<!<§.§1!`§,§?"Z§().GetPosition().x,§?"Z§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§7"$§ < 0)
         {
            return true;
         }
         if(this.§7"$§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§7"$§ > 0)
         {
            return this.§7"$§ / this.§<i§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return §@"e§ || this.§<i§ > 0;
      }
   }
}
