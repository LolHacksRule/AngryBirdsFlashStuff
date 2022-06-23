package §7!0§
{
   import §+!"§.§5!<§;
   
   public class §;%§
   {
      
      private static var §7+§:Array;
       
      
      public function §;%§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §,]§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(_loc6_ || §;%§)
         {
            §7+§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(_loc6_)
            {
               §^y§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §^y§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            §7+§[§7+§.length] = new §6Z§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §3N§(param1:String) : §6Z§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §7+§.length)
            {
               if(_loc4_)
               {
                  addr85:
                  §§push(§5!<§);
                  §§push("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: ");
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               break;
            }
            if(§6Z§(§7+§[_loc2_]).mName.toLowerCase() != param1.toLowerCase())
            {
               continue;
            }
            if(_loc4_ || _loc3_)
            {
               return §6Z§(§7+§[_loc2_]);
            }
            §§goto(addr85);
         }
         while(_loc2_++, _loc4_ || _loc3_);
         
         return null;
      }
   }
}
