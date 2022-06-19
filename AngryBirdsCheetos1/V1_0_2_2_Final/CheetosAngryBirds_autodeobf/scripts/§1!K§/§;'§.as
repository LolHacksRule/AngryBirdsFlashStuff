package §1!K§
{
   public class §;'§
   {
      
      public static const §[f§:Boolean = false;
      
      private static var §,!L§:Array;
       
      
      public function §;'§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §,!L§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §,!L§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§[f§ && §,!L§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §,!L§[param1];
      }
   }
}
