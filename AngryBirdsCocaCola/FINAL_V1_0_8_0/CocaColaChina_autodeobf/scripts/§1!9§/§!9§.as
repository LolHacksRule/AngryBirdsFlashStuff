package §1!9§
{
   public class §!9§
   {
      
      private static var §2n§:Array;
       
      
      public function §!9§()
      {
         super();
      }
      
      public static function get §>2§() : Array
      {
         return §2n§;
      }
      
      public static function §`!B§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §2n§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §;m§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §;m§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §2n§[§2n§.length] = new §<f§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §-Q§(param1:String) : §<f§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §2n§.length)
         {
            if((§2n§[_loc2_] as §<f§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §2n§[_loc2_] as §<f§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §?o§() : String
      {
         var _loc1_:int = Math.random() * §2n§.length;
         return (§2n§[_loc1_] as §<f§).mName;
      }
   }
}
