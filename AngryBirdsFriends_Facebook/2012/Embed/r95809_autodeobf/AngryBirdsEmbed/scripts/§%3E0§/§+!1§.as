package §>0§
{
   public class §+!1§
   {
      
      private static var §9L§:Array;
       
      
      public function §+!1§()
      {
         super();
      }
      
      public static function get §?0§() : Array
      {
         return §9L§;
      }
      
      public static function §?Z§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §9L§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §]x§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §]x§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §9L§[§9L§.length] = new §%G§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function § "§(param1:String) : §%G§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §9L§.length)
         {
            if((§9L§[_loc2_] as §%G§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §9L§[_loc2_] as §%G§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §]F§() : String
      {
         var _loc1_:int = Math.random() * §9L§.length;
         return (§9L§[_loc1_] as §%G§).mName;
      }
   }
}
