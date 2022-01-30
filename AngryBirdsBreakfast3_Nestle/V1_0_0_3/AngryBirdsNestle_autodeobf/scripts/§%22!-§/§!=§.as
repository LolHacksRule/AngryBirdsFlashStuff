package §"!-§
{
   import §!!<§.§>"4§;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §;'§.b2World;
   
   public class §!=§ extends § !§
   {
       
      
      public function §!=§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§!l§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §0!o§(launchForce);
         return true;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!§&!J§ && specialPowerUsed)
         {
            §[c§.setAnimation(§!!6§);
         }
         super.render(param1,param2,param3);
      }
   }
}
