package §_-0y§
{
   public class §_-N4§
   {
      
      public static var §_-jK§:Array;
       
      
      public function §_-N4§()
      {
         super();
      }
      
      public static function §_-Vp§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §_-jK§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §_-V0§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId);
         }
      }
      
      public static function §_-V0§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String) : void
      {
         §_-jK§[§_-jK§.length] = new §_-je§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §_-R§(param1:String) : §_-je§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-jK§.length)
         {
            if((§_-jK§[_loc2_] as §_-je§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-jK§[_loc2_] as §_-je§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §_-3J§() : String
      {
         var _loc1_:int = Math.random() * §_-jK§.length;
         return (§_-jK§[_loc1_] as §_-je§).mName;
      }
   }
}
