package §[I§
{
   import §^!&§.§"x§;
   
   public class §8!B§
   {
      
      public static const §2S§:String = "en";
      
      public static const §5;§:String = "tr";
      
      public static const §?@§:String = "ru";
      
      private static const §-!N§:String = §?@§;
      
      private static var §&+§:Class = §>'§;
      
      private static var §+I§:XML = §"x§.§9!>§(§&+§);
       
      
      public function §8!B§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §+I§.text.(@name == id && @lang == §-!N§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
