package §6!!§
{
   import §#!,§.Sprite;
   import §>!L§.b2World;
   import §]!@§.LevelMain;
   import §]!@§.LevelSlingshot;
   
   public class §#I§ extends §6!f§
   {
       
      
      public function §#I§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(super.activateSpecialPower(param1));
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc2_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     do
                     {
                        §&%§(LevelSlingshot.BIRD_LAUNCH_FORCE);
                     }
                     while(_loc2_ && _loc3_);
                     
                     if(_loc2_)
                     {
                        addr88:
                        §§push(false);
                     }
                     else
                     {
                        addr88:
                     }
                     continue;
                     break;
                  }
                  §§goto(addr88);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr88);
      }
   }
}
