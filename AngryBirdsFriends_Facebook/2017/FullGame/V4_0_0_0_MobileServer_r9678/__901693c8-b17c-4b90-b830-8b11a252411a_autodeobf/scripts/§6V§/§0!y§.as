package §6V§
{
   public class §0!y§
   {
      
      private static var §?#]§:Object = {
         "EUR":"€",
         "USD":"$",
         "GBP":"£",
         "BRL":"R$",
         "JPY":"¥"
      };
       
      
      public function §0!y§()
      {
         super();
      }
      
      public static function §%$%§(param1:String) : String
      {
         var _loc2_:String = §?#]§[param1] || param1;
         return _loc2_ == null ? "" : _loc2_;
      }
   }
}
