package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §<#0§ extends §?"N§
   {
       
      
      public function §<#0§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §["t§(launchForce);
         return true;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!§8!_§ && specialPowerUsed)
         {
            §2N§.setAnimation(§'%§,false);
         }
         super.render(param1,param2,param3);
      }
   }
}
