package §]!q§
{
   import §-!f§.Sprite;
   import §5!7§.§3!Y§;
   import §6_§.§6k§;
   import §9"5§.b2World;
   
   public class §;!%§ extends §,6§
   {
       
      
      public function §;!%§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function specialPower(param1:§5z§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return false;
      }
   }
}
