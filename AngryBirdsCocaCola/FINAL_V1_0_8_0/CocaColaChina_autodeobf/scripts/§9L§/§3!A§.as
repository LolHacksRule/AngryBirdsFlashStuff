package §9L§
{
   import §^=§.§4S§;
   
   public class §3!A§
   {
      
      public static const § ;§:String = "en";
      
      public static const §#a§:String = "zh";
      
      private static const § !9§:String = §#a§;
      
      private static var §!!N§:Class = §^k§;
      
      private static var §%8§:XML = §4S§.§+X§(§!!N§);
       
      
      public function §3!A§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §%8§.text.(@name == id && @lang == § !9§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
