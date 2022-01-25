package §!w§
{
   public class §1c§
   {
      
      private static var §!#§:Array;
       
      
      public function §1c§()
      {
         super();
      }
      
      public static function get §!F§() : Array
      {
         return §!#§;
      }
      
      public static function §,$§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §!#§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §'!Q§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §'!Q§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §!#§[§!#§.length] = new §1"§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §0E§(param1:String) : §1"§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §!#§.length)
         {
            if((§!#§[_loc2_] as §1"§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §!#§[_loc2_] as §1"§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §+u§() : String
      {
         var _loc1_:int = Math.random() * §!#§.length;
         return (§!#§[_loc1_] as §1"§).mName;
      }
   }
}
