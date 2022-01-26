package §_-0S§
{
   public class §_-hP§
   {
      
      public static const §_-xW§:Boolean = false;
      
      private static var §_-nD§:Array;
       
      
      public function §_-hP§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-nD§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §_-nD§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§_-xW§ && §_-nD§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §_-nD§[param1];
      }
   }
}
