package §"P§
{
   import §!"+§.§!o§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §=!c§.b2World;
   
   public class §^e§ extends §?!§
   {
       
      
      public function §^e§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function specialPower(param1:§0w§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         if(specialPowerUsed)
         {
            return false;
         }
         return super.canActivateSpecialPower;
      }
   }
}
