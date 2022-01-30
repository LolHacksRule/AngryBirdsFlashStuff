package §2!k§
{
   import § !=§.Sprite;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §[^§.§`!M§;
   
   public class §4!M§ extends §6",§
   {
       
      
      public function §4!M§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§?N§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §[!S§(launchForce);
         return true;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!§>!?§ && specialPowerUsed)
         {
            § !@§.setAnimation(§-$§,false);
         }
         super.render(param1,param2,param3);
      }
   }
}
