package §+#B§
{
   public class §##8§
   {
      
      private static var §;#i§:Object = {
         "EUR":"€",
         "USD":"$",
         "GBP":"£",
         "BRL":"R$",
         "JPY":"¥"
      };
       
      
      public function §##8§()
      {
         super();
      }
      
      public static function §=#^§(param1:String) : String
      {
         var _loc2_:String = §;#i§[param1] || param1;
         return _loc2_ == null ? "" : _loc2_;
      }
   }
}
