package § !$§
{
   import §+d§.b2World;
   import §6!;§.Sprite;
   import §9!'§.§0!%§;
   import §9!'§.§@!U§;
   
   public class §!!4§ extends §2!J§
   {
       
      
      public function §!!4§(param1:§7!!§, param2:Sprite, param3:b2World, param4:§0!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§7!!§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §3r§(§@!U§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
