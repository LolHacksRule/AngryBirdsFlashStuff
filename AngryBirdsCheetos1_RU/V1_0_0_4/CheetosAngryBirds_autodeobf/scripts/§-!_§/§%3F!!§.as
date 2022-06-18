package §-!_§
{
   public class §?!!§
   {
      
      private static var §6B§:Array;
       
      
      public function §?!!§()
      {
         super();
      }
      
      public static function get §8!Z§() : Array
      {
         return §6B§;
      }
      
      public static function §,!X§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §6B§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §3]§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §3]§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §6B§[§6B§.length] = new §+!A§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §2!U§(param1:String) : §+!A§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §6B§.length)
         {
            if((§6B§[_loc2_] as §+!A§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §6B§[_loc2_] as §+!A§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §5!X§() : String
      {
         var _loc1_:int = Math.random() * §6B§.length;
         return (§6B§[_loc1_] as §+!A§).mName;
      }
   }
}
