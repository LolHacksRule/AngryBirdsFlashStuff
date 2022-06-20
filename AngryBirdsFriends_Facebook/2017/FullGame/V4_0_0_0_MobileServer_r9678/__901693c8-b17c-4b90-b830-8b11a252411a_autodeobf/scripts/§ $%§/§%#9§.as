package § $%§
{
   import flash.net.URLRequest;
   
   public class §%#9§
   {
      
      private static var §&6§:String;
       
      
      public function §%#9§()
      {
         super();
      }
      
      public static function §`#<§(param1:String) : URLRequest
      {
         var _loc3_:String = null;
         if(!§&6§)
         {
            §&6§ = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(param1 != null)
         {
            _loc3_ = §&6§ + "-" + new Date().time.toString();
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
