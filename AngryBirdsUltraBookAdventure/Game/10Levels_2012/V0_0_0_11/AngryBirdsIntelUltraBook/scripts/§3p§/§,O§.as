package §3p§
{
   import §2!H§.LevelMain;
   import §2!H§.LevelSlingshot;
   import §6!7§.Sprite;
   import §]=§.b2World;
   
   public class §,O§ extends §4!G§
   {
       
      
      public function §,O§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §2A§(LevelSlingshot.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
