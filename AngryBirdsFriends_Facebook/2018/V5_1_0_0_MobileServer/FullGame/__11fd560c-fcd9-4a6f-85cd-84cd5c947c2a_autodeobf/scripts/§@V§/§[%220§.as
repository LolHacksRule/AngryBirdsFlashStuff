package §@V§
{
   import flash.net.URLRequest;
   
   public class §["0§
   {
      
      private static var §9+§:String;
       
      
      public function §["0§()
      {
         super();
      }
      
      public static function § G§(param1:String) : URLRequest
      {
         var _loc3_:String = null;
         if(!§9+§)
         {
            §9+§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc3_ = §9+§ + "-" + new Date().time.toString();
            if(param1.indexOf("?") < 0)
            {
               param1 = param1 + "?hash=" + _loc3_;
            }
            else
            {
               param1 = param1 + "&hash=" + _loc3_;
            }
         }
         return new URLRequest(param1);
      }
   }
}
