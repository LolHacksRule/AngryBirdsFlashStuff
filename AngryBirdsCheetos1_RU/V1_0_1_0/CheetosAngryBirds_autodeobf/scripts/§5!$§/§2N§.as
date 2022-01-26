package §5!$§
{
   import §%t§.§@!%§;
   
   public class §2N§
   {
      
      private static var §]z§:Array;
       
      
      public function §2N§()
      {
         super();
      }
      
      public static function § for§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §]z§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            §5i§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
         }
      }
      
      public static function §5i§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         §]z§[§]z§.length] = new §1!8§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §[[§(param1:String) : §1!8§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §]z§.length)
         {
            if(§1!8§(§]z§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               return §1!8§(§]z§[_loc2_]);
            }
            _loc2_++;
         }
         §@!%§.log("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: " + param1);
         return null;
      }
   }
}
