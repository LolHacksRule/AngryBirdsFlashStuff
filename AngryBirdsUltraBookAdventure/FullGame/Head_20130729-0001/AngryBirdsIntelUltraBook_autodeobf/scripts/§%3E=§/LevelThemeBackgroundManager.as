package §>=§
{
   public class LevelThemeBackgroundManager
   {
      
      private static var §3!<§:Array;
       
      
      public function LevelThemeBackgroundManager()
      {
         super();
      }
      
      public static function get §1a§() : Array
      {
         return §3!<§;
      }
      
      public static function §[B§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §3!<§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §[>§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §[>§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §3!<§[§3!<§.length] = new LevelThemeBackground(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §#!W§(param1:String) : LevelThemeBackground
      {
         var _loc2_:int = 0;
         while(_loc2_ < §3!<§.length)
         {
            if((§3!<§[_loc2_] as LevelThemeBackground).mName.toLowerCase() == param1.toLowerCase())
            {
               return §3!<§[_loc2_] as LevelThemeBackground;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §6g§() : String
      {
         var _loc1_:int = Math.random() * §3!<§.length;
         return (§3!<§[_loc1_] as LevelThemeBackground).mName;
      }
   }
}
