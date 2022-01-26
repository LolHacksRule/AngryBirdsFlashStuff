package §;!<§
{
   import §%t§.§7G§;
   
   public class §6C§
   {
      
      public static const §?!3§:String = "en";
      
      public static const §2>§:String = "tr";
      
      public static const §^Q§:String = "ru";
      
      private static const §<1§:String = §^Q§;
      
      private static var §7!L§:Class = §7C§;
      
      private static var §2!9§:XML = §7G§.§-^§(§7!L§);
       
      
      public function §6C§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §2!9§.text.(@name == id && @lang == §<1§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
