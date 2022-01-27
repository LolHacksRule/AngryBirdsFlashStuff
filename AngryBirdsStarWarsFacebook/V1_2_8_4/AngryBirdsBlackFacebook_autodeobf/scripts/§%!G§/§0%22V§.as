package §%!G§
{
   import flash.net.URLRequest;
   
   public class §0"V§
   {
      
      private static var §@#+§:String;
       
      
      public function §0"V§()
      {
         super();
      }
      
      public static function §2"r§(param1:String) : URLRequest
      {
         var _loc3_:String = null;
         if(!§@#+§)
         {
            §@#+§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc3_ = §@#+§ + "-" + new Date().time.toString();
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
