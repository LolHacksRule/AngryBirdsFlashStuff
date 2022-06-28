package §_-0DG§
{
   import §_-0BH§.§_-FK§;
   
   public class §_-DR§
   {
      
      private static var §_-05w§:Array;
       
      
      public function §_-DR§()
      {
         super();
      }
      
      public static function §_-lI§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §_-05w§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            §_-zD§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
         }
      }
      
      public static function §_-zD§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         §_-05w§[§_-05w§.length] = new §_-a2§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §_-dY§(param1:String) : §_-a2§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-05w§.length)
         {
            if(§_-a2§(§_-05w§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-a2§(§_-05w§[_loc2_]);
            }
            _loc2_++;
         }
         §_-FK§.log("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: " + param1);
         return null;
      }
   }
}
