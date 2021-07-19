package §?7§
{
   import §@,§.§4h§;
   
   public class § M§
   {
      
      private static var §>!X§:Array;
       
      
      public function § M§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §#n§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            §>!X§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(!(_loc5_ && _loc2_))
            {
               §4]§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §4]§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || § M§)
         {
            §>!X§[§>!X§.length] = new §=!5§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §;V§(param1:String) : §=!5§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §>!X§.length)
            {
               if(_loc4_)
               {
                  if(!_loc4_)
                  {
                     addr52:
                     _loc2_++;
                     continue;
                  }
                  §4h§.log("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: " + param1);
               }
               if(_loc4_)
               {
                  return null;
               }
               continue;
            }
            if(§=!5§(§>!X§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr52);
         }
         while(!_loc3_);
         
         return §=!5§(§>!X§[_loc2_]);
      }
   }
}
