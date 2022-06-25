package §>o§
{
   import §6z§.§[g§;
   
   public class §4!m§
   {
      
      private static var §5_§:Array;
       
      
      public function §4!m§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §7J§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(_loc5_ || §4!m§)
         {
            §5_§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(!_loc6_)
            {
               §9I§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §9I§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            §5_§[§5_§.length] = new §'y§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §3!n§(param1:String) : §'y§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §5_§.length)
            {
               if(!_loc3_)
               {
                  if(_loc3_)
                  {
                     loop1:
                     while(_loc3_ && param1)
                     {
                        while(true)
                        {
                           _loc2_++;
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  if(_loc3_ && _loc3_)
                  {
                     break;
                  }
                  §§push(§[g§);
                  §§push("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: ");
                  if(!_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               return null;
            }
            if(§'y§(§5_§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr69);
         }
         return §'y§(§5_§[_loc2_]);
      }
   }
}
