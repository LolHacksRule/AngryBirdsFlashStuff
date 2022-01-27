package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§=!,§;
   
   public class §,"h§ extends §%!0§
   {
       
      
      public function §,"h§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§""M§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §4"8§(launchForce);
         return true;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!§@"e§ && specialPowerUsed)
         {
            §]h§.setAnimation(§-"§,false);
         }
         super.render(param1,param2,param3);
      }
   }
}
