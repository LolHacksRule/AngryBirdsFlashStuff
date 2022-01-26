package §0!>§
{
   import §&N§.§0l§;
   
   public class §1!#§
   {
      
      public static const §6!7§:String = "en";
      
      public static const §5w§:String = "tr";
      
      public static const §]!H§:String = "ru";
      
      private static const §^f§:String = §5w§;
      
      private static var §'!3§:Class = §!!V§;
      
      private static var §>X§:XML = §0l§.§8!#§(§'!3§);
       
      
      public function §1!#§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §>X§.text.(@name == id && @lang == §^f§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
