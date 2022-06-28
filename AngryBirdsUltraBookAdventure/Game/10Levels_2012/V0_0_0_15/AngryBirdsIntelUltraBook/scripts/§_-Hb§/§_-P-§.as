package §_-Hb§
{
   import flash.net.URLRequest;
   
   public class §_-P-§
   {
      
      private static var §_-Kq§:String;
       
      
      public function §_-P-§()
      {
         super();
      }
      
      public static function §_-0Ak§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§_-Kq§)
         {
            §_-Kq§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §_-Kq§ + "-" + new Date().time.toString();
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
