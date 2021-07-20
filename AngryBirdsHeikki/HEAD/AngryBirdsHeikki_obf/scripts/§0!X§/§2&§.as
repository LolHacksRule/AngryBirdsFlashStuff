package §0!X§
{
   import §&!b§.§2!L§;
   
   public class §2&§
   {
      
      public static const §7[§:String = "en";
      
      public static const §4U§:String = "zh";
      
      private static const §9!2§:String = §7[§;
      
      private static var §8V§:Class = §;!a§;
      
      private static var §-Y§:XML = §2!L§.§-!7§(§8V§);
       
      
      public function §2&§(param1:String)
      {
         super();
      }
      
      public static function getText(param1:String) : String
      {
         var id:String = param1;
         var text:String = "";
         try
         {
            text = §-Y§.text.(@name == id && @lang == §9!2§);
         }
         catch(e:Error)
         {
         }
         return text;
      }
   }
}
