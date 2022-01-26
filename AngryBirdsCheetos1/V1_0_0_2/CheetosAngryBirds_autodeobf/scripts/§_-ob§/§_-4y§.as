package §_-Ob§
{
   public class §_-4y§
   {
      
      private static var §_-uc§:Array;
       
      
      public function §_-4y§()
      {
         super();
      }
      
      public static function get §_-ep§() : Array
      {
         return §_-uc§;
      }
      
      public static function §_-IB§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §_-uc§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §_-Tw§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §_-Tw§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §_-uc§[§_-uc§.length] = new §_-NB§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §_-5g§(param1:String) : §_-NB§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-uc§.length)
         {
            if((§_-uc§[_loc2_] as §_-NB§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-uc§[_loc2_] as §_-NB§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §_-T2§() : String
      {
         var _loc1_:int = Math.random() * §_-uc§.length;
         return (§_-uc§[_loc1_] as §_-NB§).mName;
      }
   }
}
