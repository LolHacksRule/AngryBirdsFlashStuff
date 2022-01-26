package §_-2V§
{
   public class §_-iY§
   {
      
      public static var §_-U3§:Array;
       
      
      public function §_-iY§()
      {
         super();
      }
      
      public static function §_-Gg§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §_-U3§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §_-1c§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId);
         }
      }
      
      public static function §_-1c§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String) : void
      {
         §_-U3§[§_-U3§.length] = new §_-Qb§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §_-s3§(param1:String) : §_-Qb§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-U3§.length)
         {
            if((§_-U3§[_loc2_] as §_-Qb§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-U3§[_loc2_] as §_-Qb§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §_-09§() : String
      {
         var _loc1_:int = Math.random() * §_-U3§.length;
         return (§_-U3§[_loc1_] as §_-Qb§).mName;
      }
   }
}
