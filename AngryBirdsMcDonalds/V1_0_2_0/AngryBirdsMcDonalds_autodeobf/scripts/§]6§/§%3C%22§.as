package §]6§
{
   public class §<"§
   {
      
      private static var §=!Q§:Array;
       
      
      public function §<"§()
      {
         super();
      }
      
      public static function get §<t§() : Array
      {
         return §=!Q§;
      }
      
      public static function §?5§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §=!Q§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §"!h§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §"!h§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §=!Q§[§=!Q§.length] = new §9s§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §0!&§(param1:String) : §9s§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §=!Q§.length)
         {
            if((§=!Q§[_loc2_] as §9s§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §=!Q§[_loc2_] as §9s§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §]p§() : String
      {
         var _loc1_:int = Math.random() * §=!Q§.length;
         return (§=!Q§[_loc1_] as §9s§).mName;
      }
   }
}
