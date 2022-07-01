package §@!v§
{
   import flash.net.URLRequest;
   
   public class §+!f§
   {
      
      private static var §3"+§:String;
       
      
      public function §+!f§()
      {
         super();
      }
      
      public static function §3!U§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§3"+§)
         {
            §3"+§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §3"+§ + "-" + new Date().time.toString();
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
