package §>!1§
{
   import §-!6§.§!P§;
   
   public class §9A§
   {
      
      public static const §6!7§:String = "en";
      
      public static const §?!P§:String = "tr";
      
      public static const §;S§:String = "ru";
      
      private static const §0!Q§:String = §;S§;
      
      private static var §!!@§:Class = §7I§;
      
      private static var §7=§:XML = §!P§.§=!K§(§!!@§);
       
      
      public function §9A§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §7=§.text.(@name == id && @lang == §0!Q§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
