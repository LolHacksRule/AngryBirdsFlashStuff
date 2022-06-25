package §_-0DG§
{
   import §_-0BH§.§_-FK§;
   
   public class §_-DR§
   {
      
      private static var §_-05w§:Array;
       
      
      public function §_-DR§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §_-lI§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(!_loc6_)
         {
            §_-05w§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(_loc5_ || _loc2_)
            {
               §_-zD§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §_-zD§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            §_-05w§[§_-05w§.length] = new §_-a2§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §_-dY§(param1:String) : §_-a2§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §_-05w§.length)
            {
               if(!_loc4_)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(_loc4_ && _loc2_)
                  {
                     addr75:
                     _loc2_++;
                     continue;
                  }
                  if(!(_loc3_ || _loc3_))
                  {
                     break;
                  }
                  §§push(§_-FK§);
                  §§push("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               return null;
            }
            if(§_-a2§(§_-05w§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr75);
         }
         return §_-a2§(§_-05w§[_loc2_]);
      }
   }
}
