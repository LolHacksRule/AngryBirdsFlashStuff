package §_-q1§
{
   import §_-U0§.§_-JP§;
   
   public class §_-Sn§
   {
      
      public static const §_-Nu§:String = "en";
      
      public static const §_-YE§:String = "tr";
      
      public static const §_-5Q§:String = "ru";
      
      private static const §_-GO§:String = §_-YE§;
      
      private static var §_-7J§:Class = §_-a-§;
      
      private static var §_-wr§:XML = §_-JP§.§_-t5§(§_-7J§);
       
      
      public function §_-Sn§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §_-wr§.text.(@name == id && @lang == §_-GO§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
