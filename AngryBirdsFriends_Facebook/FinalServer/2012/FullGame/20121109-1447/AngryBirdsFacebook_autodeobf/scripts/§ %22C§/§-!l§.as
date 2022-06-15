package § "C§
{
   import flash.net.URLRequest;
   
   public class §-!l§
   {
      
      private static var §%!w§:String;
       
      
      public function §-!l§()
      {
         super();
      }
      
      public static function §%""§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§%!w§)
         {
            §%!w§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §%!w§ + "-" + new Date().time.toString();
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
