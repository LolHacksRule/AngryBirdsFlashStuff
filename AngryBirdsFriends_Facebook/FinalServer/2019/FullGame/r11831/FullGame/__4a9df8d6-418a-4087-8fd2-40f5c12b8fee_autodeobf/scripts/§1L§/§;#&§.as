package §1L§
{
   import flash.net.URLRequest;
   
   public class §;#&§
   {
      
      private static var §8#W§:String;
       
      
      public function §;#&§()
      {
         super();
      }
      
      public static function § #G§(param1:String) : URLRequest
      {
         var _loc3_:String = null;
         if(!§8#W§)
         {
            §8#W§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc3_ = §8#W§ + "-" + new Date().time.toString();
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
