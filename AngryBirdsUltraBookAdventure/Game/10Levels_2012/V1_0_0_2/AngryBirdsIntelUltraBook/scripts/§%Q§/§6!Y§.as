package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§>!A§;
   import §,!5§.§^g§;
   import §`w§.b2World;
   
   public class §6!Y§ extends §3L§
   {
       
      
      public function §6!Y§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§=[§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         § !d§(§>!A§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
