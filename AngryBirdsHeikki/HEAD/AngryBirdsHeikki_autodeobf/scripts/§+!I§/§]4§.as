package §+!I§
{
   public class §]4§
   {
      
      private static var §[k§:Array;
       
      
      public function §]4§()
      {
         super();
      }
      
      public static function get §[;§() : Array
      {
         return §[k§;
      }
      
      public static function §'!]§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §[k§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §6h§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §6h§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §[k§[§[k§.length] = new §'b§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §#_§(param1:String) : §'b§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §[k§.length)
         {
            if((§[k§[_loc2_] as §'b§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §[k§[_loc2_] as §'b§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §#[§() : String
      {
         var _loc1_:int = Math.random() * §[k§.length;
         return (§[k§[_loc1_] as §'b§).mName;
      }
   }
}
