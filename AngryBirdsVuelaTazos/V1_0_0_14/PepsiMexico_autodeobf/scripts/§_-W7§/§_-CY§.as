package §_-W7§
{
   public class §_-CY§
   {
      
      public static const §_-Yw§:Boolean = false;
      
      private static var §_-QK§:Array;
       
      
      public function §_-CY§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-QK§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §_-QK§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§_-Yw§ && §_-QK§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §_-QK§[param1];
      }
   }
}
