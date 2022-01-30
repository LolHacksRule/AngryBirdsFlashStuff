package §7o§
{
   import §`!?§.§3!F§;
   import §`!?§.§6!K§;
   import §`!?§.§@!9§;
   import §`!?§.§`b§;
   
   public class §=!b§
   {
      
      private static var §'!d§:Number = 30;
       
      
      public function §=!b§()
      {
         super();
      }
      
      public static function §^" §(param1:Number = 10.0, param2:Number = NaN) : §6!K§
      {
         return new §@!9§(param1,!!isNaN(param2) ? Number(§'!d§) : Number(param2));
      }
      
      public static function §^n§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §6!K§
      {
         return new §3!F§(param1,param2,!!isNaN(param3) ? Number(§'!d§) : Number(param3));
      }
      
      public static function set §6!<§(param1:Number) : void
      {
         §'!d§ = param1;
      }
      
      public static function get §6!<§() : Number
      {
         return §'!d§;
      }
      
      public static function §3G§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §6!K§
      {
         return new §`b§(param2,param1,!!isNaN(param3) ? Number(§'!d§) : Number(param3));
      }
   }
}
