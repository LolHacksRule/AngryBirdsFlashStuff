package §+!v§
{
   import §7M§.§7!#§;
   
   public class §`!t§
   {
      
      private static var §^!m§:§7!#§ = null;
      
      private static var §<%§:XML;
      
      private static var §;n§:int = 0;
      
      private static var §>!t§:String = null;
       
      
      public function §`!t§()
      {
         super();
      }
      
      public static function §'l§(param1:§7!#§) : void
      {
         §^!m§ = param1;
      }
      
      public static function get §@o§() : §7!#§
      {
         return §^!m§;
      }
      
      public static function get §>t§() : String
      {
         return §^!m§ != null && §^!m§.§4Y§ != null ? §^!m§.§4Y§.§1d§ : "";
      }
      
      public static function get §5!%§() : String
      {
         return §^!m§.§4Y§.authorId;
      }
      
      public static function §%y§() : void
      {
         ++§;n§;
      }
      
      public static function §#V§(param1:XML) : void
      {
         §6!y§ = param1;
      }
      
      public static function §;A§() : §7!#§
      {
         return §7!#§.§>"&§(§6!y§["level"].toString());
      }
      
      public static function set §<v§(param1:String) : void
      {
         §>!t§ = param1;
      }
      
      public static function get §<v§() : String
      {
         if(§>!t§ == null)
         {
            return "levelOfDay";
         }
         return §>!t§;
      }
      
      public static function get §6!y§() : XML
      {
         return §<%§;
      }
      
      public static function set §6!y§(param1:XML) : void
      {
         §<%§ = param1;
      }
   }
}
