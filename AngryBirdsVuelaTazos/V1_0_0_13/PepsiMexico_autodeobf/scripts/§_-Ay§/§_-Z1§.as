package §_-Ay§
{
   public class §_-Z1§
   {
      
      public static const §_-F6§:Boolean = false;
      
      private static var §_-gF§:Array;
       
      
      public function §_-Z1§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-gF§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §_-gF§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§_-F6§ && §_-gF§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §_-gF§[param1];
      }
   }
}
