package §=@§
{
   import §'D§.§ I§;
   
   public class §4k§
   {
      
      public static const §5L§:String = "en";
      
      public static const §5!,§:String = "tr";
      
      public static const §7!G§:String = "ru";
      
      private static const §,!7§:String = §7!G§;
      
      private static var § !^§:Class = §6!Z§;
      
      private static var §6u§:XML = § I§.§^!V§(§ !^§);
       
      
      public function §4k§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §6u§.text.(@name == id && @lang == §,!7§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
