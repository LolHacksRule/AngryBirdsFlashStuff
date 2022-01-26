package §_-2m§
{
   public class §_-lr§
   {
      
      public static var §_-W7§:Array;
       
      
      public function §_-lr§()
      {
         super();
      }
      
      public static function §_-X3§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §_-W7§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §_-9F§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId);
         }
      }
      
      public static function §_-9F§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String) : void
      {
         §_-W7§[§_-W7§.length] = new §_-mI§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §_-1U§(param1:String) : §_-mI§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-W7§.length)
         {
            if((§_-W7§[_loc2_] as §_-mI§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-W7§[_loc2_] as §_-mI§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §_-O8§() : String
      {
         var _loc1_:int = Math.random() * §_-W7§.length;
         return (§_-W7§[_loc1_] as §_-mI§).mName;
      }
   }
}
