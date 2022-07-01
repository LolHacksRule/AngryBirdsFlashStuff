package §%Z§
{
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §8+§.§5"-§;
   import §9!Z§.b2World;
   import §`!B§.Sprite;
   
   public class §[b§ extends §=!V§
   {
       
      
      public function §[b§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§8!m§, param2:Number, param3:Number) : Boolean
      {
         return super.activateSpecialPower(param1,param2,param3);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
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
