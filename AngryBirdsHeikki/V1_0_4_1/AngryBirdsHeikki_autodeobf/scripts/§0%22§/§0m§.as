package §0"§
{
   public class §0m§
   {
      
      private static var §@!0§:Array;
       
      
      public function §0m§()
      {
         super();
      }
      
      public static function get §75§() : Array
      {
         return §@!0§;
      }
      
      public static function §"!E§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §@!0§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §7!;§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §7!;§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §@!0§[§@!0§.length] = new §1!I§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §-#§(param1:String) : §1!I§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §@!0§.length)
         {
            if((§@!0§[_loc2_] as §1!I§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §@!0§[_loc2_] as §1!I§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §-F§() : String
      {
         var _loc1_:int = Math.random() * §@!0§.length;
         return (§@!0§[_loc1_] as §1!I§).mName;
      }
   }
}
