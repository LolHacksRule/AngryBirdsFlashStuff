package §_-gL§
{
   public class §_-UR§
   {
      
      private static var §_-9s§:Array;
       
      
      public function §_-UR§()
      {
         super();
      }
      
      public static function get §_-0o§() : Array
      {
         return §_-9s§;
      }
      
      public static function §_-kC§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §_-9s§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §_-B5§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §_-B5§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §_-9s§[§_-9s§.length] = new §_-w6§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §_-ON§(param1:String) : §_-w6§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-9s§.length)
         {
            if((§_-9s§[_loc2_] as §_-w6§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-9s§[_loc2_] as §_-w6§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §_-7U§() : String
      {
         var _loc1_:int = Math.random() * §_-9s§.length;
         return (§_-9s§[_loc1_] as §_-w6§).mName;
      }
   }
}
