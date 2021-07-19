package §5!G§
{
   public class §>X§
   {
      
      private static var §6!+§:Array;
       
      
      public function §>X§()
      {
         super();
      }
      
      public static function get §&Z§() : Array
      {
         return §6!+§;
      }
      
      public static function §=M§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §6!+§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §^[§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §^[§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §6!+§[§6!+§.length] = new §2! §(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §2H§(param1:String) : §2! §
      {
         var _loc2_:int = 0;
         while(_loc2_ < §6!+§.length)
         {
            if((§6!+§[_loc2_] as §2! §).mName.toLowerCase() == param1.toLowerCase())
            {
               return §6!+§[_loc2_] as §2! §;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §%@§() : String
      {
         var _loc1_:int = Math.random() * §6!+§.length;
         return (§6!+§[_loc1_] as §2! §).mName;
      }
   }
}
