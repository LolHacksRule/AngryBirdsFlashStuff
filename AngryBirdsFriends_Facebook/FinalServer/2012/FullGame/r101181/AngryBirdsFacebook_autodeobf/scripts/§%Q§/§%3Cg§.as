package §%Q§
{
   import §6o§.§+!k§;
   
   public class §<g§
   {
      
      private static var §1!5§:Array;
       
      
      public function §<g§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §0$§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(!(_loc6_ && _loc2_))
         {
            §1!5§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(_loc5_)
            {
               §?2§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §?2§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!_loc14_)
         {
            §1!5§[§1!5§.length] = new §;!y§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §8p§(param1:String) : §;!y§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §1!5§.length)
            {
               if(!(_loc4_ && _loc2_))
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  §§push(§+!k§);
                  §§push("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: ");
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(!(_loc4_ && §<g§))
               {
                  return null;
               }
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(§;!y§(§1!5§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr78);
         }
         return §;!y§(§1!5§[_loc2_]);
      }
   }
}
