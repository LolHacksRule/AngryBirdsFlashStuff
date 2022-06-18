package §@-§
{
   public class §-N§
   {
      
      private static var §5!J§:Array;
       
      
      public function §-N§()
      {
         super();
      }
      
      public static function get §,G§() : Array
      {
         return §5!J§;
      }
      
      public static function §+!R§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §5!J§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §-+§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §-+§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §5!J§[§5!J§.length] = new §3!6§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §'E§(param1:String) : §3!6§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §5!J§.length)
         {
            if((§5!J§[_loc2_] as §3!6§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §5!J§[_loc2_] as §3!6§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §=!@§() : String
      {
         var _loc1_:int = Math.random() * §5!J§.length;
         return (§5!J§[_loc1_] as §3!6§).mName;
      }
   }
}
