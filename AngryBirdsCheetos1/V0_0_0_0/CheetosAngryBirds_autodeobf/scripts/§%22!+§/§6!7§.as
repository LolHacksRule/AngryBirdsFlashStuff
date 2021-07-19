package §"!+§
{
   import §@,§.§8!#§;
   
   public class §6!7§
   {
      
      public static const §5w§:String = "en";
      
      public static const §]!H§:String = "tr";
      
      public static const §^f§:String = "ru";
      
      private static const §'!3§:String = §]!H§;
      
      private static var §>X§:Class = §8!P§;
      
      private static var §!1§:XML = §8!#§.§9C§(§>X§);
       
      
      public function §6!7§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §!1§.text.(@name == id && @lang == §'!3§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
