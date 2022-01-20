package §!_§
{
   public class §7!m§
   {
      
      private static var § !_§:Array;
       
      
      public function §7!m§()
      {
         super();
      }
      
      public static function get § !Y§() : Array
      {
         return § !_§;
      }
      
      public static function §'!`§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         § !_§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §,P§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §,P§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         § !_§[§ !_§.length] = new §<C§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §;]§(param1:String) : §<C§
      {
         var _loc2_:int = 0;
         while(_loc2_ < § !_§.length)
         {
            if((§ !_§[_loc2_] as §<C§).mName.toLowerCase() == param1.toLowerCase())
            {
               return § !_§[_loc2_] as §<C§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §!N§() : String
      {
         var _loc1_:int = Math.random() * § !_§.length;
         return (§ !_§[_loc1_] as §<C§).mName;
      }
   }
}
