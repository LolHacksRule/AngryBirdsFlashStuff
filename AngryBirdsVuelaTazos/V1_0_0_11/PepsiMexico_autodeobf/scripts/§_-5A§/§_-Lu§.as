package §_-5A§
{
   public class §_-Lu§
   {
      
      public static var §_-S9§:Array;
       
      
      public function §_-Lu§()
      {
         super();
      }
      
      public static function §_-uU§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §_-S9§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §_-aF§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId);
         }
      }
      
      public static function §_-aF§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String) : void
      {
         §_-S9§[§_-S9§.length] = new §_-KW§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §_-uW§(param1:String) : §_-KW§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-S9§.length)
         {
            if((§_-S9§[_loc2_] as §_-KW§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-S9§[_loc2_] as §_-KW§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §_-Vt§() : String
      {
         var _loc1_:int = Math.random() * §_-S9§.length;
         return (§_-S9§[_loc1_] as §_-KW§).mName;
      }
   }
}
