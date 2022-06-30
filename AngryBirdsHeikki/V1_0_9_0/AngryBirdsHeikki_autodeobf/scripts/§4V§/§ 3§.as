package §4V§
{
   import §0i§.§[K§;
   
   public class § 3§
   {
      
      public static const §"!Q§:String = "en";
      
      public static const §[9§:String = "zh";
      
      private static const §0!#§:String = §"!Q§;
      
      private static var § ;§:Class = §`q§;
      
      private static var §-!0§:XML = §[K§.§0T§(§ ;§);
       
      
      public function § 3§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §-!0§.text.(@name == id && @lang == §0!#§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
