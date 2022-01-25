package § C§
{
   import §'!G§.§4!§;
   
   public class §?!X§
   {
      
      public static const §+!;§:String = "en";
      
      public static const §4!W§:String = "zh";
      
      private static const §4!9§:String = §4!W§;
      
      private static var §]!b§:Class = §7m§;
      
      private static var §@![§:XML = §4!§.§[!a§(§]!b§);
       
      
      public function §?!X§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §@![§.text.(@name == id && @lang == §4!9§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
