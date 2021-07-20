package §2@§
{
   public class §%E§
   {
      
      private static var §2L§:Array;
       
      
      public function §%E§()
      {
         super();
      }
      
      public static function get §>!#§() : Array
      {
         return §2L§;
      }
      
      public static function §9I§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §2L§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §^!+§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §^!+§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §2L§[§2L§.length] = new §+!Y§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §8!G§(param1:String) : §+!Y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §2L§.length)
         {
            if((§2L§[_loc2_] as §+!Y§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §2L§[_loc2_] as §+!Y§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §`;§() : String
      {
         var _loc1_:int = Math.random() * §2L§.length;
         return (§2L§[_loc1_] as §+!Y§).mName;
      }
   }
}
