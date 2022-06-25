package §;T§
{
   import §6b§.Log;
   
   public class LevelItemSoundResourceManager
   {
      
      private static var §,!+§:Array;
       
      
      public function LevelItemSoundResourceManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §?G§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            §,!+§ = new Array();
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(_loc6_ || _loc3_)
            {
               §&u§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §&u§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && param2))
         {
            §,!+§[§,!+§.length] = new LevelItemSoundResource(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §4!d§(param1:String) : LevelItemSoundResource
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(!_loc3_)
               {
                  if(§§pop() >= §,!+§.length)
                  {
                     if(_loc4_ || param1)
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(_loc4_ || param1)
                        {
                           if(_loc3_ && param1)
                           {
                              break;
                           }
                           §§push(Log);
                           §§push("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: ");
                           if(!(_loc3_ && LevelItemSoundResourceManager))
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().log(§§pop());
                        }
                        else
                        {
                           addr101:
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              addr107:
                              _loc2_ = int(§§pop() + 1);
                              continue;
                           }
                           §§goto(addr107);
                        }
                     }
                     return null;
                  }
                  if(LevelItemSoundResource(§,!+§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
                  {
                     break;
                  }
                  §§goto(addr101);
               }
            }
            §§goto(addr107);
         }
         return LevelItemSoundResource(§,!+§[_loc2_]);
      }
   }
}
