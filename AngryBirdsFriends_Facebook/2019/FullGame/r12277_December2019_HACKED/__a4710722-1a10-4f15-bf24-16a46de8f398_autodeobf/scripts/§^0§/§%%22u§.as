package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §%"u§ extends §[# §
   {
       
      
      public function §%"u§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§>"T§, param2:Number, param3:Number) : Boolean
      {
         return super.activateSpecialPower(param1,param2,param3);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
   }
}
