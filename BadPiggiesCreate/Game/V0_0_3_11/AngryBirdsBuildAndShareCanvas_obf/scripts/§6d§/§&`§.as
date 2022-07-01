package §6d§
{
   public class §&`§
   {
      
      private static var §1`§:Array;
       
      
      public function §&`§()
      {
         super();
      }
      
      public static function get §8Z§() : Array
      {
         return §1`§;
      }
      
      public static function §@![§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §1`§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §-2§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §-2§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §1`§[§1`§.length] = new §5!0§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §2I§(param1:String) : §5!0§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §1`§.length)
         {
            if((§1`§[_loc2_] as §5!0§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §1`§[_loc2_] as §5!0§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §<"0§() : String
      {
         var _loc1_:int = Math.random() * §1`§.length;
         return (§1`§[_loc1_] as §5!0§).mName;
      }
   }
}
