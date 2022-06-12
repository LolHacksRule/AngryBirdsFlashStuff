package §;!@§
{
   public class §>!%§
   {
      
      private static var §2"&§:Array;
       
      
      public function §>!%§()
      {
         super();
      }
      
      public static function get §8!4§() : Array
      {
         return §2"&§;
      }
      
      public static function §,?§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §2"&§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            § !^§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function § !^§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §2"&§[§2"&§.length] = new §6f§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §?L§(param1:String) : §6f§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §2"&§.length)
         {
            if((§2"&§[_loc2_] as §6f§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §2"&§[_loc2_] as §6f§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §'!U§() : String
      {
         var _loc1_:int = Math.random() * §2"&§.length;
         return (§2"&§[_loc1_] as §6f§).mName;
      }
   }
}
