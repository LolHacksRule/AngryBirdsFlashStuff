package §3!8§
{
   import § N§.§]!A§;
   
   public class §[X§
   {
      
      public static const §`!K§:String = "en";
      
      public static const §'!6§:String = "tr";
      
      public static const §5>§:String = "ru";
      
      private static const §&!I§:String = §5>§;
      
      private static var §3!I§:Class = §+s§;
      
      private static var §=!W§:XML = §]!A§.§#?§(§3!I§);
       
      
      public function §[X§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §=!W§.text.(@name == id && @lang == §&!I§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
