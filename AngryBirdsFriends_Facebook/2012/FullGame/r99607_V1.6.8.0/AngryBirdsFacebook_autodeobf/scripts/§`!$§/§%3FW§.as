package §`!$§
{
   public class §?W§
   {
      
      private static var §<"A§:Array;
       
      
      public function §?W§()
      {
         super();
      }
      
      public static function get §5!L§() : Array
      {
         return §<"A§;
      }
      
      public static function § "@§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §<"A§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §6!q§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §6!q§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §<"A§[§<"A§.length] = new §0$§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §=&§(param1:String) : §0$§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §<"A§.length)
         {
            if((§<"A§[_loc2_] as §0$§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §<"A§[_loc2_] as §0$§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §;8§() : String
      {
         var _loc1_:int = Math.random() * §<"A§.length;
         return (§<"A§[_loc1_] as §0$§).mName;
      }
   }
}
