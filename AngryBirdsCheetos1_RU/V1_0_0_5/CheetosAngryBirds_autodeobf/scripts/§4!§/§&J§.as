package §4!§
{
   import §!4§.§6!@§;
   
   public class §&J§
   {
      
      public static const §@f§:String = "en";
      
      public static const §@A§:String = "tr";
      
      public static const §9g§:String = "ru";
      
      private static const § p§:String = §9g§;
      
      private static var §'!Q§:Class = §^7§;
      
      private static var §]!N§:XML = §6!@§.§![§(§'!Q§);
       
      
      public function §&J§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §]!N§.text.(@name == id && @lang == § p§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
