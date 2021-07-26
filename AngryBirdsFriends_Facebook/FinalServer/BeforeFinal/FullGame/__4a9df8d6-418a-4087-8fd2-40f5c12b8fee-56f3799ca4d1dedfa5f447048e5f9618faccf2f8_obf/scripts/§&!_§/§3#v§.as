package §&!_§
{
   public class §3#v§
   {
      
      private static var §>!B§:Object = {
         "EUR":"€",
         "USD":"$",
         "GBP":"£",
         "BRL":"R$",
         "JPY":"¥"
      };
       
      
      public function §3#v§()
      {
         super();
      }
      
      public static function §4"f§(param1:String) : String
      {
         var _loc2_:String = §>!B§[param1] || param1;
         return _loc2_ == null ? "" : _loc2_;
      }
   }
}
