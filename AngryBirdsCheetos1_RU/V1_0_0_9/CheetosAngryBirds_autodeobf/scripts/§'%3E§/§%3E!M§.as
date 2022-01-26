package §'>§
{
   public class §>!M§
   {
      
      private static var §9!§:Array;
       
      
      public function §>!M§()
      {
         super();
      }
      
      public static function get §8E§() : Array
      {
         return §9!§;
      }
      
      public static function §`c§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §9!§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §?X§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §?X§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §9!§[§9!§.length] = new §!B§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §@!`§(param1:String) : §!B§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §9!§.length)
         {
            if((§9!§[_loc2_] as §!B§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §9!§[_loc2_] as §!B§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §!F§() : String
      {
         var _loc1_:int = Math.random() * §9!§.length;
         return (§9!§[_loc1_] as §!B§).mName;
      }
   }
}
