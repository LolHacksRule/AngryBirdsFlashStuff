package §4N§
{
   import §;8§.§3f§;
   
   public class §+!0§
   {
      
      private static var §?J§:Array;
       
      
      public function §+!0§()
      {
         super();
      }
      
      public static function §+T§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §?J§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            §'!%§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
         }
      }
      
      public static function §'!%§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         §?J§[§?J§.length] = new §7E§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function § c§(param1:String) : §7E§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §?J§.length)
         {
            if(§7E§(§?J§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               return §7E§(§?J§[_loc2_]);
            }
            _loc2_++;
         }
         §3f§.log("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: " + param1);
         return null;
      }
   }
}
