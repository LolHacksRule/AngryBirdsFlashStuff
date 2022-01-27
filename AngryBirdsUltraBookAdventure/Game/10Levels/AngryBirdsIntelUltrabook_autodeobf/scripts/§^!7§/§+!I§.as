package §^!7§
{
   import flash.net.URLRequest;
   
   public class §+!I§
   {
      
      private static var §3!g§:String;
       
      
      public function §+!I§()
      {
         super();
      }
      
      public static function §[O§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§3!g§)
         {
            §3!g§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §3!g§ + "-" + new Date().time.toString();
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
