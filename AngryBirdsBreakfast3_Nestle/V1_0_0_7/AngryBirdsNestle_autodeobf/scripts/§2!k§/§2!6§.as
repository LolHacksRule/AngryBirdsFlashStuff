package §2!k§
{
   import § !=§.Sprite;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §[^§.§`!M§;
   
   public class §2!6§ extends §6",§
   {
       
      
      public function §2!6§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function specialPower(param1:§?N§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return false;
      }
   }
}
