package §]Z§
{
   public class §7!n§
   {
      
      private static var §!Q§:Array;
       
      
      public function §7!n§()
      {
         super();
      }
      
      public static function get §=!k§() : Array
      {
         return §!Q§;
      }
      
      public static function §0!Y§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §!Q§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            § !H§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function § !H§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §!Q§[§!Q§.length] = new §,d§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §&!c§(param1:String) : §,d§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §!Q§.length)
         {
            if((§!Q§[_loc2_] as §,d§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §!Q§[_loc2_] as §,d§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §<S§() : String
      {
         var _loc1_:int = Math.random() * §!Q§.length;
         return (§!Q§[_loc1_] as §,d§).mName;
      }
   }
}
