package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §4-§ extends §;!T§
   {
       
      
      public function §4-§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function specialPower(param1:§'=§, param2:Number = 0, param3:Number = 0) : void
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
