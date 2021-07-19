package §2<§
{
   import flash.net.URLRequest;
   
   public class §9!7§
   {
      
      private static var § R§:String;
       
      
      public function §9!7§()
      {
         super();
      }
      
      public static function §,!l§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§ R§)
         {
            § R§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = § R§ + "-" + new Date().time.toString();
            if(param1.indexOf("?") < 0)
            {
               param1 = param1 + "?hash=" + _loc2_;
            }
            else
            {
               param1 = param1 + "&hash=" + _loc2_;
            }
         }
         return new URLRequest(param1);
      }
   }
}
