package §<J§
{
   public class §&L§
   {
      
      private static var §!!S§:Array;
       
      
      public function §&L§()
      {
         super();
      }
      
      public static function get § p§() : Array
      {
         return §!!S§;
      }
      
      public static function §<!W§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §!!S§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §`W§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §`W§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §!!S§[§!!S§.length] = new §8!^§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §'!C§(param1:String) : §8!^§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §!!S§.length)
         {
            if((§!!S§[_loc2_] as §8!^§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §!!S§[_loc2_] as §8!^§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §9!?§() : String
      {
         var _loc1_:int = Math.random() * §!!S§.length;
         return (§!!S§[_loc1_] as §8!^§).mName;
      }
   }
}
