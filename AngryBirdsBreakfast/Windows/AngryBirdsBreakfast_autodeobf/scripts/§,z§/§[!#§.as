package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   
   public class §[!#§ extends §?!z§
   {
       
      
      public function §[!#§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§3!#§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         §+x§(launchForce);
         return true;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!§1!q§ && specialPowerUsed)
         {
            §`!f§.setAnimation(§=!4§,false);
         }
         super.render(param1,param2,param3);
      }
   }
}
