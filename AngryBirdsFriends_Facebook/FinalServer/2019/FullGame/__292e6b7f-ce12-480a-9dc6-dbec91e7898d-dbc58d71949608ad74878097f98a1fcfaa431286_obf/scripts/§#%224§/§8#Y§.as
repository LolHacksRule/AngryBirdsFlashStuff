package §#"4§
{
   public class §8#Y§
   {
      
      private static var §+!6§:Object = {
         "EUR":"€",
         "USD":"$",
         "GBP":"£",
         "BRL":"R$",
         "JPY":"¥"
      };
       
      
      public function §8#Y§()
      {
         super();
      }
      
      public static function §>!T§(param1:String) : String
      {
         var _loc2_:String = §+!6§[param1] || param1;
         return _loc2_ == null ? "" : _loc2_;
      }
   }
}
