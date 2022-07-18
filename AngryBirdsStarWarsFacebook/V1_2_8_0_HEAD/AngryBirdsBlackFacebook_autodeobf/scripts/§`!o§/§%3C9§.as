package §`!o§
{
   import flash.net.URLRequest;
   
   public class §<9§
   {
      
      private static var §8^§:String;
       
      
      public function §<9§()
      {
         super();
      }
      
      public static function §""I§(param1:String) : URLRequest
      {
         var _loc3_:String = null;
         if(!§8^§)
         {
            §8^§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc3_ = §8^§ + "-" + new Date().time.toString();
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
