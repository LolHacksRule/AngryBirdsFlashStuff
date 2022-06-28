package §7X§
{
   import flash.net.URLRequest;
   
   public class §+!p§
   {
      
      private static var §0!W§:String;
       
      
      public function §+!p§()
      {
         super();
      }
      
      public static function §`;§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§0!W§)
         {
            §0!W§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §0!W§ + "-" + new Date().time.toString();
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
