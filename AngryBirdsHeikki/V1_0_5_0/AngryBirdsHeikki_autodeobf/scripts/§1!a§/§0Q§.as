package §1!a§
{
   import §1!K§.§=t§;
   
   public class §0Q§
   {
      
      public static const §3P§:String = "en";
      
      public static const §&E§:String = "zh";
      
      private static const § !O§:String = §3P§;
      
      private static var §]!§:Class = §6!#§;
      
      private static var §2Z§:XML = §=t§.§1X§(§]!§);
       
      
      public function §0Q§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §2Z§.text.(@name == id && @lang == § !O§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
