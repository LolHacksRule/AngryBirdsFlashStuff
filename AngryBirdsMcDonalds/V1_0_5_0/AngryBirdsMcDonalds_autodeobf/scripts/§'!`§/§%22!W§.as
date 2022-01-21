package §'!`§
{
   import §-0§.b2World;
   import §0@§.Sprite;
   import §55§.§"!P§;
   import §55§.§>![§;
   
   public class §"!W§ extends §3C§
   {
       
      
      public function §"!W§(param1:§for§, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§for§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §7!n§(§"!P§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
