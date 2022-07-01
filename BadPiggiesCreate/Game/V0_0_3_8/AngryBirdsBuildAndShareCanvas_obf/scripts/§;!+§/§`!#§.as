package §;!+§
{
   import §'!O§.§5!v§;
   
   public class §`!#§
   {
      
      private static var §#]§:§5!v§ = null;
      
      private static var §&P§:XML;
      
      private static var §5!&§:int = 0;
      
      private static var §<N§:String = null;
       
      
      public function §`!#§()
      {
         super();
      }
      
      public static function §@!P§(param1:§5!v§) : void
      {
         §#]§ = param1;
      }
      
      public static function get §>! §() : §5!v§
      {
         return §#]§;
      }
      
      public static function get §^!,§() : String
      {
         return §#]§ != null && §#]§.§>!n§ != null ? §#]§.§>!n§.§0!7§ : "";
      }
      
      public static function get §@!I§() : String
      {
         return §#]§.§>!n§.authorId;
      }
      
      public static function §7e§() : void
      {
         ++§5!&§;
      }
      
      public static function §];§(param1:XML) : void
      {
         §@"4§ = param1;
      }
      
      public static function §!Z§() : §5!v§
      {
         return §5!v§.§?D§(§@"4§["level"].toString());
      }
      
      public static function set §="#§(param1:String) : void
      {
         §<N§ = param1;
      }
      
      public static function get §="#§() : String
      {
         if(§<N§ == null)
         {
            return "levelOfDay";
         }
         return §<N§;
      }
      
      public static function get §@"4§() : XML
      {
         return §&P§;
      }
      
      public static function set §@"4§(param1:XML) : void
      {
         §&P§ = param1;
      }
   }
}
