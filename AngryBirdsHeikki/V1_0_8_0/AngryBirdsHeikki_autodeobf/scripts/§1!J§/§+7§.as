package §1!J§
{
   import § !3§.§[a§;
   
   public class §+7§
   {
      
      public static const §7l§:String = "en";
      
      public static const §3!X§:String = "zh";
      
      private static const §3G§:String = §7l§;
      
      private static var §?D§:Class = §?!@§;
      
      private static var §3!V§:XML = §[a§.§`l§(§?D§);
       
      
      public function §+7§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §3!V§.text.(@name == id && @lang == §3G§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
