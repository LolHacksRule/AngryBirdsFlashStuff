package §1!+§
{
   public class §1![§
   {
      
      private static var §,=§:Array;
       
      
      public function §1![§()
      {
         super();
      }
      
      public static function get §,!-§() : Array
      {
         return §,=§;
      }
      
      public static function §3A§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §,=§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §2e§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §2e§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §,=§[§,=§.length] = new §`!N§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §4r§(param1:String) : §`!N§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §,=§.length)
         {
            if((§,=§[_loc2_] as §`!N§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §,=§[_loc2_] as §`!N§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §#!B§() : String
      {
         var _loc1_:int = Math.random() * §,=§.length;
         return (§,=§[_loc1_] as §`!N§).mName;
      }
   }
}
