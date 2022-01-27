package get
{
   public class § v§
   {
      
      private static var §=!I§:Array;
       
      
      public function § v§()
      {
         super();
      }
      
      public static function get §+!-§() : Array
      {
         return §=!I§;
      }
      
      public static function §=!-§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §=!I§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §5!F§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §5!F§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §=!I§[§=!I§.length] = new §1!"§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §"!4§(param1:String) : §1!"§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §=!I§.length)
         {
            if((§=!I§[_loc2_] as §1!"§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §=!I§[_loc2_] as §1!"§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §=!?§() : String
      {
         var _loc1_:int = Math.random() * §=!I§.length;
         return (§=!I§[_loc1_] as §1!"§).mName;
      }
   }
}
