package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §+x§ extends § 6§
   {
       
      
      public function §+x§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §var§(launchForce);
         return true;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!§?!d§ && specialPowerUsed)
         {
            §'%§.setAnimation(§,!Y§);
         }
         super.render(param1,param2,param3);
      }
   }
}
