package §@!%§
{
   public class §2!]§
   {
      
      private static var §8Z§:Array;
       
      
      public function §2!]§()
      {
         super();
      }
      
      public static function get § !H§() : Array
      {
         return §8Z§;
      }
      
      public static function §;x§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §8Z§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §3`§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §3`§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §8Z§[§8Z§.length] = new §+i§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §+!4§(param1:String) : §+i§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §8Z§.length)
         {
            if((§8Z§[_loc2_] as §+i§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §8Z§[_loc2_] as §+i§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §`h§() : String
      {
         var _loc1_:int = Math.random() * §8Z§.length;
         return (§8Z§[_loc1_] as §+i§).mName;
      }
   }
}
