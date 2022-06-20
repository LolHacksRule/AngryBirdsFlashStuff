package §7"1§
{
   import flash.net.URLRequest;
   
   public class §!"`§
   {
      
      private static var §["_§:String;
       
      
      public function §!"`§()
      {
         super();
      }
      
      public static function §@!A§(param1:String) : URLRequest
      {
         var _loc3_:String = null;
         if(!§["_§)
         {
            §["_§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc3_ = §["_§ + "-" + new Date().time.toString();
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
