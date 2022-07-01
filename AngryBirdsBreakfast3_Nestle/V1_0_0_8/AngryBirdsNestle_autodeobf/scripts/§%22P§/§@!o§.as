package §"P§
{
   import §!"+§.§!o§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §=!c§.b2World;
   
   public class §@!o§ extends §?!§
   {
       
      
      public function §@!o§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§0w§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §?!J§(launchForce);
         return true;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!§ !G§ && specialPowerUsed)
         {
            §9!t§.setAnimation(§!#§,false);
         }
         super.render(param1,param2,param3);
      }
   }
}
