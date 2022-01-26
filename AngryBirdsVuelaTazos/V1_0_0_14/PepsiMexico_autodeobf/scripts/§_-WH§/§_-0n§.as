package §_-WH§
{
   import §_-Eo§.§_-R4§;
   
   public class §_-0n§
   {
      
      private static var §_-SS§:Array;
       
      
      public function §_-0n§()
      {
         super();
      }
      
      public static function §_-Fq§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §_-SS§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            §_-Cc§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
         }
      }
      
      public static function §_-Cc§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         §_-SS§[§_-SS§.length] = new §_-YE§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §_-0g§(param1:String) : §_-YE§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-SS§.length)
         {
            if(§_-YE§(§_-SS§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-YE§(§_-SS§[_loc2_]);
            }
            _loc2_++;
         }
         §_-R4§.log("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: " + param1);
         return null;
      }
   }
}
