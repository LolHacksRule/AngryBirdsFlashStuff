package §4N§
{
   import §;8§.§3f§;
   
   public class §+!0§
   {
      
      private static var §?J§:Array;
       
      
      public function §+!0§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §+T§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(!(_loc6_ && §+!0§))
         {
            §?J§ = new Array();
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(!(_loc6_ && _loc3_))
            {
               §'!%§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §'!%§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_ || param3)
         {
            §?J§[§?J§.length] = new §7E§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function § c§(param1:String) : §7E§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §?J§.length)
            {
               if(_loc4_)
               {
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  if(!(_loc4_ || _loc3_))
                  {
                     addr81:
                     _loc2_++;
                     continue;
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§push(§3f§);
                  §§push("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: ");
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               return null;
            }
            if(§7E§(§?J§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr81);
         }
         return §7E§(§?J§[_loc2_]);
      }
   }
}
