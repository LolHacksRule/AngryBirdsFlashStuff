package §#h§
{
   public class §`0§
   {
      
      private static var §`!X§:Array;
       
      
      public function §`0§()
      {
         super();
      }
      
      public static function get §1§() : Array
      {
         return §`!X§;
      }
      
      public static function §4!N§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §`!X§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            § !I§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function § !I§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §`!X§[§`!X§.length] = new §>!c§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §0!H§(param1:String) : §>!c§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §`!X§.length)
         {
            if((§`!X§[_loc2_] as §>!c§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §`!X§[_loc2_] as §>!c§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §5C§() : String
      {
         var _loc1_:int = Math.random() * §`!X§.length;
         return (§`!X§[_loc1_] as §>!c§).mName;
      }
   }
}
