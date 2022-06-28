package §_-9T§
{
   public class §_-xG§
   {
      
      private static var §_-C7§:Array;
       
      
      public function §_-xG§()
      {
         super();
      }
      
      public static function get §_-06S§() : Array
      {
         return §_-C7§;
      }
      
      public static function §_-il§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §_-C7§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §_-YK§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §_-YK§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §_-C7§[§_-C7§.length] = new §_-0D7§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §_-lv§(param1:String) : §_-0D7§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-C7§.length)
         {
            if((§_-C7§[_loc2_] as §_-0D7§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-C7§[_loc2_] as §_-0D7§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §_-D9§() : String
      {
         var _loc1_:int = Math.random() * §_-C7§.length;
         return (§_-C7§[_loc1_] as §_-0D7§).mName;
      }
   }
}
