package §#h§
{
   import §7!P§.§`!§;
   
   public class §^!+§
   {
      
      public static const §try§:String = "en";
      
      public static const §0I§:String = "tr";
      
      public static const §#!D§:String = "ru";
      
      private static const §3!E§:String = §#!D§;
      
      private static var §?!B§:Class = §2!8§;
      
      private static var §6>§:XML = §`!§.§1!a§(§?!B§);
       
      
      public function §^!+§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §6>§.text.(@name == id && @lang == §3!E§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
