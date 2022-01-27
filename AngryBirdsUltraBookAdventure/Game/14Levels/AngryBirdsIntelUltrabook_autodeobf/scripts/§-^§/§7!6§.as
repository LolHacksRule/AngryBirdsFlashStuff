package §-^§
{
   import flash.net.URLRequest;
   
   public class §7!6§
   {
      
      private static var §'!D§:String;
       
      
      public function §7!6§()
      {
         super();
      }
      
      public static function §7V§(param1:String) : URLRequest
      {
         var _loc2_:String = null;
         if(!§'!D§)
         {
            §'!D§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc2_ = §'!D§ + "-" + new Date().time.toString();
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
