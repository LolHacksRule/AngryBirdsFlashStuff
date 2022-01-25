package §+n§
{
   import §<!!§.§=§;
   
   public class §<D§
   {
      
      public static const §-9§:String = "en";
      
      public static const §'!'§:String = "zh";
      
      private static const §6!U§:String = §'!'§;
      
      private static var §%Y§:Class = §8k§;
      
      private static var §;!M§:XML = §=§.§!B§(§%Y§);
       
      
      public function §<D§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §;!M§.text.(@name == id && @lang == §6!U§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
