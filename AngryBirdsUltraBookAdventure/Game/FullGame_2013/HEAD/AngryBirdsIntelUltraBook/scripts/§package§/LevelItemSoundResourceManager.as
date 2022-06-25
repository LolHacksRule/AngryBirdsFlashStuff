package §package§
{
   import §<u§.Log;
   
   public class LevelItemSoundResourceManager
   {
      
      private static var §"!b§:Array;
       
      
      public function LevelItemSoundResourceManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §>E§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(_loc5_ || LevelItemSoundResourceManager)
         {
            §"!b§ = new Array();
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(_loc5_ || _loc3_)
            {
               §;0§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §;0§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && param3))
         {
            §"!b§[§"!b§.length] = new LevelItemSoundResource(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §7!6§(param1:String) : LevelItemSoundResource
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(_loc3_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  if(!(_loc4_ && param1))
                  {
                     if(§§pop() >= §"!b§.length)
                     {
                        if(!_loc4_)
                        {
                           if(_loc4_ && param1)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(Log);
                           §§push("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: ");
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().log(§§pop());
                        }
                        if(!(_loc4_ && _loc3_))
                        {
                           return null;
                        }
                     }
                     else if(LevelItemSoundResource(§"!b§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
                     {
                        break;
                     }
                     §§push(_loc2_);
                  }
                  §§push(§§pop() + 1);
               }
               §§push(int(§§pop()));
            }
            _loc2_ = §§pop();
         }
         return LevelItemSoundResource(§"!b§[_loc2_]);
      }
   }
}
