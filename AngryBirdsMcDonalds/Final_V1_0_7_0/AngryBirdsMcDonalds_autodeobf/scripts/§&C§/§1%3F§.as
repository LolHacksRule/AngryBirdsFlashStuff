package §&C§
{
   public class §1?§
   {
      
      private static var §<!j§:Array;
       
      
      public function §1?§()
      {
         super();
      }
      
      public static function get § !a§() : Array
      {
         return §<!j§;
      }
      
      public static function §;K§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §<!j§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §%!K§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §%!K§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §<!j§[§<!j§.length] = new §;D§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §"i§(param1:String) : §;D§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §<!j§.length)
         {
            if((§<!j§[_loc2_] as §;D§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §<!j§[_loc2_] as §;D§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §[A§() : String
      {
         var _loc1_:int = Math.random() * §<!j§.length;
         return (§<!j§[_loc1_] as §;D§).mName;
      }
   }
}
