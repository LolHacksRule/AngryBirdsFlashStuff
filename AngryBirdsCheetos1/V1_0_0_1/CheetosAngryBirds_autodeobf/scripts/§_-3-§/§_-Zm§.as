package §_-3-§
{
   public class §_-Zm§
   {
      
      public static const §_-Bi§:Boolean = false;
      
      private static var §_-fE§:Array;
       
      
      public function §_-Zm§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-fE§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §_-fE§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§_-Bi§ && §_-fE§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §_-fE§[param1];
      }
   }
}
