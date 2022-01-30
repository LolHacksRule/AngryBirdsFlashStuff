package §"P§
{
   import §!"+§.§!o§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §=!c§.b2World;
   
   public class §52§ extends §?!§
   {
      
      private static const §-!6§:int = 2000;
       
      
      private var §2!p§:Number = -1;
      
      private var § 9§:Number = -1;
      
      private var § !`§:Boolean = false;
      
      public function §52§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§ !`§;
      }
      
      override public function activateSpecialPower(param1:§0w§, param2:Number, param3:Number) : Boolean
      {
         if(§ !G§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§-!#§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§0w§, param3:§^!x§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§-!#§(§-!6§,param2);
         }
         return _loc5_;
      }
      
      protected function §-!#§(param1:Number, param2:§0w§) : void
      {
         if(param1 != 0 && this.§ 9§ > 0)
         {
            return;
         }
         this.§2!p§ = 0;
         if(param1 == 0)
         {
            this.§ 9§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§ 9§ = param1;
         }
         else
         {
            this.§ 9§ = §-!6§;
         }
      }
      
      override public function update(param1:Number, param2:§0w§) : void
      {
         super.update(param1,param2);
         if(this.§2!p§ >= 0)
         {
            this.§2!p§ += param1;
            if(this.§2!p§ >= this.§ 9§)
            {
               this.§ !`§ = true;
               this.§2!p§ = -1;
               param2.§=!Y§(§7"$§.§""5§,§7J§().GetPosition().x,§7J§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§2!p§ < 0)
         {
            return true;
         }
         if(this.§2!p§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§2!p§ > 0)
         {
            return this.§2!p§ / this.§ 9§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return § !G§ || this.§ 9§ > 0;
      }
   }
}
