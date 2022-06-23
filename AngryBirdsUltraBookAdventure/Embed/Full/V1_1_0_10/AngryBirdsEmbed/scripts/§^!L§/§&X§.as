package §^!L§
{
   import §3a§.§7!+§;
   
   public class §&X§
   {
      
      private static var §[P§:Array;
       
      
      public function §&X§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §^E§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(!(_loc6_ && _loc2_))
         {
            §[P§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(_loc5_)
            {
               §@V§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §@V§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || param2)
         {
            §[P§[§[P§.length] = new §%h§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §]!=§(param1:String) : §%h§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §[P§.length)
            {
               if(!_loc4_)
               {
                  addr69:
                  §§push(§7!+§);
                  §§push("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: ");
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               break;
            }
            if(§%h§(§[P§[_loc2_]).mName.toLowerCase() != param1.toLowerCase())
            {
               continue;
            }
            if(!_loc4_)
            {
               return §%h§(§[P§[_loc2_]);
            }
            §§goto(addr69);
         }
         while(_loc2_++, _loc3_);
         
         return null;
      }
   }
}
