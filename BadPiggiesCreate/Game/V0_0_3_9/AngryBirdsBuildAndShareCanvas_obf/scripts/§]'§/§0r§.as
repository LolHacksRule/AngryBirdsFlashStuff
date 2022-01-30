package §]'§
{
   import §6!&§.§",§;
   
   public class §0r§
   {
      
      private static var §>!t§:§",§ = null;
      
      private static var § "1§:XML;
      
      private static var §0!D§:int = 0;
      
      private static var §8J§:String = null;
       
      
      public function §0r§()
      {
         super();
      }
      
      public static function §!S§(param1:§",§) : void
      {
         §>!t§ = param1;
      }
      
      public static function get §,!R§() : §",§
      {
         return §>!t§;
      }
      
      public static function get §'k§() : String
      {
         return §>!t§ != null && §>!t§.§6j§ != null ? §>!t§.§6j§.§73§ : "";
      }
      
      public static function get §;!4§() : String
      {
         return §>!t§.§6j§.authorId;
      }
      
      public static function §super§() : void
      {
         ++§0!D§;
      }
      
      public static function §!W§(param1:XML) : void
      {
         §1n§ = param1;
      }
      
      public static function §;"1§() : §",§
      {
         return §",§.§4!S§(§1n§["level"].toString());
      }
      
      public static function set §,+§(param1:String) : void
      {
         §8J§ = param1;
      }
      
      public static function get §,+§() : String
      {
         if(§8J§ == null)
         {
            return "levelOfDay";
         }
         return §8J§;
      }
      
      public static function get §1n§() : XML
      {
         return § "1§;
      }
      
      public static function set §1n§(param1:XML) : void
      {
         § "1§ = param1;
      }
   }
}
