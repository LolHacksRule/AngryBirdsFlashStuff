package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §1!n§ extends §[!k§
   {
       
      
      public function §1!n§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§]!m§, param2:Number, param3:Number) : Boolean
      {
         return super.activateSpecialPower(param1,param2,param3);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
   }
}
