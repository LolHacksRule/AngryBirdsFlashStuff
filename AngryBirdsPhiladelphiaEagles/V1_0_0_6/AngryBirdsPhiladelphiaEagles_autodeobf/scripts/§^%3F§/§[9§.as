package §^?§
{
   public class §[9§
   {
      
      private static var §9T§:Array;
       
      
      public function §[9§()
      {
         super();
      }
      
      public static function get §1K§() : Array
      {
         return §9T§;
      }
      
      public static function §0g§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §9T§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §?_§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §?_§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §9T§[§9T§.length] = new §5Q§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function § r§(param1:String) : §5Q§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §9T§.length)
         {
            if((§9T§[_loc2_] as §5Q§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §9T§[_loc2_] as §5Q§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §25§() : String
      {
         var _loc1_:int = Math.random() * §9T§.length;
         return (§9T§[_loc1_] as §5Q§).mName;
      }
   }
}
