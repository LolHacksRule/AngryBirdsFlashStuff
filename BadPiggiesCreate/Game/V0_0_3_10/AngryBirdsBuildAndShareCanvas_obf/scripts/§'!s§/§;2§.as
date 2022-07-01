package §'!s§
{
   public class §;2§
   {
      
      private static var §`!s§:Array;
       
      
      public function §;2§()
      {
         super();
      }
      
      public static function get §0!Y§() : Array
      {
         return §`!s§;
      }
      
      public static function §2a§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §`!s§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §%x§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §%x§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §`!s§[§`!s§.length] = new §9!^§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §8g§(param1:String) : §9!^§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §`!s§.length)
         {
            if((§`!s§[_loc2_] as §9!^§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §`!s§[_loc2_] as §9!^§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §;"9§() : String
      {
         var _loc1_:int = Math.random() * §`!s§.length;
         return (§`!s§[_loc1_] as §9!^§).mName;
      }
   }
}
