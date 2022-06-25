package §0S§
{
   import §1!B§.§<m§;
   
   public class §90§
   {
      
      private static var §4V§:Array;
       
      
      public function §90§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §>[§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(_loc6_)
         {
            §4V§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(!_loc5_)
            {
               §>!g§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §>!g§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || param2)
         {
            §4V§[§4V§.length] = new §6!D§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §6a§(param1:String) : §6!D§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §4V§.length)
            {
               if(_loc3_)
               {
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  if(_loc4_ && _loc2_)
                  {
                     addr80:
                     _loc2_++;
                     continue;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
                  §§push(§<m§);
                  §§push("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: ");
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               return null;
            }
            if(§6!D§(§4V§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr80);
         }
         return §6!D§(§4V§[_loc2_]);
      }
   }
}
