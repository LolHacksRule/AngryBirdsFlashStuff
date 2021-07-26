package §4S§
{
   import flash.net.URLRequest;
   
   public class §?#l§
   {
      
      private static var §]"`§:String;
       
      
      public function §?#l§()
      {
         super();
      }
      
      public static function §2#=§(param1:String) : URLRequest
      {
         var _loc3_:String = null;
         if(!§]"`§)
         {
            §]"`§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc3_ = §]"`§ + "-" + new Date().time.toString();
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
