package §[!-§
{
   import flash.net.URLRequest;
   
   public class §?x§
   {
      
      private static var §0"J§:String;
       
      
      public function §?x§()
      {
         super();
      }
      
      public static function §>t§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§0"J§)
         {
            §0"J§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §0"J§ + "-" + new Date().time.toString();
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
