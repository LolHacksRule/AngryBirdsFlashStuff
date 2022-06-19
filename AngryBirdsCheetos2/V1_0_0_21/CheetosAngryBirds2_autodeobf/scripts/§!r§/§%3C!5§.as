package §!r§
{
   import §>^§.§!6§;
   
   public class §<!5§
   {
      
      private static var §>I§:Array;
       
      
      public function §<!5§()
      {
         super();
      }
      
      public static function §+!Y§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §>I§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            §#m§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
         }
      }
      
      public static function §#m§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         §>I§[§>I§.length] = new §"B§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §%W§(param1:String) : §"B§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §>I§.length)
         {
            if(§"B§(§>I§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               return §"B§(§>I§[_loc2_]);
            }
            _loc2_++;
         }
         §!6§.log("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: " + param1);
         return null;
      }
   }
}
