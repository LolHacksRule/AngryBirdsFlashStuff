package §9@§
{
   public class §!!R§
   {
      
      private static var §%!k§:Object = {
         "EUR":"€",
         "USD":"$",
         "GBP":"£",
         "BRL":"R$",
         "JPY":"¥"
      };
       
      
      public function §!!R§()
      {
         super();
      }
      
      public static function §>"%§(param1:String) : String
      {
         var _loc2_:String = §%!k§[param1] || param1;
         return _loc2_ == null ? "" : _loc2_;
      }
   }
}
