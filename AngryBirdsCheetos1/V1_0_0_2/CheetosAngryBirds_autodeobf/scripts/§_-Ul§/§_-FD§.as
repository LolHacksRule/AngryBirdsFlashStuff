package §_-Ul§
{
   import §_-aA§.§_-i7§;
   
   public class §_-FD§
   {
      
      public static const §_-Tm§:String = "en";
      
      public static const §_-sY§:String = "tr";
      
      public static const §_-8q§:String = "ru";
      
      private static const §_-NH§:String = §_-sY§;
      
      private static var §_-6V§:Class = §_-v4§;
      
      private static var §_-go§:XML = §_-i7§.§_-Yj§(§_-6V§);
       
      
      public function §_-FD§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §_-go§.text.(@name == id && @lang == §_-NH§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
