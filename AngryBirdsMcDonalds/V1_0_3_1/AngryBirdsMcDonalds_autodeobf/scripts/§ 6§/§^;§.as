package § 6§
{
   public class §^;§
   {
      
      private static var §4n§:Array;
       
      
      public function §^;§()
      {
         super();
      }
      
      public static function get §?!n§() : Array
      {
         return §4n§;
      }
      
      public static function § !S§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §4n§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §?!"§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §?!"§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §4n§[§4n§.length] = new §`!P§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §%!F§(param1:String) : §`!P§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §4n§.length)
         {
            if((§4n§[_loc2_] as §`!P§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §4n§[_loc2_] as §`!P§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §#L§() : String
      {
         var _loc1_:int = Math.random() * §4n§.length;
         return (§4n§[_loc1_] as §`!P§).mName;
      }
   }
}
