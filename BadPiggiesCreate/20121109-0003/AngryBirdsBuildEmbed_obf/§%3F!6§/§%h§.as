package §?!6§
{
   import § !r§.§`![§;
   
   public class §%h§
   {
      
      private static var §5!A§:Array;
       
      
      public function §%h§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §;&§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(_loc5_ || param1)
         {
            §5!A§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(_loc5_)
            {
               §%6§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §%6§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            §5!A§[§5!A§.length] = new §@T§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §@s§(param1:String) : §@T§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §5!A§.length)
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               if(§@T§(§5!A§[_loc2_]).mName.toLowerCase() != param1.toLowerCase())
               {
                  continue;
               }
               if(!(_loc3_ && param1))
               {
                  return §@T§(§5!A§[_loc2_]);
               }
            }
            §§goto(addr87);
         }
         while(_loc2_++, !(_loc3_ && param1));
         
         §§push(§`![§);
         §§push("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: ");
         if(_loc4_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().log(§§pop());
         addr87:
         return null;
      }
   }
}
