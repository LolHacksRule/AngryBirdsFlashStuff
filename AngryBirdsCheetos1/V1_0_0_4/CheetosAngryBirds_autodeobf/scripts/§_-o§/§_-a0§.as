package §_-o§
{
   public class §_-a0§
   {
      
      private static var §_-1r§:Array;
       
      
      public function §_-a0§()
      {
         super();
      }
      
      public static function get §_-Lt§() : Array
      {
         return §_-1r§;
      }
      
      public static function §_-00i§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §_-1r§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §_-x7§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §_-x7§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §_-1r§[§_-1r§.length] = new §_-Qs§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §_-00p§(param1:String) : §_-Qs§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-1r§.length)
         {
            if((§_-1r§[_loc2_] as §_-Qs§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-1r§[_loc2_] as §_-Qs§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §_-aK§() : String
      {
         var _loc1_:int = Math.random() * §_-1r§.length;
         return (§_-1r§[_loc1_] as §_-Qs§).mName;
      }
   }
}
