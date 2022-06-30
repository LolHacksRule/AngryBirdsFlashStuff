package §+!8§
{
   import §"!I§.§9§;
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   
   public class §,!K§ extends §`!O§
   {
       
      
      public function §,!K§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §'!T§(§9§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
