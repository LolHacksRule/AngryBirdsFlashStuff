package §;!E§
{
   public class §!c§
   {
      
      private static var § O§:Array;
       
      
      public function §!c§()
      {
         super();
      }
      
      public static function get §?C§() : Array
      {
         return § O§;
      }
      
      public static function §4e§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         § O§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §95§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §95§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         § O§[§ O§.length] = new §7D§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §9!§(param1:String) : §7D§
      {
         var _loc2_:int = 0;
         while(_loc2_ < § O§.length)
         {
            if((§ O§[_loc2_] as §7D§).mName.toLowerCase() == param1.toLowerCase())
            {
               return § O§[_loc2_] as §7D§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §1o§() : String
      {
         var _loc1_:int = Math.random() * § O§.length;
         return (§ O§[_loc1_] as §7D§).mName;
      }
   }
}
