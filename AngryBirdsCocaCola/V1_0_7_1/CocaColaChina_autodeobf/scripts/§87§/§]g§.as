package §87§
{
   import §?@§.§^!M§;
   
   public class §]g§
   {
      
      public static const §?!X§:String = "en";
      
      public static const §+!;§:String = "zh";
      
      private static const §4!W§:String = §+!;§;
      
      private static var §4!9§:Class = §@![§;
      
      private static var §]!b§:XML = §^!M§.§2!^§(§4!9§);
       
      
      public function §]g§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §]!b§.text.(@name == id && @lang == §4!W§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
