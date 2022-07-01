package § use§
{
   import §4!x§.§0]§;
   import §4!x§.§5"0§;
   import §4!x§.§7"?§;
   import §4!x§.§8$§;
   
   public class §@Z§
   {
      
      private static var §'P§:Number = 30;
       
      
      public function §@Z§()
      {
         super();
      }
      
      public static function §;7§(param1:Number = 10.0, param2:Number = NaN) : §7"?§
      {
         return new §5"0§(param1,!!isNaN(param2) ? Number(§'P§) : Number(param2));
      }
      
      public static function §^N§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §7"?§
      {
         return new §8$§(param1,param2,!!isNaN(param3) ? Number(§'P§) : Number(param3));
      }
      
      public static function set §2!w§(param1:Number) : void
      {
         §'P§ = param1;
      }
      
      public static function get §2!w§() : Number
      {
         return §'P§;
      }
      
      public static function §'H§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §7"?§
      {
         return new §0]§(param2,param1,!!isNaN(param3) ? Number(§'P§) : Number(param3));
      }
   }
}
