package §_-h3§
{
   public class §_-EL§
   {
      
      private static var §_-SR§:Array;
       
      
      public function §_-EL§()
      {
         super();
      }
      
      public static function get §_-r6§() : Array
      {
         return §_-SR§;
      }
      
      public static function §_-hC§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §_-SR§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §_-ET§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId);
         }
      }
      
      public static function §_-ET§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String) : void
      {
         §_-SR§[§_-SR§.length] = new §_-07§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §_-fN§(param1:String) : §_-07§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-SR§.length)
         {
            if((§_-SR§[_loc2_] as §_-07§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-SR§[_loc2_] as §_-07§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §_-OJ§() : String
      {
         var _loc1_:int = Math.random() * §_-SR§.length;
         return (§_-SR§[_loc1_] as §_-07§).mName;
      }
   }
}
