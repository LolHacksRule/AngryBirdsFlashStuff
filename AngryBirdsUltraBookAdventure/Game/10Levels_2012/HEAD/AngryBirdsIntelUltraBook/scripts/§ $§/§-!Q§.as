package § $§
{
   import flash.net.URLRequest;
   
   public class §-!Q§
   {
      
      private static var §>l§:String;
       
      
      public function §-!Q§()
      {
         super();
      }
      
      public static function §<!%§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§>l§)
         {
            §>l§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §>l§ + "-" + new Date().time.toString();
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
