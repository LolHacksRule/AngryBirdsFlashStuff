package §[h§
{
   import §>^§.§7]§;
   
   public class §4I§
   {
      
      public static const §43§:String = "en";
      
      public static const §%N§:String = "tr";
      
      public static const §+s§:String = "ru";
      
      private static const §3U§:String = §+s§;
      
      private static var §]!R§:Class = §8r§;
      
      private static var xml:XML = §7]§.§#!I§(§]!R§);
       
      
      public function §4I§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = xml.text.(@name == id && @lang == §3U§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
