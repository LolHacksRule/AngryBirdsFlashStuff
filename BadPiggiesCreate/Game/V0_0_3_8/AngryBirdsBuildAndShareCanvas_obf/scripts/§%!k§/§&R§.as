package §%!k§
{
   import flash.net.URLRequest;
   
   public class §&R§
   {
      
      private static var §9!o§:String;
       
      
      public function §&R§()
      {
         super();
      }
      
      public static function §]"!§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§9!o§)
         {
            §9!o§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §9!o§ + "-" + new Date().time.toString();
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
