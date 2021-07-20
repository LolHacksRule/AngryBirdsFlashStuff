package §0S§
{
   import §1!B§.§<m§;
   
   public class §90§
   {
      
      private static var §4V§:Array;
       
      
      public function §90§()
      {
         super();
      }
      
      public static function §>[§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §4V§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            §>!g§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
         }
      }
      
      public static function §>!g§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         §4V§[§4V§.length] = new §6!D§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §6a§(param1:String) : §6!D§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §4V§.length)
         {
            if(§6!D§(§4V§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               return §6!D§(§4V§[_loc2_]);
            }
            _loc2_++;
         }
         §<m§.log("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: " + param1);
         return null;
      }
   }
}
