package §_-Y7§
{
   import §_-r6§.§_-YF§;
   
   public class §_-Y-§
   {
      
      public static const §_-Rr§:String = "en";
      
      public static const §_-sF§:String = "tr";
      
      public static const §_-Zk§:String = "ru";
      
      private static const §_-Xc§:String = §_-sF§;
      
      private static var §_-QI§:Class = §_-Lb§;
      
      private static var §_-v3§:XML = §_-YF§.§_-0-I§(§_-QI§);
       
      
      public function §_-Y-§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §_-v3§.text.(@name == id && @lang == §_-Xc§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
