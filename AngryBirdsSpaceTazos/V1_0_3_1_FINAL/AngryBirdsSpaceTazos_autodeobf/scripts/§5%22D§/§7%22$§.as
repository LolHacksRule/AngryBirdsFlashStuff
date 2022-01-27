package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §7"$§ extends §1"G§
   {
       
      
      public function §7"$§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§0!5§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §0N§(launchForce);
         return true;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!§!!a§ && specialPowerUsed)
         {
            §;!5§.setAnimation(§[!;§);
         }
         super.render(param1,param2,param3);
      }
   }
}
