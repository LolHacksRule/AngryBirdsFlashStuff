package §%Z§
{
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §8+§.§5"-§;
   import §9!Z§.b2World;
   import §`!B§.Sprite;
   
   public class §=H§ extends §=!V§
   {
       
      
      public function §=H§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§8!m§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §5"!§(launchForce);
         return true;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!§4c§ && specialPowerUsed)
         {
            §41§.setAnimation(§ !N§,false);
         }
         super.render(param1,param2,param3);
      }
   }
}
