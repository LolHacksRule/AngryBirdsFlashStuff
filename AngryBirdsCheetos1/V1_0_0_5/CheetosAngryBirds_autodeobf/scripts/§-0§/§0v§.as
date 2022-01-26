package §-0§
{
   public class §0v§
   {
      
      public static const §##§:Boolean = false;
      
      private static var §!l§:Array;
       
      
      public function §0v§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §!l§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §!l§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§##§ && §!l§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §!l§[param1];
      }
   }
}
