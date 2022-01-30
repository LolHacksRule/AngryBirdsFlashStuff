package §=!`§
{
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §-!b§.§<W§;
   
   public class §,!H§ extends §6!-§
   {
       
      
      public function §,!H§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function specialPower(param1:§'`§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return false;
      }
   }
}
