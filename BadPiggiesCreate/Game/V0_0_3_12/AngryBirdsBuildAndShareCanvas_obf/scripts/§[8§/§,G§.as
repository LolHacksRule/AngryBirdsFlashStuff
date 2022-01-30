package §[8§
{
   import flash.net.URLRequest;
   
   public class §,G§
   {
      
      private static var §5!D§:String;
       
      
      public function §,G§()
      {
         super();
      }
      
      public static function §7"4§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§5!D§)
         {
            §5!D§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §5!D§ + "-" + new Date().time.toString();
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
