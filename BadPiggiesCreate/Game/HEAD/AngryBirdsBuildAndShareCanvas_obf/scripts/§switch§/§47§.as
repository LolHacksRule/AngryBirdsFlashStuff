package §switch§
{
   public class §47§
   {
      
      private static var §65§:Array;
       
      
      public function §47§()
      {
         super();
      }
      
      public static function get §;!%§() : Array
      {
         return §65§;
      }
      
      public static function §!A§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §65§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §@"3§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §@"3§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §65§[§65§.length] = new §4G§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §," §(param1:String) : §4G§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §65§.length)
         {
            if((§65§[_loc2_] as §4G§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §65§[_loc2_] as §4G§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §#"9§() : String
      {
         var _loc1_:int = Math.random() * §65§.length;
         return (§65§[_loc1_] as §4G§).mName;
      }
   }
}
