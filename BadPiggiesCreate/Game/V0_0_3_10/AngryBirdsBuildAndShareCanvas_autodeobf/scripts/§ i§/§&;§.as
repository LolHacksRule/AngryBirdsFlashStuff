package § i§
{
   import flash.net.URLRequest;
   
   public class §&;§
   {
      
      private static var §;'§:String;
       
      
      public function §&;§()
      {
         super();
      }
      
      public static function §3!x§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§;'§)
         {
            §;'§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §;'§ + "-" + new Date().time.toString();
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
