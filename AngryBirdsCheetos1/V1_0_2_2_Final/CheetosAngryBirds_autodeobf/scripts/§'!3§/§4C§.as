package §'!3§
{
   import § !G§.§+!7§;
   
   public class §4C§
   {
      
      public static const §?!C§:String = "en";
      
      public static const §1A§:String = "tr";
      
      public static const §+!Q§:String = "ru";
      
      private static const §@!@§:String = §1A§;
      
      private static var §@q§:Class = §16§;
      
      private static var §7j§:XML = §+!7§.§5]§(§@q§);
       
      
      public function §4C§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §7j§.text.(@name == id && @lang == §@!@§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
