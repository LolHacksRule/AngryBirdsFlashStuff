package §_-FZ§
{
   public class §_-2Q§
   {
      
      public static var §_-Qz§:Array;
       
      
      public function §_-2Q§()
      {
         super();
      }
      
      public static function §_-BF§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §_-Qz§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §_-Z5§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId);
         }
      }
      
      public static function §_-Z5§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String) : void
      {
         §_-Qz§[§_-Qz§.length] = new §_-J2§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §_-Z1§(param1:String) : §_-J2§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-Qz§.length)
         {
            if((§_-Qz§[_loc2_] as §_-J2§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-Qz§[_loc2_] as §_-J2§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §_-6b§() : String
      {
         var _loc1_:int = Math.random() * §_-Qz§.length;
         return (§_-Qz§[_loc1_] as §_-J2§).mName;
      }
   }
}
