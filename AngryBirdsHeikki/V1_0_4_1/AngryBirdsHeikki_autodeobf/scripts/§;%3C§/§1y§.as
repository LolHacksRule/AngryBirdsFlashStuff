package §;<§
{
   import §%!$§.§2!I§;
   
   public class §1y§
   {
      
      public static const § &§:String = "en";
      
      public static const §<!2§:String = "zh";
      
      private static const §+k§:String = § &§;
      
      private static var §"!4§:Class = §-!$§;
      
      private static var §-V§:XML = §2!I§.§;n§(§"!4§);
       
      
      public function §1y§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §-V§.text.(@name == id && @lang == §+k§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
