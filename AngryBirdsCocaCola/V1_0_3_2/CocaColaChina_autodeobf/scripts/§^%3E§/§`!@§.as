package §^>§
{
   import §6!Q§.§,![§;
   
   public class §`!@§
   {
      
      public static const § ;§:String = "en";
      
      public static const §8_§:String = "zh";
      
      private static const §8x§:String = §8_§;
      
      private static var §@d§:Class = §[a§;
      
      private static var §5v§:XML = §,![§.§6b§(§@d§);
       
      
      public function §`!@§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §5v§.text.(@name == id && @lang == §8x§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
