package §9"%§
{
   import flash.net.URLRequest;
   
   public class §4!J§
   {
      
      private static var §5?§:String;
       
      
      public function §4!J§()
      {
         super();
      }
      
      public static function §3j§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§5?§)
         {
            §5?§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §5?§ + "-" + new Date().time.toString();
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
