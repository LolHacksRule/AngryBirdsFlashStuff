package §-d§
{
   import §"x§.§-8§;
   
   public class §3!#§
   {
      
      private static var §1s§:Array;
       
      
      public function §3!#§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §-v§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!(_loc5_ && _loc2_))
         {
            §1s§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(_loc6_ || _loc2_)
            {
               §3<§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §3<§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && param1))
         {
            §1s§[§1s§.length] = new §-C§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §?!F§(param1:String) : §-C§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §1s§.length)
            {
               if(!_loc3_)
               {
                  §§push(§-8§);
                  §§push("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: ");
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(!_loc4_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  return null;
               }
               addr92:
            }
            else if(§-C§(§1s§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr92);
            }
            _loc2_++;
         }
         return §-C§(§1s§[_loc2_]);
      }
   }
}
