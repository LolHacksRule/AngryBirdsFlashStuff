package §#J§
{
   import §=g§.§ `§;
   
   public class §]B§
   {
      
      public static const §=!1§:String = "en";
      
      public static const §<B§:String = "tr";
      
      public static const §%v§:String = "ru";
      
      private static const §24§:String = §%v§;
      
      private static var §-^§:Class = § do§;
      
      private static var §4R§:XML = § `§.§2!3§(§-^§);
       
      
      public function §]B§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §4R§.text.(@name == id && @lang == §24§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
