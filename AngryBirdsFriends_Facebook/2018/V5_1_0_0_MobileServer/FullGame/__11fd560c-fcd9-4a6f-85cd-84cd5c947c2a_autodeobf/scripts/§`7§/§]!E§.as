package §`7§
{
   public class §]!E§
   {
      
      private static var §0w§:Object = {
         "EUR":"€",
         "USD":"$",
         "GBP":"£",
         "BRL":"R$",
         "JPY":"¥"
      };
       
      
      public function §]!E§()
      {
         super();
      }
      
      public static function §9"d§(param1:String) : String
      {
         var _loc2_:String = §0w§[param1] || param1;
         return _loc2_ == null ? "" : _loc2_;
      }
   }
}
