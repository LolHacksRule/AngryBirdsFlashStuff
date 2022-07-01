package §]X§
{
   import §+%§.§5!O§;
   
   public class §<!-§
   {
      
      private static var §?V§:§5!O§ = null;
      
      private static var §'#§:XML;
      
      private static var §3!D§:int = 0;
      
      private static var §;4§:String = null;
       
      
      public function §<!-§()
      {
         super();
      }
      
      public static function § !P§(param1:§5!O§) : void
      {
         §?V§ = param1;
      }
      
      public static function get §3^§() : §5!O§
      {
         return §?V§;
      }
      
      public static function get §4!^§() : String
      {
         return §?V§ != null && §?V§.§;!V§ != null ? §?V§.§;!V§.§"f§ : "";
      }
      
      public static function get §`N§() : String
      {
         return §?V§.§;!V§.authorId;
      }
      
      public static function §<I§() : void
      {
         ++§3!D§;
      }
      
      public static function §5!`§(param1:XML) : void
      {
         §@-§ = param1;
      }
      
      public static function §?Q§() : §5!O§
      {
         return §5!O§.§+!R§(§@-§["level"].toString());
      }
      
      public static function set §!C§(param1:String) : void
      {
         §;4§ = param1;
      }
      
      public static function get §!C§() : String
      {
         if(§;4§ == null)
         {
            return "levelOfDay";
         }
         return §;4§;
      }
      
      public static function get §@-§() : XML
      {
         return §'#§;
      }
      
      public static function set §@-§(param1:XML) : void
      {
         §'#§ = param1;
      }
   }
}
