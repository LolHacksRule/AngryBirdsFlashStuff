package §9I§
{
   import §@R§.set;
   
   public class §]0§
   {
      
      public static const §2U§:String = "en";
      
      public static const §`!Y§:String = "zh";
      
      private static const §&!b§:String = §2U§;
      
      private static var §5z§:Class = §+!5§;
      
      private static var §0!F§:XML = set.§=!^§(§5z§);
       
      
      public function §]0§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §0!F§.text.(@name == id && @lang == §&!b§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
