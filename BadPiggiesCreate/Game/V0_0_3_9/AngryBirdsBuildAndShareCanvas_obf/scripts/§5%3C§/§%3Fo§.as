package §5<§
{
   import flash.net.URLRequest;
   
   public class §?o§
   {
      
      private static var §,!J§:String;
       
      
      public function §?o§()
      {
         super();
      }
      
      public static function §0b§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§,!J§)
         {
            §,!J§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §,!J§ + "-" + new Date().time.toString();
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
