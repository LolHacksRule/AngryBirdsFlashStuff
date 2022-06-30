package §"W§
{
   import § d§.§'!"§;
   import § d§.§3§;
   import §#!f§.Sprite;
   import §^!Z§.b2World;
   
   public class §7!,§ extends §7!6§
   {
       
      
      public function §7!,§(param1:§?!T§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?!T§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §0!T§(§3§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
