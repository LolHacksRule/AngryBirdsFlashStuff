package §+!9§
{
   public class §6!N§
   {
      
      private static var §,!&§:Array;
       
      
      public function §6!N§()
      {
         super();
      }
      
      public static function get §8-§() : Array
      {
         return §,!&§;
      }
      
      public static function §+1§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         §,!&§ = new Array();
         for each(_loc2_ in param1.Background)
         {
            §<w§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
         }
      }
      
      public static function §<w§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         §,!&§[§,!&§.length] = new §1!3§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public static function §'!U§(param1:String) : §1!3§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §,!&§.length)
         {
            if((§,!&§[_loc2_] as §1!3§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §,!&§[_loc2_] as §1!3§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §[t§() : String
      {
         var _loc1_:int = Math.random() * §,!&§.length;
         return (§,!&§[_loc1_] as §1!3§).mName;
      }
   }
}
