package §default§
{
   import § !G§.§ #§;
   
   public class §9!#§
   {
      
      private static var §,!Q§:Array;
       
      
      public function §9!#§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §>Q§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(!(_loc6_ && _loc2_))
         {
            §,!Q§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(!_loc6_)
            {
               §5!U§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §5!U§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && param3))
         {
            §,!Q§[§,!Q§.length] = new §!A§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §4!R§(param1:String) : §!A§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §,!Q§.length)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(_loc4_ || _loc3_)
                  {
                     § #§.log("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: " + param1);
                     break;
                  }
                  loop1:
                  while(!(_loc4_ || _loc2_))
                  {
                     while(true)
                     {
                        _loc2_++;
                        continue loop1;
                     }
                  }
                  if(!_loc4_)
                  {
                     addr94:
                  }
                  continue;
                  return §!A§(§,!Q§[_loc2_]);
               }
               break;
            }
            if(§!A§(§,!Q§[_loc2_]).mName.toLowerCase() != param1.toLowerCase())
            {
               §§goto(addr60);
            }
            §§goto(addr94);
            §§goto(addr60);
         }
         return null;
      }
   }
}
