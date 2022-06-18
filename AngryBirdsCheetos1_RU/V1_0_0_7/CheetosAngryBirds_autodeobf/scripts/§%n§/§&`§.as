package §%n§
{
   import §'D§.§8e§;
   
   public class §&`§
   {
      
      private static var §?l§:Array;
       
      
      public function §&`§()
      {
         super();
      }
      
      public static function §=![§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §?l§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            §%J§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
         }
      }
      
      public static function §%J§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         §?l§[§?l§.length] = new §3!A§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §?P§(param1:String) : §3!A§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §?l§.length)
         {
            if(§3!A§(§?l§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               return §3!A§(§?l§[_loc2_]);
            }
            _loc2_++;
         }
         §8e§.log("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: " + param1);
         return null;
      }
   }
}
