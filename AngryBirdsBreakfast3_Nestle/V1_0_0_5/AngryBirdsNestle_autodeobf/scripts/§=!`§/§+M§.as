package §=!`§
{
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §-!b§.§<W§;
   
   public class §+M§ extends §6!-§
   {
       
      
      public function §+M§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§'`§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §`W§(launchForce);
         return true;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!§0#§ && specialPowerUsed)
         {
            §8!p§.setAnimation(§0U§);
         }
         super.render(param1,param2,param3);
      }
   }
}
