package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   
   public class §?!T§ extends §?!z§
   {
       
      
      public function §?!T§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function specialPower(param1:§3!#§, param2:Number = 0, param3:Number = 0) : void
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
