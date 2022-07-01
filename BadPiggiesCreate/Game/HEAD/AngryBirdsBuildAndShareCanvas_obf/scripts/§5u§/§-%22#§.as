package §5u§
{
   import §<i§.§-"?§;
   
   public class §-"#§
   {
      
      private static var § "1§:§-"?§ = null;
      
      private static var §%"<§:XML;
       
      
      public function §-"#§()
      {
         super();
      }
      
      public static function §-!Y§(param1:§-"?§) : void
      {
         § "1§ = param1;
      }
      
      public static function get §3"=§() : §-"?§
      {
         return § "1§;
      }
      
      public static function set §3"=§(param1:§-"?§) : void
      {
         § "1§ = param1;
      }
      
      public static function get §!#§() : String
      {
         return § "1§ != null && § "1§.§-C§ != null ? § "1§.§-C§.§%!d§ : "";
      }
      
      public static function §<!4§(param1:XML) : void
      {
         §0o§ = param1;
      }
      
      public static function §%=§() : §-"?§
      {
         var _loc1_:String = null;
         if(§0o§["level"])
         {
            _loc1_ = §0o§["level"].toString();
            return §-"?§.§ !N§(§0o§.toString());
         }
         return §-"?§.§ !N§(§0o§["level"].toString());
      }
      
      public static function get §0o§() : XML
      {
         return §%"<§;
      }
      
      public static function set §0o§(param1:XML) : void
      {
         §%"<§ = param1;
      }
   }
}
